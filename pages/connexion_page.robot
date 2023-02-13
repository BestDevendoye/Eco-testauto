*** Settings ***
Library           SeleniumLibrary   run_on_failure=Capture Page Screenshot  timeout=0:00:20  implicit_wait=0:00:20
Library           OperatingSystem

*** Variables ***
#champ adresse mail
${champ_adressemail}    id:username
${champ_email}    xpath://*[@id="email"]
${champ_email_confirmation}     xpath://*[@id="email_conf"]                   
#champ mot de passe
${champ_motdepasse}     id:password

#bouton Connexion
${btn_connexion}    id:edit-submit

#nom du profil connecté
${nom_profil_connecté}  xpath://div[contains(@class,'connection-block__user')]

#bouton Deconnection
${btn_deconnexion}      xpath://a[contains(text(),'Déconnexion')]

#message d'alerte Email sans @
${msg_sans_@}      Veuillez inclure "@" dans l'adresse e-mail. Il manque un symbole "@" dans "auto.commercialtest.fr".

#message mot de passe incorrecte
${Password_incorrecte}       xpath://*[@id="loginForm"]/div[1]/div/div/p
${msg_password_incorrecte}    Le couple identifiant / mot de passe n'est pas valide !

# mot de passe oublié
${Password_oublié}    xpath://*[@id="edit-forgot-password"]/a
${page_motDePasse_oublié}    xpath://*[@id="resetForm"]
${btn_envoyer}    xpath://*[@value="Envoyer"]
${btn_conx_authenti}    /html/body/div[1]/div/div[2]/div/div[2]/div[2]/a

*** Keywords ***
Entrer l'adresse mail
    [Arguments]     ${nom_utilisateur}
    input text      ${champ_adressemail}      ${nom_utilisateur}
Entrer l'adresse mail confirmation
    [Arguments]     ${nom_utilisateur}
    input text      ${champ_email_confirmation}      ${nom_utilisateur}
Entrer le mot de passe
    [Arguments]     ${motdepasse}
    input text      ${champ_motdepasse}       ${motdepasse}

Cliquer sur le bouton Connexion
    click button        ${btn_connexion}

Cliquer sur le bouton mot de passe oublié
    Click Element     ${Password_oublié}
Entrer l'adresse mail mot de passe oublié
    [Arguments]     ${nom_utilisateur}
    input text      ${champ_email}      ${nom_utilisateur}
Cliquer sur le bouton envoyer
    click button    ${btn_envoyer}

Cliquer sur le bouton conx authentification
    click button    ${btn_conx_authenti}
Avoir le nom d'utilisateur dans la page d'acceuil
    Get Text    ${txt_profil_connecté}

Se deconnecter de Agrica
    Click Element    ${btn_deconnexion}

Se connecter à Agrica Espace Co
    [Arguments]     ${nom_utilisateur}     ${motdepasse}    ${nom_profil_attendu}
    Entrer l'adresse mail      ${nom_utilisateur}
    Entrer le mot de passe      ${motdepasse}
    Cliquer sur le bouton Connexion
    Wait Until Page Contains    ${nom_profil_attendu}
Se connecter à Agrica Espace Co Sans Email
    [Arguments]     ${Navigateur}
    Log To Console    path : ${EXEC_DIR}/pages/connexion_page.robot
    Cliquer sur le bouton Connexion
    #Verifier le message d'alerte
    ${ele}    Get WebElement    ${champ_adressemail}
    ${message}=    Execute Javascript    return arguments[0].validationMessage;     ARGUMENTS    ${ele} 
    Log To Console    le message est: ${message}
    Run Keyword If    "${Navigateur}"=='Google Chrome'      Should Be Equal As Strings    ${message}    Veuillez renseigner ce champ.
    Run Keyword If    "${Navigateur}"=='FireFox'    Should Be Equal As Strings    ${message}    Veuillez compléter ce champ.
    Run Keyword If    "${Navigateur}"=='Edge'    Should Be Equal As Strings    ${message}    Veuillez remplir ce champ.
    #${validity}=    Execute Javascript    return arguments[0].checkValidity();     ARGUMENTS    ${ele} 
    #Log To Console    validity est: ${validity}
    #Should Be Equal  ${validity}      ${FALSE}
Se connecter à Agrica Espace Co Avec Email
    [Arguments]     ${nom_utilisateur}    ${Navigateur}
    Log To Console    path : ${EXEC_DIR}/pages/connexion_page.robot  
    Entrer l'adresse mail      ${nom_utilisateur}
    Cliquer sur le bouton Connexion
    #Verifier le message d'alerte 
    ${ele}    Get WebElement    ${champ_motdepasse}
    ${message}=    Execute Javascript    return arguments[0].validationMessage;     ARGUMENTS    ${ele} 
    Log To Console    le message est: ${message}
    Run Keyword If    "${Navigateur}"=='Google Chrome'  Should Be Equal As Strings    ${message}       Veuillez renseigner ce champ. 
    Run Keyword If    "${Navigateur}"=='FireFox'    Should Be Equal As Strings    ${message}    Veuillez compléter ce champ.
    Run Keyword If    "${Navigateur}"=='Edge'    Should Be Equal As Strings    ${message}    Veuillez remplir ce champ.
