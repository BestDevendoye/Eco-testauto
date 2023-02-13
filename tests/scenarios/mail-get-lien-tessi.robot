*** Settings ***
Library  String
Library  REST    https://www.1secmail.com

*** Keywords ***
GET lien Tessi
    ${emailLogin} =  Fetch From Left   ${adressemail_signataire}  @
    ${emailDomain}=  Fetch From Right  ${adressemail_signataire}  @

    # Récupération de l'id du premier mail de la boite mail
    GET             /api/v1/?action=getMessages&login=${emailLogin}&domain=${emailDomain}
    #output        response body
    ${emailId}=     Integer  $[0].id
    ${emailIdStr}=  Convert to string  ${emailId}
    ${emailIdStr}=  Get substring   ${emailIdStr}  1  -1   #Supprimer crochets en début et fin de l'id

    # Récupération du message du mail
    GET             /api/v1/?action=readMessage&login=${emailLogin}&domain=${emailDomain}&id=${emailIdStr}
    ${message}=     String  response body body   # l'élément retourné est un tableau
    ${message}=     Set variable  ${message}[0]  # on prend le premier élément du tableau
    #log to console  ${message}

    # Récupération du lien Tessi (de la forme https://qualif-signature.agricaprevoyance.com/newspring/login/auto?bu=SHARE&p=XI0pZeeiEG2mhy7Oq3MkM1Zr30VZbIrYwZZ4UQHJf4XO8Og5Al%2F%2BNTBAOusTDlCa)
    ${lienTessi}=   Get Regexp Matches  ${message}  https:\/\/(.*?)">  #Récupération des liens de la page
    ${lienTessi}=   Set variable  ${lienTessi}[0]    #Le lien Tessi est le premier lien de la page
    #Enlever les 2 derniers caractères du lien (qui ne font pas partie de l'URL)
    ${lienTessi}=   Get substring   ${lienTessi}  0  -2
    ${lienTessi}=   Replace String  ${lienTessi}  &amp;  &  #Remplacer "&amp;" par "&"
    #log to console  ${lienTessi}
    Return From Keyword  ${lienTessi}





