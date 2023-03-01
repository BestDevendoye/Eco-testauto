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

Connexion en tant que distributeur Agrica ACCORD NATIONAL DE LA COOPERATION AGRIGOLE ET DES INDUSTRIES non passant
    Log To Console    Step-01-Connexion en tant que destributeur
    Log To Console    path : ${EXEC_DIR}/pages/connexion_page.robot
    Se connecter à Agrica Espace Co      ${nom_utilisateur_Distributeur}    ${motdepasse_Distributeur}      ${titre_profil_Distributeur}

Formulaire Devis-Accès-Offre ACCORD NATIONAL DE LA COOPERATION AGRIGOLE ET DES INDUSTRIES non passant
    Log To Console    Step-02-Clic sur ACCORD NATIONAL DE LA COOPERATION AGRIGOLE ET DES INDUSTRIES
    Cliquer sur le lien Offres
    Cliquer sur l'offre ACCORD NATIONAL DE LA COOPERATION AGRIGOLE ET DES INDUSTRIES
    Renseigner la date d'entretien

Formulaire Devis-Entreprise-Offre ACCORD NATIONAL DE LA COOPERATION AGRIGOLE ET DES INDUSTRIES non passant 
    Vérifier que le numéro de SIRET n'est pas correct    ${num_siret_incorrect}
    Ajouter la couverture annuelle  ${couverture_annuelle}
    Ajouter la convention collective   ${convention_collective}
    Ajouter un numero de SIRET de rattachemment incorrect    ${num_siret_rattachement_incorrect}
    Ajouter le numéro N° IDCC dans le formulaire      ${num_iddc}
    Renseigner une valeur incorrecte du raison social    ${raison_sociale_incorrect}
    Renseigner un code Naf incorrect    ${code_NAF_actualise_incorrect}
    Renseigner le champ forme juridique par une valeur incorrect    ${forme_juridique_incorrect}
    Renseigner la date incorrecte de création de l'entreprise    ${date_creation_entreprise_actualise_incorrect}
    Renseigner une adresse incorrecte de l'entreprise    ${adresse_entreprise_incorrect}
    Renseigner un code postal incorrect de l'entreprise    ${codepostal_entreprise_incorrect}
    Renseigner une ville quelconque de l'entreprise    ${ville_entreprise_incorrect}
    #Renseigner un pays et vérifer le message d'erreur    ${pays_entreprise}
    #Renseigner le champ raison social de rattachement    ${raison_sociale_rattachement}

Formulaire Devis-Signataires-Offre ACCORD NATIONAL DE LA COOPERATION AGRIGOLE ET DES INDUSTRIES non passant
    Renseigner la civilité    ${civilite}
    Ajouter le prenom du signataire    ${nom_signataire}
    Ajouter le nom du signataire    ${prenom_signataire}
    Ajouter la fonction signataire    ${fonction_signataire}
    Vérifier que le numéro téléphone fixe du signatire n'est pas correct    ${numtelephonedirecte_signataire_incorrect}
    Vérifier que le numéro téléphone direct du signataire n'est pas correct    ${numtelephoneportable_signataire_incorrect}
    Vérifier que l'adresse email signataire n'est pas correct    ${adressemail_signataire_incorrect}


Formulaire Devis-Distributeur-Offre ACCORD NATIONAL DE LA COOPERATION AGRIGOLE ET DES INDUSTRIES non passant
    #Vérification pré-remplissage champ distributeur
    #Sélection de l'agence de la caisse régionale
    Vérifier que le code conseiller n'est pas correct
    Vérifier que le numéro de téléphone fixe rempli n'est pas correct
    Vérifier que le numéro de téléphone portable du distributeur n'est pas correct
    Cliquer sur le bouton Etape suivante non passant





selenium_utils.Fermer le navigateur