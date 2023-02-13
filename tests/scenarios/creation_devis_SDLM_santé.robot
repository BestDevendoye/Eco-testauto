*** Settings ***
Library     SeleniumLibrary     run_on_failure=Capture Page Screenshot
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

Connexion en tant que distributeur Agrica SDLM_Santé
    Log To Console    Step-01-Connexion en tant que destributeur
    Log To Console    path : ${EXEC_DIR}/pages/connexion_page.robot
    Se connecter à Agrica Espace Co      ${nom_utilisateur_Distributeur}    ${motdepasse_Distributeur}      ${titre_profil_Distributeur}

Formulaire Devis-Accès-Offre SDLM_Santé
    Log To Console    Step-02-Clic sur SDLM_Santé
    Cliquer sur le lien Offres
    Cliquer sur l'offre SDLM_Santé
    Renseigner la date d'entretien

 Formulaire Devis-Entreprise-Offre SDLM_Santé
    Log To Console    Step-03-Remplissage des champs Entreprise
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

Formulaire Devis-Signataires-Offre SDLM_Santé
    Log To Console    Step-04-Remplissage des champs Signataire
    Selectionner la civilité    ${civilite}
    Renseigner le nom du signataire    ${nom_signataire}
    Renseigner le prénom du signataire    ${prenom_signataire}
    Renseigner la fonction du signataire    ${fonction_signataire}
    Renseigner le numéro du téléphone directe du signataire    ${numtelephonedirecte_signataire}
    Renseigner le numéro du téléphone portable du signataire    ${numtelephoneportable_signataire}
    Renseigner l'adresse mail du signataire    ${adressemail_signataire}


Formulaire Devis-Distributeur-Offre SDLM_Santé
    Log To Console    Step-05-Remplissage des champs Distributeur
    Vérifier que le champ distributeur est pré-rempli   ${nom_distributeur_groupe_Agrica}
    Sélectionner l'agence de la caisse régionale    ${ville_caisseregionale_groupe_Agrica}
    Renseigner le code conseiller    ${code_conseiller}
    Renseigner le téléphone fixe du distributeur    ${numtelephonefixe_distributeur}
    Renseigner le téléphone portable du distributeur    ${numtelephoneportable_distributeur}
    Cliquer sur le bouton Etape suivante

Tarificateur SDLM_Santé
    Log To Console    Step-06-Remplissage des champs Tarificateur
    Set Selenium Speed    1s
    Sélectionner la réponse NON à la question l’entreprise relève de la CCN distribution et locations de matériels    ${valeur_champ_entreprise_NON}
    Vérifier la présence du message si la réponse est non_SDLM_santé
    Vérifier si la valeur du champ est NON SDLM_santé      ${valeur_champ_entreprise_NON}
    Sélectionner la réponse OUI à la question l’entreprise relève de la CCN distribution et locations de matériels     ${valeur_champ_entreprise_OUI}
    Vérifier la valeur du champ entreprise est OUI SDLM_santé   ${valeur_champ_entreprise_OUI}
    Sélectionner le niveau de garantie SDLM_santé      ${valeur_champ_niveau_garantie}
    Sélectionner le type de cotisations      ${type_cotisations_SDLM-santé}
    Renseigner l'effectif à assurer_SDLM_Santé         ${valeur_champ_effectif_SDLM_santé}
    Cliquer sur le bouton Suivant
    Vérifier si l'offre sélectionnée est bien affichée dans la partie Résumé    ${offre_selectionnee_SDLM_santé}
    Cliquer sur le bouton Enregistrer
    Set Selenium Speed    0s

Envoi de la proposition commerciale-Offre SDLM_Santé
    Log To Console    Step-07-Envoi de la proposition
    Vérifier le titre de la page Synthèse       SDLM – Santé        Synthèse de la proposition commerciale et envoi au client
    Personnaliser le message    ${message}
    Cliquer sur le bouton Envoyer la proposition commerciale


selenium_utils.Fermer le navigateur
