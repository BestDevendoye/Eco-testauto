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

Connexion en tant que Distributeur
    Log To Console    Step-01-Connexion en tant que destributeur
    Log To Console    path : ${EXEC_DIR}/pages/connexion_page.robot
    Se connecter à Agrica Espace Co      ${nom_utilisateur_Distributeur}    ${motdepasse_Distributeur}      ${titre_profil_Distributeur}
Connexion en tant que Assureur
    Log To Console    path : ${EXEC_DIR}/pages/connexion_page.robot
    Se connecter à Agrica Espace Co      ${nom_utilisateur_ASSUREUR}     ${motdepasse_ASSUREUR}      ${titre_profil_ASSUREUR}


Formulaire Devis-Accès-Offre Zenea
    Cliquer sur le lien Offres
    Cliquer sur l'offre Zenea
    Renseigner la date d'entretien

Formulaire Devis-Entreprise-Offre Zenea
    Set Selenium Speed    1s
    Renseigner le numéro du SIRET    ${num_siret}
    Renseigner la couverture annuelle    ${couverture_annuelle}
    Renseigner la convention collective    ${convention_collective}
    Ajouter un numero de SIRET de rattachemment    ${num_siret_rattachement}
    Vérifier que le champ raison sociale est rempli automatiquement    ${nom_entreprise}
    Vérifier que le champ Code NAF est rempli automatiquement    ${code_NAF_actualise}
    Vérifier que le champ Forme juridique est rempli automatiquement    ${forme_juridique_actualise}
    Vérifier que la date de création de l'entreprise est renseignée automatiquement    ${date_creation_entreprise_actualise}
    Vérifier que l'adresse de l'entreprise est renseignée automatiquement    ${adresse_entreprise}
    Vérifier que le code postal de l'entreprise est renseigné automatiquement    ${codepostal_entreprise}
    Vérifier que la ville de l'entreprise est renseignée automatiquement    ${ville_entreprise}
    Vérifier que le pays de l'entreprise est renseigné automatiquement    ${pays_entreprise}
    Vérifier que le champ Raison sociale rattachement est rempli automatiquement    ${raison_sociale_rattachement}
    Set Selenium Speed    0s


Formulaire Devis-Signataires-Offre Zenea
    Selectionner la civilité    ${civilite}
    Renseigner le nom du signataire    ${nom_signataire}
    Renseigner le prénom du signataire    ${prenom_signataire}
    Renseigner la fonction du signataire    ${fonction_signataire}
    Renseigner le numéro du téléphone directe du signataire    ${numtelephonedirecte_signataire}
    Renseigner le numéro du téléphone portable du signataire    ${numtelephoneportable_signataire}
    Renseigner l'adresse mail du signataire    ${adressemail_signataire}

Formulaire Devis-Distributeur-Offre Zenea
    Vérifier que le champ distributeur est pré-rempli   ${nom_distributeur_groupe_Agrica}
    Sélectionner l'agence de la caisse régionale    ${ville_caisseregionale_groupe_Agrica}
    Renseigner le code conseiller    ${code_conseiller}
    Renseigner le téléphone fixe du distributeur    ${numtelephonefixe_distributeur}
    Renseigner le téléphone portable du distributeur    ${numtelephoneportable_distributeur}
    Cliquer sur le bouton Etape suivante

Tarificateur Zenéa
    Set Selenium Speed    1s
    Sélectionner le niveau de garantie que l'entreprise souhaite apporter à ses salariés  ${valeur_champ_niveau_garantie_zenea}
    Sélectionner la localisation    ${localisation}
    #Sélectionner le régime    ${regime}
    Sélectionner le collège    ${college}
    Sélectionner l'effectif du collège à couvrir    ${effectif_college}
    Sélectionner le type de cotisation  ${valeur_champ_type_cotisation}
    Sélectionner la cotisation par salarie assuré dans le tableau
    #Sélectionner la cotisation mensuelle pour l'ensemble de l'effectif assuré
    Sélectionner la structure tarificataire    ${structure_tarificataire}
    Verifier la date d'effet de contrat    ${date_effet_contrat}


    Vérifier si la valeur du niveau de garantie est correcte        ${valeur_champ_niveau_garantie_zenea}
    Vérifier si la valeur de la localisation est correcte    ${localisation}
    #Vérifier si la valeur du régime est correcte    ${regime}
    Vérifier si la valeur du collège est correcte    ${college}
    Vérifier si la valeur de l'effectif du collège est correcte    ${effectif_college}
    #Vérifier si la valeur de la cotisation mensuelle sélectionnée est correcte      ${cotisation_mensuelle_selectionnee}
   #Vérifier si la valeur de la structure tarificataire est correcte    ${structure_tarificataire}
    Vérifier si la valeur de la date d'effet de contrat est correcte    ${date_effet_contrat}
    Cliquer sur le bouton Suivant
    Vérifier si l'offre sélectionnée est bien affichée dans la partie Résumé    ${offre_selectionnee_zenea}
    Cliquer sur le bouton Enregistrer
     Set Selenium Speed    0s

Envoi de la proposition commerciale-Offre zenea
    Vérifier le titre de la page Synthèse       Zenéa       Synthèse de la proposition commerciale et envoi au client
    Personnaliser le message    ${message}
    Cliquer sur le bouton Envoyer la proposition commerciale


Déconnexion de Agrica Espace Commercial
   Se deconnecter de Agrica




