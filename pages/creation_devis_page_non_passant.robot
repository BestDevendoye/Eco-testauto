*** Settings ***
Library     SeleniumLibrary   run_on_failure=Capture Page Screenshot  timeout=0:00:20  implicit_wait=0:00:20



*** Variables ***

##### Date d'entretien #####

#champ date
${champ_date_entretien}       id:edit-date-entretien
#date d'aujourd'hui
${date_aujourd'hui_cas_non_passant}     xpath://span[@class='flatpickr-day today' and @aria-current='date']
#date passée




###### Partie entreprise #####
${champ_Email}        xpath:/html/body/div[1]/div/div[2]/div/div[2]/form/div[2]/div/input
#champ siret
${champ_siret}      xpath:/html/body/div[3]/div[2]/main/div/form/div[1]/div/div/fieldset[2]/div[1]/div[1]/div/div/input
#champ raison sociale
${champ_raisonsociale}      xpath:/html/body/div[3]/div[2]/main/div/form/div[1]/div/div/fieldset[2]/div[2]/div/input
#xpath://input[text()='Raison sociale *']//following-sibling::input
#champ code NAF
${champ_codeNaf}        xpath :/html/body/div[3]/div[2]/main/div/form/div[1]/div/div/fieldset[2]/div[3]/div[1]/div/div/input
#champ forme juridique
${champ_formejuridique}     xpath:/html/body/div[3]/div[2]/main/div/form/div[1]/div/div/fieldset[2]/div[3]/div[2]/div/div/input
#champ date création de l'entreprise
${champ_datecreation_entreprise}       xpath:/html/body/div[3]/div[2]/main/div/form/div[1]/div/div/fieldset[2]/div[3]/div[3]/div/div[2]/div[2]/div/div/input
#champ adresse entreprise
${champ_adresse_entreprise}     xpath:/html/body/div[3]/div[2]/main/div/form/div[1]/div/div/fieldset[2]/div[4]/div/input
#champ code postal entreprise
${champ_codepostal_entreprise}      xpath:/html/body/div[3]/div[2]/main/div/form/div[1]/div/div/fieldset[2]/div[6]/div[1]/div/div/input
#champ ville entreprise
${champ_ville_entreprise}       xpath:/html/body/div[3]/div[2]/main/div/form/div[1]/div/div/fieldset[2]/div[6]/div[2]/div/div/input
#champ pays entreprise
${champ_pays_entreprise}        xpath:/html/body/div[3]/div[2]/main/div/form/div[1]/div/div/fieldset[2]/div[6]/div[3]/div/div/input
#champ couverture annuelle
${champ_couverture_annuelle}    xpath:/html/body/div[3]/div[2]/main/div/form/div[1]/div/div/fieldset[2]/div[1]/div[2]/div/div/input
#champ convention collective
${champ_convention_collective}      xpath:/html/body/div[3]/div[2]/main/div/form/div[1]/div/div/fieldset[2]/div[3]/div[3]/div/div[1]/div/div/div/textarea
#champ num iddc
${champ_num_iddc}   xpath:/html/body/div[3]/div[2]/main/div/form/div[1]/div/div/fieldset[2]/div[3]/div[3]/div/div[2]/div[1]/div/input
#bouton ajout d'un numéro SIRET de rattachement
${btn_ajout_num_siret_rattachement}     xpath:/html/body/div[3]/div[2]/main/div/form/div[1]/div/div/fieldset[2]/a
#champ siret rattachement
${champ_siret_rattachement}     xpath:/html/body/div[3]/div[2]/main/div/form/div[1]/div/div/fieldset[2]/div[7]/div[1]/div[2]/div/input

${label_raisonsociale_rattachement}        xpath:/html/body/div[3]/div[2]/main/div/form/div[1]/div/div/fieldset[2]/div[7]/div[1]/div[3]/div/input
#champ raison sociale rattachement
#${champ_raisonsociale_rattachement}


##### Partie signataire #####
#champ civilité
${champ_civilite}     xpath:/html/body/div[3]/div[2]/main/div/form/div[1]/div/div/fieldset[3]/div/div[1]/div/div/select
#champ nom signataire
${champ_nom}    xpath:/html/body/div[3]/div[2]/main/div/form/div[1]/div/div/fieldset[3]/div/div[2]/div/div/input
#champ prenom signataire
${champ_prenom}     xpath:/html/body/div[3]/div[2]/main/div/form/div[1]/div/div/fieldset[3]/div/div[3]/div/div/input
#champ fonction signataire
${champ_fonction}   xpath:/html/body/div[3]/div[2]/main/div/form/div[1]/div/div/fieldset[3]/div/div[4]/div/div/input
#champ num téléphone directe signataire
${champ_numtelephonedirecte}        xpath:/html/body/div[3]/div[2]/main/div/form/div[1]/div/div/fieldset[3]/div/div[5]/div/div/input
#champ num téléphone portable signataire
${champ_numtelephoneportable}       xpath:/html/body/div[3]/div[2]/main/div/form/div[1]/div/div/fieldset[3]/div/div[6]/div/div/input
#champ adresse mail signataire
${champ_adressemail_signataire}    xpath:/html/body/div[3]/div[2]/main/div/form/div[1]/div/div/fieldset[3]/div/div[7]/div/div/input


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
${btn_etape_suivante}       xpath:/html/body/div[3]/div[2]/main/div/form/div[2]/div[2]/button

${champ_message_erreur_pays_entreprise}    xpath:/html/body/div[3]/div[2]/main/div/form/div[1]/div/div/fieldset[2]/div[6]/div[4]/div/div/div/ul/li
${message_erreur_siret_incorrect}    xpath:/html/body/div[3]/div[2]/main/div/form/div[1]/div/div/fieldset[2]/div[1]/div[1]/div/div/div/div/ul/li

*** Keywords ***

#Renseigner la date d'entretien

Cliquer sur le champ date
    Click Element    ${champ_date_entretien}
Cliquer sur la date d'aujourd'hui
    Click Element    ${date_aujourd'hui_cas_non_passant}

Renseigner la date d'entretien non passant
    Cliquer sur le champ date
    #Cliquer sur la date d'aujourd'hui

#Renseigner la partie entreprise

Vérifier que le numéro de SIRET n'est pas correct
    [Arguments]    ${num_siret_incorrect}
    Input Text    ${champ_siret}    ${num_siret_incorrect}
    Should Not Be Equal As Numbers    ${num_siret_incorrect}    71203916300035

Ajouter la couverture annuelle
    [Arguments]     ${couverture_annuelle}
    Input Text    ${champ_couverture_annuelle}      ${couverture_annuelle}


Ajouter la convention collective
    [Arguments]     ${convention_collective}
    Input Text    ${champ_convention_collective}        ${convention_collective}


Ajouter le numéro N° IDCC dans le formulaire
    [Arguments]     ${num_iddc}
    Input Text    ${champ_num_iddc}     ${num_iddc}
    Sleep    5s


Ajouter un numero de SIRET de rattachemment incorrect
    [Arguments]    ${num_siret_rattachement_incorrect}
    Click Element    ${btn_ajout_num_siret_rattachement}
    Input Text    ${champ_siret_rattachement}    ${num_siret_rattachement_incorrect}
    Should Not Be Equal As Numbers    ${num_siret_rattachement_incorrect}    900 848 938 00016

Renseigner une valeur incorrecte du raison social
    [Arguments]    ${raison_sociale_incorrect}
    Click Element    ${champ_raisonsociale}
    Input Text    ${champ_raisonsociale}    ${raison_sociale_incorrect}



#Cliquer sur le titre du champ Raison sociale rattachement
    #Click Element    ${label_raisonsociale_rattachement}


#Vérifier si les autres champs de la partie entreprise sont remplis automatiquement


    #${texte}     Get Text    ${champ_raisonsociale}
    #Log To Console    texte = ${texte}
    #Page Should Contain Element    ${texte_raisonsociale}
#    Input Text      ${champ_raisonsociale}    ${raison_sociale_rattachement}

Renseigner un code Naf incorrect
    [Arguments]    ${code_NAF_actualise_incorrect}
    Clear Element Text    ${champ_codeNaf}
    Click Element    ${champ_codeNaf}
    Input Text    ${champ_codeNaf}    ${code_NAF_actualise_incorrect}

Renseigner le champ forme juridique par une valeur incorrect
    [Arguments]    ${forme_juridique_incorrect}
    Click Element    ${champ_formejuridique}
    Input Text    ${champ_formejuridique}    ${forme_juridique_incorrect}    

Renseigner la date incorrecte de création de l'entreprise
    [Arguments]     ${date_creation_incorrect}
    Textfield Value Should Be    ${champ_datecreation_entreprise}        ${date_creation_incorrect}
    

Renseigner une adresse incorrecte de l'entreprise
    [Arguments]     ${adresse_entreprise_incorrect}
    Input Text    ${champ_adresse_entreprise}         ${adresse_entreprise_incorrect}

Renseigner un code postal incorrect de l'entreprise
    [Arguments]     ${codepostal_entreprise_incorrect}
    Input Text    ${champ_codepostal_entreprise}         ${codepostal_entreprise_incorrect}

Renseigner une ville quelconque de l'entreprise
    [Arguments]     ${ville_entreprise_incorrect}
    Input Text    ${champ_ville_entreprise}        ${ville_entreprise_incorrect}

Renseigner un pays et vérifer le message d'erreur puis remettre France
    [Arguments]    ${pays_entreprise}
    Click Element    ${champ_pays_entreprise}
    Input Text    ${champ_pays_entreprise}    S
    Wait Until Element Contains    ${champ_message_erreur_pays_entreprise}    Pour les entreprises étrangères merci de bien vouloir effectuer une adhésion "papier".
    Clear Element Text    ${champ_pays_entreprise}
    Input Text    ${champ_pays_entreprise}    ${pays_entreprise}

Renseigner le champ raison social de rattachement


#Renseigner la partie signataire
Renseigner la civilité
        [Arguments]     ${civilite}
        Select From List By Value    ${champ_civilite}      ${civilite}

Ajouter le prenom du signataire
    [Arguments]     ${prenom_signataire}
    Input Text    ${champ_prenom}     ${prenom_signataire}

Ajouter le nom du signataire
    [Arguments]     ${nom_signataire}
    Input Text    ${champ_nom}     ${nom_signataire}


Ajouter la fonction signataire
    [Arguments]     ${fonction_signataire}
    Input Text    ${champ_fonction}     ${fonction_signataire}

Vérifier que le numéro téléphone fixe du signatire n'est pas correct
    [Arguments]     ${numtelephonedirecte_signataire_incorrect}
    Input Text    ${champ_numtelephonedirecte}     ${numtelephonedirecte_signataire_incorrect}
    Should Not Be Equal As Numbers    ${numtelephonedirecte_signataire_incorrect}    02 01 01 01 01

Vérifier que le numéro téléphone direct du signataire n'est pas correct
    [Arguments]     ${numtelephoneportable_signataire_incorrect}
    Input Text    ${champ_numtelephoneportable}     ${numtelephoneportable_signataire_incorrect}
    Should Not Be Equal As Numbers    ${numtelephoneportable_signataire_incorrect}    06 01 01 01 01


Vérifier que l'adresse email signataire n'est pas correct
    [Arguments]     ${adressemail_signataire_incorrect}
    Input Text    ${champ_adressemail_signataire}       ${adressemail_signataire_incorrect}
    Should Not Be Equal As Strings    ${adressemail_signataire_incorrect}    zgh7hyjb2o@1secmail.com


#Renseigner la partie Distributeur

#Vérification pré-remplissage champ distributeur
    #[Arguments]     ${valeur_distributeur}
    #Textfield Value Should Be    ${champ_ditributeur}    ${valeur_distributeur}

#Sélection de l'agence de la caisse régionale 
    #[Arguments]     ${agence_caisseregionale}
    #Select From List By Value    ${champ_caisseregionale}      ${agence_caisseregionale}
    

Vérifier que le code conseiller n'est pas correct
    Click Element    ${champ_codeconseiller}
    Clear Element Text    ${champ_codeconseiller}
    Input Text    ${champ_codeconseiller}        QTPM
    

Vérifier que le numéro de téléphone fixe rempli n'est pas correct
    Click Element    ${champ_numtelephonedirecte}
    Clear Element Text    ${champ_numtelephonedirecte}
    Input Text    ${champ_telephonefixe_distributeur}    02 01 01 01

Vérifier que le numéro de téléphone portable du distributeur n'est pas correct
    Click Element    ${champ_numtelephoneportable}
    Clear Element Text    ${champ_numtelephoneportable}
    Input Text       ${champ_telephoneportable_distributeur}     06 01 01 01


   
   #COMMENTER POUR TESTER QUE L'ERREUR VIENT BIEN DU BUTTON ETAPE SUIVANTE. A DÉCOMMENTER ULTÉRIEUREMENT
Cliquer sur le bouton Etape suivante non passant
    Click Element    ${btn_etape_suivante}

    #${titre_page_tarificateur}      Set Variable        xpath:
    #${titre_page_tarificateur}      Set Variable        xpath://div[contains(text(),'Famille Rurales') or contains(text(),'Zenéa') or contains(text(),'Accord National de la Coopération Agricole et des Industries Agroalimentaires') or contains(text(),'CCN52') or contains(text(),'CPCEA') or contains(text(),'Vins & Spiritueux Santé') or contains(text(),'Vins et spiritueux - Prévoyance') or contains(text(),'SDLM - Prévoyance') or contains(text(),'Centres équestres Santé') or contains(text(),'Centres équestres Prévoyance') or contains(text(),'Accord national de la production agricole - Santé') or contains(text(),'Indemnités de Licenciement pour Inaptitude Professionnelle') or contains(text(),'Accord TAM et Cadres du Paysage') or contains(text(),'Accord National de la Coopération Agricole et des Industries') or contains(text(),'SDLM - Santé') or contains(text(),'CCN des entreprises du Paysage Ouvriers et Employés') or contains(text(),"Régime d'adhésion") or contains(text(),"Epargne Retraite") ]
    #Wait Until Page Contains Element    

#Affichage des messages en cas de renseignement des informations incorrectes


#Vérifier la présence d'un message en cas du numéro de Siret non renseigné
    Wait Until Element Contains    ${message_erreur_siret_incorrect}    Numéro de siret invalide
    #Renseigner la date d'entretien
    #Cliquer sur le bouton Etape suivante
    #Alert Should Be Present     Veuillez renseigner ce champ.









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



