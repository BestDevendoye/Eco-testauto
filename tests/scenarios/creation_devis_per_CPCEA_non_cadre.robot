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

Connexion en tant que distributeur Agrica PER CPCEA non cadre PROD / ETARF
    Log To Console    Step-01-Connexion en tant que destributeur
    Log To Console    path : ${EXEC_DIR}/pages/connexion_page.robot
    Se connecter à Agrica Espace Co      ${nom_utilisateur_Distributeur}    ${motdepasse_Distributeur}      ${titre_profil_Distributeur}

Formulaire Devis-Accès-Offre PER CPCEA non cadre PROD / ETARF
    Log To Console    Step-02-Clic sur PER CPCEA non cadre
    Cliquer sur le lien Offres
    Cliquer sur l'offre PER CPCEA non cadre
    Renseigner la date d'entretien

Formulaire Devis-Entreprise-Offre PER CPCEA non cadre PROD / ETARF
    Log To Console    Step-03-Remplissage des champs Entreprise  PER CPCEA non cadre
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

Formulaire Devis-Signataires-Offre PER CPCEA non cadre PROD / ETARF
    Log To Console    Step-04-Remplissage des champs Signataire PER CPCEA non cadre PROD
    Selectionner la civilité    ${civilite}
    Renseigner le nom du signataire    ${nom_signataire}
    Renseigner le prénom du signataire    ${prenom_signataire}
    Renseigner la fonction du signataire    ${fonction_signataire}
    Renseigner le numéro du téléphone directe du signataire    ${numtelephonedirecte_signataire}
    Renseigner le numéro du téléphone portable du signataire    ${numtelephoneportable_signataire}
    Renseigner l'adresse mail du signataire    ${adressemail_signataire}

Formulaire Devis-Distributeur-Offre PER CPCEA non cadre PROD / ETARF
    Log To Console    Step-05-Remplissage des champs Distributeur
    Vérifier que le champ distributeur est pré-rempli   ${nom_distributeur_groupe_Agrica}
    Sélectionner l'agence de la caisse régionale    ${ville_caisseregionale_groupe_Agrica}
    Renseigner le code conseiller    ${code_conseiller}
    Renseigner le téléphone fixe du distributeur    ${numtelephonefixe_distributeur}
    Renseigner le téléphone portable du distributeur    ${numtelephoneportable_distributeur}
    Cliquer sur le bouton Etape suivante

Tarificateur PER CPCEA non cadre PROD / ETARF
    Log To Console    Step-06-Remplissage des champs Tarificateur PER CPCEA non cadre PROD
    Set Selenium Speed    1s
    Sélectionner le secteur d'activité    ${valeur_secteur_activite}
    Sélectionner le niveau de garantie obligatoire    ${valeur_champ_niveau_garantie}
    Sélectionner le choix du garantie    ${valeur_choix_garantie}
    Renseigner Supplément du taux conventionnel (1re cellule)   ${valeur_1eme_supplement_taux_cenventionnel}
    Renseigner Supplément du taux conventionnel (2eme cellule)    ${valeur_2eme_supplement_taux_cenventionnel}
    Renseigner Supplément du taux conventionnel (3eme cellule)    ${valeur_3eme_supplement_taux_cenventionnel}
    Verifier la date d'effet de contrat        ${date_effet_contrat}

#    Vérifier si le secteur d'activité est correct    ${valeur_secteur_activite}
    Vérifier si le niveau de garantie obligatoire est correct    ${valeur_champ_niveau_garantie}
    Vérifier si le choix de garantie est correct    ${valeur_choix_garantie}
    Verifier si le 1er supplement de taux cenventionnel est correct     ${valeur_1eme_supplement_taux_cenventionnel}
    Verifier si le 2eme supplement de taux cenventionnel est correct    ${valeur_2eme_supplement_taux_cenventionnel}
    Verifier si le 3eme supplement de taux cenventionnel est correct    ${valeur_3eme_supplement_taux_cenventionnel}
#    Vérifier si la valeur de la date d'effet de contrat est correcte    ${date_effet_contrat}
    Cliquer sur le bouton Suivant
    Vérifier si l'offre sélectionnée est bien affichée dans la partie Résumé    ${offre_selectionnee_PER CPCEA non cadre}
    Cliquer sur le bouton Enregistrer
    Set Selenium Speed    0s

Envoi de la proposition commerciale-Offre PER CPCEA non cadre PROD / ETARF
    Vérifier le titre de la page Synthèse       PER CPCEA NON CADRES PROD / ETARF       Synthèse de la proposition commerciale et envoi au client
    Personnaliser le message    ${message}
    Cliquer sur le bouton Envoyer la proposition commerciale


Déconnexion de Agrica Espace Commercial
   Se deconnecter de Agrica


