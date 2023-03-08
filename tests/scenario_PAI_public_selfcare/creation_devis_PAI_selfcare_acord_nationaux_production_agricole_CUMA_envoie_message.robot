*** Settings ***
Library     SeleniumLibrary     run_on_failure=Capture Page Screenshot  timeout=0:00:20  implicit_wait=0:00:20
Library     OperatingSystem

#Pages

Resource    ../../pages/tarificateur_page.robot
Resource    ../../pages/envoi_devis_page.robot
Resource    ../../pages/PAI_public_selfcare.robot

#jdd
Resource        ../../tests/resources/jdd_devis.robot
Resource        ../../tests/resources/test_properties.robot
Resource        ../../tests/resources/jdd_synthese.robot
Resource        ../../tests/resources/jdd_tarificateur.robot
#Resource        ../../tests/resources/jdd_PAI_public_selfcare.robot




*** Keywords ***

Formulaire de spécification des besoins accord nationaux production agricole etude personnalisée
    #Vérifier la date actuelle
    Selectionner un accord dont vous relever travaux et services, ruraux, forestiers
    Selectionner l'objet de votre demande, taux de cotisation

Formulaire pour l'obtention d'une aide personnalisée
    Sélectionner votre civilité
    Renseigner le nom etude personnalisé
    Renseigner le SIRET de votre entreprise etude personnalisé
    Renseigner le code postal de votre entreprise etude personnalisé
    Renseigner la raison sociale de votre entreprise etude pers
    Renseigner votre secteur d'activiter
    Renseigner votre numéro de telephone etude personnalisé
    Renseigner votre adresse mail etude personnalisé
    Renseigner les précisions de votre demande
    Envoyer votre demande