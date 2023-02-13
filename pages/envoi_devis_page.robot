*** Settings ***
Library     SeleniumLibrary   run_on_failure=Capture Page Screenshot  timeout=0:00:20  implicit_wait=0:00:20



*** Variables ***

${textarea_message}     id:edit-message
${message_envoyé}   xpath://p[@id='customizable_message_part']

${btn_envoyer_synthese}     xpath://button[contains(text(),'Envoyer la proposition commerciale')]

*** Keywords ***

Vérifier le titre de la page Synthèse
    [Arguments]     ${titre}        ${sous-titre}
    Wait Until Page Contains    ${titre}
    Wait Until Page Contains    ${sous-titre}

Personnaliser le message
    [Arguments]     ${message}
    Input Text    ${textarea_message}       ${message}
    Element Text Should Be    ${message_envoyé}    ${message}

Cliquer sur le bouton Envoyer la proposition commerciale
    Click Element    ${btn_envoyer_synthese}
    Vérifier le message de confirmation d'envoi

Vérifier le message de confirmation d'envoi
    Sleep         3s
    Wait Until Page Contains    Votre proposition commerciale a bien été transmise.

