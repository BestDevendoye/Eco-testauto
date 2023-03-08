** Settings ***
Library     SeleniumLibrary


*** Keywords ***

Ouvrir le navigateur PAI selfcare public
    [Arguments]      ${url_selfcare}     ${browser}
    open browser        ${url_selfcare}      ${browser}
    maximize browser window
    Log To Console    Exécution de test démarrée sur ${browser}

Fermer le navigateur
    Close browser
    Log To Console    Fin de l'exécution de test