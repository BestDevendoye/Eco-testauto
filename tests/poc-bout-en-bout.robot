*** Settings ***
Library     SeleniumLibrary
Library     OperatingSystem
Resource       scenarios/creation_devis_accord_national_de_la_production_agricole.robot
Resource       scenarios/creation_devis_offre_rurale.robot
Resource       scenarios/creation_devis_offre_zenea.robot

# initialisation du test (setup et teardown)
Resource        ../core/selenium_utils.robot
Resource    scenarios/CCN52.robot
Resource    scenarios/PER CPCEA non cadre.robot
Resource    scenarios/Vins et spiritueux prévoyance.robot
Resource    scenarios/Vins et spiritueux santé.robot
Resource    scenarios/SDLM prévoyance.robot
Resource    scenarios/creation_devis_zenea_produits_du_sol.robot
Resource    scenarios/creation_devis_zenea_mareyeurs_expediteurs.robot
Resource    scenarios/creation_devis_accord_national_cooperation_agricole_indusctries.robot
Resource    scenarios/creation_devis_accord_tam_cadres_paysage.robot
Resource    scenarios/creation_devis_ILIP.robot
Resource    scenarios/creation_devis_accord_national_prod_agricole_santé.robot
Resource    scenarios/mail-get-lien-tessi.robot

*** Test Cases ***

POC bout en bout
  #Creation devis offre PER CPCEA NON CADRES PROD / ETARF
    Ouvrir le navigateur    ${url}   ${browser}
    Connexion en tant que Assureur
    Formulaire Devis-Accès-Offre PER CPCEA non cadre PROD / ETARF
    Formulaire Devis-Entreprise-Offre PER CPCEA non cadre PROD / ETARF
    Formulaire Devis-Signataires-Offre PER CPCEA non cadre PROD / ETARF
    Formulaire Devis-Distributeur-Offre PER CPCEA non cadrePROD / ETARF
    Tarificateur PER CPCEA non cadre PROD / ETARF
    Envoi de la proposition commerciale-Offre PER CPCEA non cadre PROD / ETARF
    Fermer le navigateur

  #Récupération du lien Tessi dans le mail
    Sleep  2m  Pause le temps que le mail soit réceptionné
    ${lienTessi} =  GET lien Tessi

  #Tessi signature
    log to console  ${lienTessi}
    Ouvrir le navigateur    ${lienTessi}   ${browser}

  #Picris

  #Ged

  #Salesforce
