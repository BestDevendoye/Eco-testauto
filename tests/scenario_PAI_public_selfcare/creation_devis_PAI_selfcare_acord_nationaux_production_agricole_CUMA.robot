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

Formulaire de spécification des besoins accord nationaux production agricole
    #Vérifier la date actuelle
    Selectionner un accord dont vous relevez, exploitaion agricole ou cuma
    Selectionner l'objet de votre demande, obligation conventionnelle
    Selectionner le niveau de garantie taux de convention
    Renseigner la date d'effet souhaite

Formulaire devis Entreprise accord nationaux production agricole
    Renseigner le numéro de siret
    Cliquer sur le button valider
    Vérifier que le champ raison sociale est rempli automatiquement
    Vérifier que le champ Code NAF est rempli automatiquement
    Vérifier que le champ Forme juridique est rempli automatiquement
    Vérifier que la date de création de l'entreprise est renseignée automatiquement
    Renseigner la convention collective
    Renseigner le numéro d'iddc
    Vérifier que l'adresse de l'entreprise est renseignée automatiquement
    Vérifier que le code postal de l'entreprise est renseigné automatiquement
    Vérifier que la ville de l'entreprise est renseignée automatiquement
    Vérifier que le pays de l'entreprise est renseigné automatiquement

Formulaire devis Signataire accord nationaux production agricole
    Selectionner la civilité
    Renseigner le prénom du signataire
    Renseigner le nom du signataire
    Renseigner la fonction du signataire
    Renseigner le numéro du téléphone directe du signataire
    Renseigner le numéro du téléphone portable du signataire
    Renseigner l'adresse mail du signataire
    Confirmer l'adresse mail du signataire
    Cocher sur la déclaration pour acvtiver le bouton valider
    Cliquer sur valider pour valider la demande

