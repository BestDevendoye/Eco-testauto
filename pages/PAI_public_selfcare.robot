*** Settings ***
Library     SeleniumLibrary   run_on_failure=Capture Page Screenshot  timeout=0:00:20  implicit_wait=0:00:20

*** Variables ***

${champ_date}    xpath://*[@id="edit-date-de-la-demande"]
${champ_objet_demande}    xpath://*[@id="niveau_de__garantie"]/div/div/div/button/div/div/div
${champ_accord}    xpath://*[@id="vos_besoin"]/span[1]/div/div/div/button/div/div/div
${entreprise_exploi_agricole}    xpath://*[@id="vos_besoin"]/span[1]/div/div/div/div/div/ul/li[2]/a/span
${champ_obligation_conventionnelle}    //*[@id="niveau_de__garantie"]/div/div/div/div/div/ul/li[3]/a/span
${champ_niveau_garantie}    xpath://*[@id="choix_de__garantie"]/div/div/div/button/div/div/div
${champ_taux_convention}    xpath://*[@id="choix_de__garantie"]/div/div/div/div/div/ul/li[2]/a/span
${champ_date_effet_souhaité}    xpath://*[@id="self_care_date_d_effet"]
${btn_etape_suivante}    xpath://*[@id="self_care_first_page_next"]
${champ_num_siret}    xpath://*[@id="self_care_siret"]
${btn_valider}    xpath://*[@id="self_care_button_siret__validate"]
${champ_raisonsociale}    xpath:
${champ_codeNaf}    xpath: //*[@id="edit-code-naf"]
${champ_formejuridique}    xpath://*[@id="edit-forme-juridique"]
${champ_datecreation_entreprise}    xpath://*[@id="edit-date-de-creation-de-l-entreprise"]
${champ_adresse_entreprise}    xpath: //*[@id="edit-adresse"]
${champ_codepostal_entreprise}    xpath://*[@id="self_care_code_postale_ent"]
${champ_ville_entreprise}    xpath://*[@id="edit-ville"]
${champ_pays_entreprise}    xpath://*[@id="edit-pays"]
${champ_civilite}    xpath://*[@id="edit-civilite-mme"]
${champ_prenom}    xpath://*[@id="self_care_sign__prenom"]
${champ_nom}    xpath://*[@id="self_care_sign__nom"]
${champ_fonction}    xpath://*[@id="self_care_sign__fonction"]
${champ_numtelephonedirecte}    xpath://*[@id="self_care_sign__tel"]
${champ_numtelephoneportable}    xpath://*[@id="self_care_sign__tel_portable"]
${champ_adressemail_signataire}    xpath://*[@id="self_care_sign__email"]
${champ_adressemail_signataire_confirmer}    xpath://*[@id="self_care_sign__conf_email"]
${champ_convention_collective}    xpath://*[@id="edit-convention-collective"]
${champ_num_iddc}    xpath: //*[@id="edit-n-idcc"]
${champ_cocher}    xpath://*[@id="entreprise_container"]/div/div/div/div/fieldset[2]/div[6]/div/label/div/div/label/span/em
${btn_valider_demande}    xpath://*[@id="self_care_sec_page_submit"]
${champ_message_succes}    xpath:/html/body/div[2]/div/main/div/div[4]/div/div[1]/div/div/div/h1
${champ_valeur_succes_siret}    xpath: //*[@id="entreprise_container"]/div/div/div/div/fieldset[1]/div[1]/div[1]/span/label
${champ_travaux_services}    xpath://*[@id="vos_besoin"]/span[1]/div/div/div/div/div/ul/li[3]/a/span
${champ_taux_cotisation}    xpath://*[@id="niveau_de__garantie"]/div/div/div/div/div/ul/li[3]/a/span
${champ_civilite_personnalisé}    xpath://*[@id="civilite"]
${champ_nom_etude_pers}    xpath://*[@id="edit-nom"]
${champ_siret_etude_pers}    xpath://*[@id="contact-offre-siret"]
${champ_code_postal_etude_pers}    xpath: //*[@id="edit-code-postal"]
${champ_raison_sociale_etude_pers}    xpath://*[@id="edit-raison-sociale"]
${champ_secteur_activité}    xpath://*[@id="edit-secteurs"]
${champ_production_agricole}    xpath: //*[@id="edit-secteurs"]/option[2]
${champ_email_etude_pers}    xpath: //*[@id="edit-email"]
${champ_demande_precision}    xpath://*[@id="edit-message"]
${btn_envoyer_demande}    xpath://*[@id="contact-offre-form"]/div[7]/span/button
${champ_message_envoye}    xpath:/html/body/div[2]/div/main/div/div[2]/div[2]/div/div[1]/div/div/div/h3
${champ_num_portable_etude_pers}    xpath: //*[@id="edit-phone"]
















*** Keywords ***


#Renseigner la date d'aujourd'hui
Get Current Date
    [Arguments]    ${result_format}
    Fail
