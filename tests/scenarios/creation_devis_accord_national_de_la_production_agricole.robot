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
Connexion en tant que commercial
    Se connecter à Agrica Espace Co      ${nom_utilisateur_Agrica}    ${motdepasse_Agrica}      ${titre_profil_Agrica}
Connexion en tant que Credit Agricole
    Se connecter à Agrica Espace Co      ${nom_utilisateur_CreditAgricole}     ${motdepasse_CreditAgricole}      ${titre_profil_CreditAgricole}
Connexion en tant que Admin
    Se connecter à Agrica Espace Co      ${nom_utilisateur_Admin}    ${motdepasse_Admin}      ${titre_profil_Admin}
Formulaire Devis-Accès-Offre ANPAD
    Cliquer sur le lien Offres
    Cliquer sur l'offre ANPASAN
    Renseigner la date d'entretien


Formulaire Devis-Entreprise-Offre ANPAD
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

Formulaire Devis-Signataires-Offre ANPAD
    Selectionner la civilité    ${civilite}
    Renseigner le nom du signataire    ${nom_signataire}
    Renseigner le prénom du signataire    ${prenom_signataire}
    Renseigner la fonction du signataire    ${fonction_signataire}
    Renseigner le numéro du téléphone directe du signataire    ${numtelephonedirecte_signataire}
    Renseigner le numéro du téléphone portable du signataire    ${numtelephoneportable_signataire}
    Renseigner l'adresse mail du signataire    ${adressemail_signataire}

Formulaire Devis-Distributeur-Zenea-Offre ANPAD
    Vérifier que le champ distributeur est pré-rempli    ${nom_distributeur_creditagricole}
    Sélectionner l'agence de la caisse régionale    ${ville_caisseregionale_creditagricole}
    Renseigner le code conseiller    ${code_conseiller_Credit_Agricole}
    Renseigner le téléphone fixe du distributeur    ${numtelephonefixe_distributeur}
    Renseigner le téléphone portable du distributeur    ${numtelephoneportable_distributeur}
    Cliquer sur le bouton Etape suivante

Tarificateur ANPAD
    Set Selenium Speed    1s
    Renseigner si l'entreprise relève de l’Accord collectif national des Coopératives Agricoles et Industries Agroalimentaires     ${reponse}
    Sélectionner le régime    ${regime_ANPAD}
    Sélectionner le niveau de garantie que l'entreprise souhaite apporter à ses salariés    ${valeur_champ_niveau_garantie}
    Renseigner le type de cotisation    ${type_cotisation}
    #Sélectionner la garantie souhaitee
    Sélectionner la structure tarificataire    ${structure_tarificataire}
    Verifier la date d'effet de contrat    ${date_effet_contrat}


    Vérifier si la réponse à la question "l'entreprise relève de l’Accord collectif national des Coopératives Agricoles et Industries Agroalimentaires" est correcte    ${reponse}
    Vérifier si la valeur du régime est correcte    ${regime_ANPAD}
    Vérifier si la valeur du niveau de garantie est correcte    ${valeur_champ_niveau_garantie}
    Vérifier si le type de cotisation est correct    ${type_cotisation}
    Vérifier si la valeur de la structure tarificataire est correcte    ${structure_tarificataire}
    Vérifier si la valeur de la date d'effet de contrat est correcte    ${date_effet_contrat}
    Cliquer sur le bouton Suivant
    Vérifier si l'offre sélectionnée est bien affichée dans la partie Résumé    ${offre_selectionnee_ANPAD}
    Cliquer sur le bouton Enregistrer
    Set Selenium Speed    0s


Envoi de la proposition commerciale-Offre ANPAD
#    Vérifier le titre de la page Synthèse      Accord National de la Coopération Agricole et des Industries          Synthèse de la proposition commerciale et envoi au client
    Personnaliser le message    ${message}
    Cliquer sur le bouton Envoyer la proposition commerciale


Déconnexion de Agrica Espace Commercial
     Se deconnecter de Agrica