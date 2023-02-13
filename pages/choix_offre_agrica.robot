*** Settings ***
Library           SeleniumLibrary   run_on_failure=Capture Page Screenshot  timeout=0:00:20  implicit_wait=0:00:20


*** Variables ***
#section offre
${lien_offe_Agrica_Prevoyance}       xpath://a[contains(@href,'offres-agrica-prevoyance') and @class='btn btn-primary btn-arrow btn-large']
${lien_offe_Agrica_Agricole}       xpath://a[contains(@href,'offres-agricoles') and @class='btn btn-primary btn-arrow btn-large']
#offre famille rurale
${btn_devis_famillerurale}  xpath://a[contains(@href,'FAMILLE_RURALE') and @class='btn btn-devis']

#offre zenea
${btn_devis_zenea}  xpath://a[contains(@href,'ZENEA') and @class='btn btn-devis']

#offre zenea_produits du sol
${btn_devis_zenea_produits_sol}  xpath://a[contains(@href,'ZENEA') and @class='btn btn-devis'][preceding::a/img[contains(@alt,'Zenéa Négoce et Industrie des produits du sol')]]

#offre zenea_mareyeurs_expéditeurs
${btn_devis_zenea_mareyeurs_expéditeurs}  xpath://a[contains(@href,'ZENEA') and @class='btn btn-devis'][preceding::a/img[contains(@alt,'Zenéa Mareyeurs - Expéditeurs')]]

#offre Accord National De La Production Agricole
${btn_devis_ANPASAN}  xpath://a[contains(@href,'CONF_COOPIAA') and @class='btn btn-devis']

#offre CCN52
${btn_devis_CCN52}  xpath://a[contains(@href,'CONF_CCN52') and @class='btn btn-devis']

#offre PER CPCEA non cadre
${btn_devis_PER CPCEA non cadre}  xpath://a[contains(@href,'CONF_PERCPCEANC') and @class='btn btn-devis']

#offre Vins et spiritueux santé
${btn_devis_Vins et spiritueux santé}  xpath://a[contains(@href,'CONF_VINSAN') and @class='btn btn-devis']

#offte Vins et spiritueux prévoyance
${btn_devis_Vins et spiritueux prévoyance}  xpath://a[contains(@href,'CONF_VINPREV') and @class='btn btn-devis']

#offre SDLM prévoyance
${btn_devis_SDLM prévoyance}  xpath://a[contains(@href,'CONF_SDLMPREV') and @class='btn btn-devis']

#offre équestres santé
${btn_devis_équestres_santé}  xpath://a[contains(@href,'CONF_EQUSAN') and @class='btn btn-devis']

#offre équestres prévoyance
${btn_devis_équestres_prévoyance}  xpath://a[contains(@href,'CONF_EQUPREV') and @class='btn btn-devis']

#offre ACCORD TAM ET CADRES DU PAYSAGE
${btn_devis_accord_tam}  xpath://a[contains(@href,'CONF_PAYCAD') and @class='btn btn-devis']

#offre ACCORD  NATIONAL DE LA COOPERATION AGRIGOLE ET DES INDUSTRIES
${btn_devis_accord_national_cooperation}  xpath://a[contains(@href,'CONF_COOPIAA') and @class='btn btn-devis']

#offre Indemnité Licenciement Inaptitude professionnelle
${btn_devis_ILIP}  xpath://a[contains(@href,'CONF_ILIP') and @class='btn btn-devis']

#offre ACCORD NATIONAL DE LA PRODUCTION AGRICOLE – SANTÉ
${btn_devis_accord_national_prod_agricole}  xpath://a[contains(@href,'CONF_ANPASAN') and @class='btn btn-devis']

#offre SDLM_Santé
${btn_devis_SDLM_santé}  xpath://a[contains(@href,'CONF_SDLMSAN') and @class='btn btn-devis']

#offre CCN des entreprises du Paysage Ouvriers et Employés
${btn_devis_CCN_entreprises_ouvriers}  xpath://a[contains(@href,'CONF_CCNPAYNCAD') and @class='btn btn-devis']

#offre RÉGIME D’ADHÉSION
${btn_devis_régime_adhésion}  xpath://a[contains(@href,'CONF_REGADH') and @class='btn btn-devis']

#offre PER CPCEA - SUPPLÉMENT DE TAUX
${btn_devis_per_cpcea_supp_taux}  xpath://a[contains(@href,'CONF_RS_CPCEA') and @class='btn btn-devis']
*** Keywords ***

Cliquer sur le lien Offres
    Click Element       ${lien_offe_Agrica_Prevoyance}

Cliquer sur le lien Offre_agricole
    Click Element       ${lien_offe_Agrica_Agricole}

Cliquer sur l'offre Famille Rurale
    Click Element       ${btn_devis_famillerurale}

Cliquer sur l'offre Zenea
    Click Element       ${btn_devis_zenea}

Cliquer sur l'offre Zenea_produits_sol
    Click Element       ${btn_devis_zenea_produits_sol}

Cliquer sur l'offre Zenea_mareyeurs_expediteurs
    Click Element       ${btn_devis_zenea_mareyeurs_expéditeurs}
Cliquer sur l'offre ANPASAN
    Click Element    ${btn_devis_ANPASAN}


Cliquer sur l'offre CCN52
    Click Element    ${btn_devis_CCN52}

Cliquer sur l'offre PER CPCEA non cadre
    Click Element    ${btn_devis_PER CPCEA non cadre}

Cliquer sur l'offre Vins et spiritueux santé
    Click Element    ${btn_devis_Vins et spiritueux santé}

Cliquer sur l'offre Vins et spiritueux prévoyance
    Click Element    ${btn_devis_Vins et spiritueux prévoyance}

Cliquer sur l'offre SDLM prévoyance
    Click Element    ${btn_devis_SDLM prévoyance}

Cliquer sur l'offre ACCORD TAM ET CADRES DU PAYSAGE
    Click Element    ${btn_devis_accord_tam}


Cliquer sur l'offre équestres santé
    Click Element    ${btn_devis_équestres_santé}

Cliquer sur l'offre équestres prévoyance
    Click Element    ${btn_devis_équestres_prévoyance}

Cliquer sur l'offre ACCORD NATIONAL DE LA COOPERATION AGRIGOLE ET DES INDUSTRIES
    Click Element    ${btn_devis_accord_national_cooperation}

Cliquer sur l'offre Indemnité Licenciement Inaptitude professionnelle
    Click Element    ${btn_devis_ILIP}

Cliquer sur l'offre ACCORD NATIONAL DE LA PRODUCTION AGRICOLE – SANTÉ
    Click Element    ${btn_devis_accord_national_prod_agricole}

Cliquer sur l'offre SDLM_Santé
    Click Element    ${btn_devis_SDLM_santé}

Cliquer sur l'offre CCN des entreprises du Paysage Ouvriers et Employés
    Click Element    ${btn_devis_CCN_entreprises_ouvriers}

Cliquer sur l'offre RÉGIME D’ADHÉSION
    Click Element    ${btn_devis_régime_adhésion}

Cliquer sur l'offre PER CPCEA - SUPPLÉMENT DE TAUX
    Click Element    ${btn_devis_per_cpcea_supp_taux}