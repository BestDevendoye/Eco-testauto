*** Settings ***
Library     SeleniumLibrary
Library     OperatingSystem
Resource       scenario_PAI_public_selfcare/creation_devis_PAI_selfcare_acord_nationaux_production_agricole_CUMA.robot
Resource       scenario_PAI_public_selfcare/creation_devis_PAI_selfcare_acord_nationaux_production_agricole_CUMA_envoie_message.robot


# initialisation du test (setup et teardown)
Resource        ../core/selenium_utils_PAI_selfcare.robot

Test Setup   Ouvrir le navigateur PAI selfcare public    ${url_selfcare}   ${browser}
Test Teardown     Fermer le navigateur

*** Test Cases ***
Création devis PAI selfcare public accord nationaux production agricole
    Formulaire de spécification des besoins accord nationaux production agricole
    Formulaire devis Entreprise accord nationaux production agricole
    Formulaire devis Signataire accord nationaux production agricole


Création devis PAI selfcare public accord nationaux production agricole cas études personalé
    Formulaire de spécification des besoins accord nationaux production agricole etude personnalisée
    Formulaire pour l'obtention d'une aide personnalisée