Se connecter à Agrica Espace Co Avec Email erroné
     [Arguments]     ${nom_utilisateur}     ${motdepasse}    ${Navigateur}
    Log To Console    path : ${EXEC_DIR}/pages/connexion_page.robot  
    Entrer l'adresse mail      ${nom_utilisateur}
    Entrer le mot de passe      ${motdepasse}
    Cliquer sur le bouton Connexion
    #Verifier le message d'alerte 
    ${ele}    Get WebElement    ${champ_adressemail}
    ${message}=    Execute Javascript    return arguments[0].validationMessage;     ARGUMENTS    ${ele} 
    Log To Console    le message est: ${message} 
    Run Keyword If    "${Navigateur}"=='Google Chrome'    Should Be Equal As Strings    ${message}       ${msg_sans_@}
    Run Keyword If    "${Navigateur}"=='FireFox'    Should Be Equal As Strings    ${message}    Veuillez saisir une adresse électronique valide. 
    Run Keyword If    "${Navigateur}"=='Edge'    Should Be Equal As Strings    ${message}    Insérez un symbole « @ » dans l'adresse e-mail. « auto.commercialtest.fr » ne contient pas de « @ ».  
Se connecter à Agrica Espace Co Avec Password incorrect
    [Arguments]     ${nom_utilisateur}     ${motdepasse}
    Log To Console    path : ${EXEC_DIR}/pages/connexion_page.robot  
    Entrer l'adresse mail      ${nom_utilisateur}
    Entrer le mot de passe      ${motdepasse}
    Cliquer sur le bouton Connexion
    ${msg_erreur}    Get Text    ${Password_incorrecte}
    Log To Console    le message est: ${msg_erreur}
    Should Be Equal As Strings    ${msg_erreur}       ${msg_password_incorrecte}
Mot de passe oublié
    [Arguments]     ${nom_utilisateur}    ${nom_utilisateur_erroné}    ${Navigateur}
    #Log To Console    path : ${EXEC_DIR}/pages/connexion_page.robot  
    Cliquer sur le bouton mot de passe oublié
    Wait Until Page Contains Element    ${page_motDePasse_oublié}
    Cliquer sur le bouton envoyer
    #recuperer le message d'alerte quand le champs email et confirmation email sont vides
    ${ele}    Get WebElement    ${champ_email}
    ${message}=    Execute Javascript    return arguments[0].validationMessage;     ARGUMENTS    ${ele} 
    Log To Console    le message est: ${message}
    Run Keyword If    "${Navigateur}"=='Google Chrome'    Should Be Equal As Strings    ${message}    Veuillez renseigner ce champ.
    Run Keyword If    "${Navigateur}"=='FireFox'    Should Be Equal As Strings    ${message}    Veuillez renseigner ce champ.
    Run Keyword If    "${Navigateur}"=='Edge'    Should Be Equal As Strings    ${message}    Veuillez remplir ce champ.
    Entrer l'adresse mail mot de passe oublié      ${nom_utilisateur}
    Cliquer sur le bouton envoyer
    #recuperer le message d'alerte quand le champs confirmation email est vide
    ${ele}    Get WebElement    ${champ_email_confirmation}
    ${message}=    Execute Javascript    return arguments[0].validationMessage;     ARGUMENTS    ${ele} 
    Log To Console    le message est: ${message}
    Run Keyword If    "${Navigateur}"=='Google Chrome'   Should Be Equal As Strings    ${message}    Veuillez renseigner ce champ.
    Run Keyword If    "${Navigateur}"=='FireFox'    Should Be Equal As Strings    ${message}    Veuillez compléter ce champ.
    Run Keyword If    "${Navigateur}"=='Edge'    Should Be Equal As Strings    ${message}    Veuillez remplir ce champ.
    Entrer l'adresse mail mot de passe oublié      ${nom_utilisateur_erroné}
    Entrer l'adresse mail confirmation    ${nom_utilisateur_erroné}
    Cliquer sur le bouton envoyer
    #recuperer le message d'alerte quand le champs confirmation email et email sont incorrectes
    ${ele}    Get WebElement    ${champ_email}
    ${message}=    Execute Javascript    return arguments[0].validationMessage;     ARGUMENTS    ${ele} 
    Log To Console    le message est: ${message}
    Should Be Equal As Strings    ${message}    Veuillez renseigner une adresse email valide
    #Saisir une adresse email correcte et une autre différente dans le champ de confirmation
    Entrer l'adresse mail mot de passe oublié      ${nom_utilisateur}
    Entrer l'adresse mail confirmation    ${nom_utilisateur_erroné}
    Cliquer sur le bouton envoyer
     #Saisir une adresse une correcte et confirmer cette adresse dans le champ de confirmation
    Entrer l'adresse mail mot de passe oublié      ${nom_utilisateur}
    Entrer l'adresse mail confirmation    ${nom_utilisateur}
    Cliquer sur le bouton envoyer
    #Cliquer sur le bouton conx authentification