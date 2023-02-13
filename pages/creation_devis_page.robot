*** Settings ***
Library     SeleniumLibrary   run_on_failure=Capture Page Screenshot  timeout=0:00:20  implicit_wait=0:00:20

*** Variables ***

##### Date d'entretien #####

#champ date
${champ_date_entretien}       id:edit-date-entretien
#date d'aujourd'hui
${date_aujourd'hui}     xpath://span[@class='flatpickr-day today' and @aria-current='date']



###### Partie entreprise #####
${champ_Email}        //*[@id="username"]
#champ siret
${champ_siret}      xpath://input[@id='edit-siret']
#champ raison sociale
${champ_raisonsociale}      xpath://input[@id='edit-raison-sociale']
#xpath://input[text()='Raison sociale *']//following-sibling::input
#champ code NAF
${champ_codeNaf}        xpath://input[@id='edit-code-naf']
#champ forme juridique
${champ_formejuridique}     xpath://input[@id='edit-forme-juridique']
#champ date création de l'entreprise
${champ_datecreation_entreprise}       xpath://input[@id='edit-date-creation-entreprise']
#champ adresse entreprise
${champ_adresse_entreprise}     xpath://input[@id='edit-adresse']
#champ code postal entreprise
${champ_codepostal_entreprise}      xpath://input[@id='edit-code-postal']
#champ ville entreprise
${champ_ville_entreprise}       xpath://input[@id='edit-ville']
#champ pays entreprise
${champ_pays_entreprise}        xpath://input[@id='edit-pays']
#champ couverture annuelle
${champ_couverture_annuelle}    xpath://input[@id='edit-couverture-actuelle']
#champ convention collective
${champ_convention_collective}      xpath://textarea[@id='edit-convention-collective']
#champ num iddc
${champ_num_iddc}   id:edit-num-idcc
#bouton ajout d'un numéro SIRET de rattachement
${btn_ajout_num_siret_rattachement}     id:add_siret_ratt
#champ siret rattachement
${champ_siret_rattachement}     name:siret-1
#champ raison sociale rattachement
#${champ_raisonsociale_rattachement}


##### Partie signataire #####
#champ civilité
${champ_civilite}     name:civilite
#champ nom signataire
${champ_nom}    id:edit-nom
#champ prenom signataire
${champ_prenom}     id:edit-prenom
#champ fonction signataire
${champ_fonction}   id:edit-fonction
#champ num téléphone directe signataire
${champ_numtelephonedirecte}        id:edit-telephone-ligne-directe
#champ num téléphone portable signataire
${champ_numtelephoneportable}       id:edit-telephone-portable
#champ adresse mail signataire
${champ_adressemail_signataire}    id:edit-email


##### Partie distributeur #####

#champ distributeur
${champ_ditributeur}        id:edit-distributeur
#champ caisse régionale
${champ_caisseregionale}        id:edit-caisse-regionale
#champ code conseiller
${champ_codeconseiller}     id:edit-code-vendeur
#champ téléphone fixe
${champ_telephonefixe_distributeur}      id:edit-telephone-fixe
#champ téléphone portable
${champ_telephoneportable_distributeur}     id:edit-telephone-mobile

##### Boutons #####
${btn_etape_suivante}       xpath://button[contains(text(),'suivante')]

*** Keywords ***

#Renseigner la date d'entretien

Cliquer sur le champ date
    Click Element    ${champ_date_entretien}
Cliquer sur la date d'aujourd'hui
    Click Element    ${date_aujourd'hui}

Renseigner la date d'entretien
    Cliquer sur le champ date
    Cliquer sur la date d'aujourd'hui

#Renseigner la partie entreprise

Renseigner le numéro du SIRET
    [Arguments]     ${num_siret}
    Input Text    ${champ_siret}    ${num_siret}

Renseigner la couverture annuelle
    [Arguments]     ${couverture_annuelle}
    Input Text    ${champ_couverture_annuelle}      ${couverture_annuelle}

Renseigner la convention collective
    [Arguments]     ${convention_collective}
    Input Text    ${champ_convention_collective}        ${convention_collective}

Renseigner le numéro d'iddc
    [Arguments]     ${num_iddc}
    Input Text    ${champ_num_iddc}     ${num_iddc}
    Sleep    5s



Ajouter un numero de SIRET de rattachemment
    [Arguments]     ${num_siret_rattachement}
    Click Element    ${btn_ajout_num_siret_rattachement}
    Input Text      ${champ_siret_rattachement}    ${num_siret_rattachement}


Cliquer sur le titre du champ Raison sociale rattachement
    Click Element    ${label_raisonsociale_rattachement}


#Vérifier si les autres champs de la partie entreprise sont remplis automatiquement

Vérifier que le champ raison sociale est rempli automatiquement
    [Arguments]     ${raison_sociale}
    Input Text     ${champ_raisonsociale}      ${raison_sociale}
#    ${texte_raisonsociale}     Set variable   xpath://*[contains(text(),'${raison_sociale}')]


    #${texte}     Get Text    ${champ_raisonsociale}
    #Log To Console    texte = ${texte}
    #Page Should Contain Element    ${texte_raisonsociale}
#    Input Text      ${champ_raisonsociale}    ${raison_sociale_rattachement}

Vérifier que le champ Code NAF est rempli automatiquement
    [Arguments]     ${code_NAF_actualise}
    Textfield Value Should Be    ${champ_codeNaf}        ${code_NAF_actualise}

Vérifier que le champ Forme juridique est rempli automatiquement
    [Arguments]     ${forme_juridique_actualise}
    Textfield Value Should Be    ${champ_formejuridique}     ${forme_juridique_actualise}

Vérifier que la date de création de l'entreprise est renseignée automatiquement
    [Arguments]     ${date_creation}
    Textfield Value Should Be    ${champ_datecreation_entreprise}        ${date_creation}

Vérifier que l'adresse de l'entreprise est renseignée automatiquement
    [Arguments]     ${adresse_entreprise}
    #${champ_raisonsociale_rattachement}     Set variable   xpath://*[contains(text(),'${adresse_entreprise}')]
    #Page Should Contain Element    ${champ_raisonsociale_rattachement}
    Textfield Value Should Be    ${champ_adresse_entreprise}         ${adresse_entreprise}

Vérifier que le code postal de l'entreprise est renseigné automatiquement
    [Arguments]     ${codepostal_entreprise}
    Textfield Value Should Be    ${champ_codepostal_entreprise}         ${codepostal_entreprise}

Vérifier que la ville de l'entreprise est renseignée automatiquement
    [Arguments]     ${ville_entreprise}
    Textfield Value Should Be    ${champ_ville_entreprise}        ${ville_entreprise}

Vérifier que le pays de l'entreprise est renseigné automatiquement
    [Arguments]     ${pays_entreprise}
    Textfield Value Should Be    ${champ_pays_entreprise}         ${pays_entreprise}

Vérifier que le champ Raison sociale rattachement est rempli automatiquement
    Click Element   ${champ_raisonsociale}
    [Arguments]     ${raison_sociale_rattachement}
    Textfield Value Should Be    ${champ_raisonsociale}    ${raison_sociale_rattachement}

#Renseigner la partie signataire
Selectionner la civilité
    [Arguments]     ${civilite}
    Select From List By Value    ${champ_civilite}      ${civilite}

Renseigner le prénom du signataire
    [Arguments]     ${prenom_signataire}
    Input Text    ${champ_prenom}     ${prenom_signataire}

Renseigner le nom du signataire
    [Arguments]     ${nom_signataire}
    Input Text    ${champ_nom}     ${nom_signataire}

Renseigner la fonction du signataire
    [Arguments]     ${fonction_signataire}
    Input Text    ${champ_fonction}     ${fonction_signataire}

Renseigner le numéro du téléphone directe du signataire
    [Arguments]     ${numtelephonedirecte_signataire}
    Input Text    ${champ_numtelephonedirecte}     ${numtelephonedirecte_signataire}

Renseigner le numéro du téléphone portable du signataire
    [Arguments]     ${numtelephoneportable_signataire}
    Input Text    ${champ_numtelephoneportable}     ${numtelephoneportable_signataire}

Renseigner l'adresse mail du signataire
    [Arguments]     ${adressemail_signataire}
    Input Text    ${champ_adressemail_signataire}       ${adressemail_signataire}


#Renseigner la partie Distributeur

Vérifier que le champ distributeur est pré-rempli
    [Arguments]     ${valeur_distributeur}
    
    Textfield Value Should Be    ${champ_ditributeur}    ${valeur_distributeur}

Sélectionner l'agence de la caisse régionale
    [Arguments]     ${agence_caisseregionale}
    Select From List By Value    ${champ_caisseregionale}      ${agence_caisseregionale}


Renseigner le code conseiller
    [Arguments]     ${code_conseiller}
    Input Text    ${champ_codeconseiller}    ${code_conseiller}

Renseigner le téléphone fixe du distributeur
   [Arguments]     ${telephone_fixe}
   Input Text    ${champ_telephonefixe_distributeur}    ${telephone_fixe}

Renseigner le téléphone portable du distributeur
   [Arguments]     ${telephone_portable}
   Input Text       ${champ_telephoneportable_distributeur}     ${telephone_portable}
   
Cliquer sur le bouton Etape suivante
    Click Element    ${btn_etape_suivante}
    ${titre_page_tarificateur}      Set Variable        xpath://div[contains(text(),'Famille Rurales') or contains(text(),'Zenéa') or contains(text(),'Accord National de la Coopération Agricole et des Industries Agroalimentaires') or contains(text(),'CCN52') or contains(text(),'CPCEA') or contains(text(),'Vins & Spiritueux Santé') or contains(text(),'Vins et spiritueux - Prévoyance') or contains(text(),'SDLM - Prévoyance') or contains(text(),'Centres équestres Santé') or contains(text(),'Centres équestres Prévoyance') or contains(text(),'Accord national de la production agricole - Santé') or contains(text(),'Indemnités de Licenciement pour Inaptitude Professionnelle') or contains(text(),'Accord TAM et Cadres du Paysage') or contains(text(),'Accord National de la Coopération Agricole et des Industries') or contains(text(),'SDLM - Santé') or contains(text(),'CCN des entreprises du Paysage Ouvriers et Employés') or contains(text(),"Régime d'adhésion") or contains(text(),"Epargne Retraite") ]
    Wait Until Page Contains Element    ${titre_page_tarificateur}


#Affichage des messages en cas de renseignement des informations incorrectes

Vérifier la présence d'un message en cas du numéro de Siret non renseigné
    Renseigner la date d'entretien
    Cliquer sur le bouton Etape suivante
    Alert Should Be Present     Veuillez renseigner ce champ.

Verifier le message d'alerte Email
     #Page Should Contain   Veuillez renseigner ce champ.
    ${ele}    Get WebElement    ${champ_Email}
    ${message}=    Execute Javascript    return arguments[0].validationMessage;     ARGUMENTS    ${ele} 
    Log To Console    le message est: ${message}
    Should Be Equal As Strings    ${message}    Veuillez renseigner ce champ.
    ${validity}=    Execute Javascript    return arguments[0].checkValidity();     ARGUMENTS    ${ele} 
    Log To Console    validity est: ${validity}
    Should Be Equal  ${validity}      ${FALSE}
Verifier le message d'alerte Avec Email
     #Page Should Contain   Veuillez renseigner ce champ.
    ${ele}    Get WebElement    ${champ_Email}
    ${message}=    Execute Javascript    return arguments[0].validationMessage;     ARGUMENTS    ${ele} 
    ${validity}=    Execute Javascript    return arguments[0].checkValidity();     ARGUMENTS    ${ele} 
    Log To Console    le message est: ${message}
    Should Be Equal As Strings    ${message}       ${EMPTY} 
    Log To Console    validity est: ${validity}
    Should Be Equal  ${validity}      ${TRUE}