Vérifier la date actuelle
    [Arguments]    
    ${champ_date}=    Get Text    xpath=//span[@class='app-date']    #remplace le xpath de la date actuelle ici
    ${current_date}=    Get Current Date    result_format=%Y-%m-%d
    Should Be Equal As Strings    ${champ_date}    ${current_date}


Selectionner un accord dont vous relevez, exploitaion agricole ou cuma
    Click Element    ${champ_accord}
    Click Element    ${entreprise_exploi_agricole}

Selectionner l'objet de votre demande, obligation conventionnelle
    Click Element    ${champ_objet_demande}
    Click Element    ${champ_obligation_conventionnelle}

Selectionner le niveau de garantie taux de convention
    Click Element    ${champ_niveau_garantie}
    Click Element    ${champ_taux_convention}


Renseigner la date d'effet souhaite
    Click Element    ${champ_date_effet_souhaité}
    Input Text    ${champ_date_effet_souhaité}    01/04/2023   

## Les cas des études personnalisées

Selectionner un accord dont vous relever travaux et services, ruraux, forestiers
    Click Element    ${champ_accord}
    Click Element    ${champ_travaux_services}

Selectionner l'objet de votre demande, taux de cotisation
    Click Element    ${champ_objet_demande}
    Click Element    ${champ_taux_cotisation}

# Obtenir une aide personnalisée
Sélectionner votre civilité
    [Arguments]     ${civili}
    Select From List By Value    ${champ_civilite_personnalisé}      ${civili}

Renseigner le nom etude personnalisé
    [Arguments]    ${nom_etude_pers}
    Click Element    ${champ_nom_etude_pers}
    Input Text    ${champ_nom_etude_pers}    ${nom_etude_pers}

Renseigner le SIRET de votre entreprise etude personnalisé
    [Arguments]    ${num_siret}
    Click Element    ${champ_siret_etude_pers}
    Input Text    ${champ_siret_etude_pers}    ${num_siret}


Renseigner le code postal de votre entreprise etude personnalisé
    [Arguments]    ${codepostal_entreprise}
    Click Element    ${champ_code_postal_etude_pers}
    Input Text    ${champ_code_postal_etude_pers}    ${codepostal_entreprise}

Renseigner la raison sociale de votre entreprise etude pers
    [Arguments]    ${raison_sociale}
    Click Element    ${champ_raison_sociale_etude_pers}
    Input Text    ${champ_raison_sociale_etude_pers}    ${raison_sociale}

Renseigner votre secteur d'activiter
    Click Element    ${champ_secteur_activité}
    Click Element    ${champ_production_agricole}

Renseigner votre numéro de telephone etude personnalisé
    [Arguments]    ${numtelephoneportable}
    Click Element    ${champ_num_portable_etude_pers}
    Input Text    ${champ_num_portable_etude_pers}    ${numtelephoneportable}

Renseigner votre adresse mail etude personnalisé
    [Arguments]    ${adressemail}
    Click Element    ${champ_email_etude_pers}

Renseigner les précisions de votre demande
    [Arguments]    ${precision_demande}
    Click Element    ${champ_demande_precision}
Envoyer votre demande
    [Arguments]    ${message_envoyé}
    Click Button    ${btn_envoyer_demande}
    Wait Until Element Contains    ${champ_message_envoye}    ${message_envoyé}


###

    



#Cliquer pour passer à l'étape suivante
Clique sur le button étape suivante
    Click Button    ${btn_etape_suivante}
    Wait Until Element Contains    ${champ_valeur_succes_siret}    Quel est votre SIRET?*




Renseigner le numéro de siret
    [Arguments]    ${num_siret}
    Click Element    ${champ_num_siret}
    Input Text    ${champ_num_siret}    ${num_siret}

Cliquer sur le button valider
    Click Button    ${btn_valider}


Renseigner la convention collective
    [Arguments]     ${convention_collective}
    Input Text    ${champ_convention_collective}        ${convention_collective}

Renseigner le numéro d'iddc
    [Arguments]     ${num_iddc}
    Input Text    ${champ_num_iddc}     ${num_iddc}
    Sleep    5s


Vérifier que le champ raison sociale est rempli automatiquement
    [Arguments]     ${raison_sociale}
    Textfield Value Should Be     ${champ_raisonsociale}      ${raison_sociale}


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
    #[Arguments]     ${civilite}
    #Click Element    ${champ_civilite}      ${civilite}
        @{buttons}  Get WebElements  ${champ_civilite}
        FOR  ${button}  IN  @{buttons}
        Click Element  ${button}
        END

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

Confirmer l'adresse mail du signataire
    [Arguments]     ${adressemail_signataire_confirmer}
    Input Text    ${champ_adressemail_signataire}       ${adressemail_signataire_confirmer}


Cocher sur la déclaration pour acvtiver le bouton valider
    Click Element    ${champ_cocher}

Cliquer sur valider pour valider la demande
    [Arguments]    ${valeur_message_succes}
    Click Element    ${btn_valider_demande}
    Wait Until Element Contains    ${champ_message_succes}    ${valeur_message_succes}

