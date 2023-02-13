*** Settings ***
Library     SeleniumLibrary     run_on_failure=Capture Page Screenshot  timeout=0:00:20  implicit_wait=0:00:20
Library     OperatingSystem

#Pages
Resource    ../../pages/connexion_page.robot
Resource    ../../pages/choix_offre_agrica.robot
Resource    ../../pages/creation_devis_page.robot
Resource    ../../pages/tarificateur_page.robot
Resource    ../../pages/envoi_devis_page.robot

#jdd
Resource        ../../tests/resources/jdd_devis.robot
Resource        ../../tests/resources/test_properties.robot
Resource        ../../tests/resources/jdd_synthese.robot
Resource        ../../tests/resources/jdd_tarificateur.robot

*** Keywords ***

Connexion en tant que distributeur Agrica SDLM prévoyance
    Log To Console    path : ${EXEC_DIR}/pages/connexion_page.robot
    Se connecter à Agrica Espace Co      ${nom_utilisateur_Distributeur}    ${motdepasse_Distributeur}      ${titre_profil_Distributeur}

Formulaire Devis-Accès-Offre SDLM prévoyance
    Cliquer sur le lien Offres
    Cliquer sur l'offre SDLM prévoyance
    Renseigner la date d'entretien

 Formulaire Devis-Entreprise-Offre SDLM prévoyance
    Renseigner le numéro du SIRET    ${num_siret}
    Renseigner la couverture annuelle    ${couverture_annuelle}
    Renseigner la convention collective    ${convention_collective}
    Ajouter un numero de SIRET de rattachemment    ${num_siret_rattachement}
    Renseigner le numéro d'iddc    ${num_iddc}
    Vérifier que le champ raison sociale est rempli automatiquement    ${raison_sociale}
    Vérifier que le champ Code NAF est rempli automatiquement    ${code_NAF_actualise}
    Vérifier que le champ Forme juridique est rempli automatiquement    ${forme_juridique_actualise}
    Vérifier que la date de création de l'entreprise est renseignée automatiquement    ${date_creation_entreprise_actualise}
    Vérifier que l'adresse de l'entreprise est renseignée automatiquement    ${adresse_entreprise}
    Vérifier que le code postal de l'entreprise est renseigné automatiquement    ${codepostal_entreprise}
    Vérifier que la ville de l'entreprise est renseignée automatiquement    ${ville_entreprise}
    Vérifier que le pays de l'entreprise est renseigné automatiquement    ${pays_entreprise}
    Vérifier que le champ Raison sociale rattachement est rempli automatiquement    ${raison_sociale_rattachement}

Formulaire Devis-Signataires-Offre SDLM prévoyance
    Selectionner la civilité    ${civilite}
    Renseigner le nom du signataire    ${nom_signataire}
    Renseigner le prénom du signataire    ${prenom_signataire}
    Renseigner la fonction du signataire    ${fonction_signataire}
    Renseigner le numéro du téléphone directe du signataire    ${numtelephonedirecte_signataire}
    Renseigner le numéro du téléphone portable du signataire    ${numtelephoneportable_signataire}
    Renseigner l'adresse mail du signataire    ${adressemail_signataire}

Formulaire Devis-Distributeur-Offre SDLM prévoyance
    Vérifier que le champ distributeur est pré-rempli   ${nom_distributeur_groupe_Agrica}
    Sélectionner l'agence de la caisse régionale    ${ville_caisseregionale_groupe_Agrica}
    Renseigner le code conseiller    ${code_conseiller}
    Renseigner le téléphone fixe du distributeur    ${numtelephonefixe_distributeur}
    Renseigner le téléphone portable du distributeur    ${numtelephoneportable_distributeur}
    Cliquer sur le bouton Etape suivante

Tarificateur SDLM prévoyance
    Set Selenium Speed    1s
    Sélectionner la réponse NON à la question l’entreprise relève de la CCN distribution et location de matériels agricoles, de travaux publics, de bâtiment, de manutention, de motoculture de plaisance et activités connexes, dite SDLM :    ${valeur_champ_entreprise_NON}
    Vérifier la présence du message si la réponse est non
    Vérifier si la valeur du champ entreprise relevant de la CCN distribution et location de matériels agricoles, de travaux publics, de bâtiment, de manutention, de motoculture de plaisance et activités connexes, dite SDLM :       ${valeur_champ_entreprise_NON}
    Sélectionner la réponse OUI à la question l’entreprise relève de la CCN distribution et location de matériels agricoles, de travaux publics, de bâtiment, de manutention, de motoculture de plaisance et activités connexes, dite SDLM :    ${valeur_champ_entreprise_OUI}
    Vérifier si la valeur du champ entreprise relevant de la CCN distribution et location de matériels agricoles, de travaux publics, de bâtiment, de manutention, de motoculture de plaisance et activités connexes, dite SDLM :       ${valeur_champ_entreprise_OUI}
    Renseigner l'effectif et masse salariale annuelle des salaris non cadres    ${valeur_champ_effectif_a_assurer}
    Renseigner la masse salariale TA des salaries Non Cadres    ${valeur_champ_masse_salariale_TA} 
    Renseigner l'effectif et masse salariale annuelle des salaris cadres    ${valeur_champ_effectif_a_assurer}
    Renseigner la masse salariale TA des salaries Cadres    ${valeur_champ_masse_salariale_TA} 
    Verifier la date d'effet de contrat        ${date_effet_contrat}
    Vérifier si la valeur de la date d'effet de contrat est correcte    ${date_effet_contrat}
    Cliquer sur le bouton Suivant
    Vérifier si l'offre sélectionnée est bien affichée dans la partie Résumé    ${offre_selectionnee_SDLM}
    Cliquer sur le bouton Enregistrer
    Set Selenium Speed    0s




selenium_utils.Fermer le navigateur
