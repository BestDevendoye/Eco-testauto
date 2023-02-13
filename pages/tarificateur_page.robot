*** Settings ***
Library     SeleniumLibrary   run_on_failure=Capture Page Screenshot  timeout=0:00:20  implicit_wait=0:00:20
Library    Telnet

*** Variables ***

#champ niveau de garantie
${champ_niveau_garantie}        xpath://div[@kdescription="Niveau de garantie que l’entreprise souhaite apporter à ses salariés"]//div//div//div/select
${status_complete_niveau_garantie}      xpath://div[@kdescription='Niveau de garantie que l’entreprise souhaite apporter à ses salariés']//div//div/img[@class='apiStatusImage' and @alt='Complété']

#champ adhésion
${champ_adhesion}       xpath://div[@kdescription='Adhésion']//div//div//div/select
${status_complete_adhesion}     xpath://div[@kdescription='Adhésion']//div//div/img[@class='apiStatusImage' and @alt='Complété']

#champ salaire
${champ_salaire}        xpath://div[@kdescription='Salaire annuel brut ensemble du personnel']//div//div//div/input
${status_complete_salaire}      xpath://div[@kdescription='Salaire annuel brut ensemble du personnel']//div//div/img[@class='apiStatusImage' and @alt='Complété']

#champ effectif personnel
${champ_effectif_personnel}      xpath://div[@kdescription='Effectif ensemble du personnel']//div//div//div/input
${status_complete_effectif_personnel}       xpath://div[@kdescription='Effectif ensemble du personnel']//div//div/img[@class='apiStatusImage' and @alt='Complété']

#champ localisation
${champ_localisation}       xpath://div[@kdescription='Localisation']//div//div//div/select
${status_complete_localisation}     xpath://div[@kdescription='Localisation']//div//div/img[@class='apiStatusImage' and @alt='Complété']

#champ régime
${champ-regime}     xpath://div[@kdescription='Régime']//div//div//div/select
${status_complete_regime}      xpath://div[@kdescription='Régime']//div//div/img[@class='apiStatusImage' and @alt='Complété']

#champ collège
${champ_college}        xpath://div[@kdescription='Collège']//div//div//div/select
${status_complete_college}      xpath://div[@kdescription='Collège']//div//div/img[@class='apiStatusImage' and @alt='Complété']

#champ effectif du collège à couvrir
${champ_effectif_college}       xpath://div[@kdescription='Effectif du collège à couvrir']//div//div//div/input
${status_complete_effectif_college}      xpath://div[@kdescription='Effectif du collège à couvrir']//div//div/img[@class='apiStatusImage' and @alt='Complété']

#champ structure tarificataire
${champ_structure_tarificataire}        xpath://div[@kdescription='Structure tarifaire']//div//div//div/select
${status_complete_structure_tarificataire}      xpath://div[@kdescription='Structure tarifaire']//div//div/img[@alt='Complété']
#champ type de cotisation
${champ_type_cotisation}        xpath://div[@kdescription='Type de cotisations']//div//div//div/select
${status_complete_type_cotisation}      xpath://div[@kdescription='Type de cotisations']//div//div/img[@class='apiStatusImage' and @alt='Complété']

#champ type de cotisation pour l'offre Vins et spiritueux santé
${champ_type_cotisation_Vins}        xpath://div[@kdescription='Type de cotisation']//div//div//div//div//div/select
${status_complete_type_cotisation_Vins}      xpath://div[@kdescription='Type de cotisation']//div//div//div/img[@class='apiStatusImage' and @alt='Complété']

#champ tableau cotisation par salarie assuré 
${valeur_cotisation}    xpath://*/text()[normalize-space(.)='Zen 200']/parent::*
${status_complete_tableau_cotisation}     xpath://div[@kdescription='Tableau des cotisations par salarié assuré']//div//div/img[@class='apiStatusImage' and @alt='Complété']


#champ date effet contrat
${champ_date_effet}       xpath://div[contains(@kdescription,"date")]//div//div//div/select
${champ_date_effet1}      xpath://div[contains(@kdescription,'effet')]//div//select
${status_complete_date_effet_tarificataire}      xpath://div[contains(@kdescription,"effet")]//div//div/img[@class='apiStatusImage' and @alt='Complété']

#tableau de cotisations mensuelles pour l'ensemble de l' effectif assuré
${status_complete_cotisation_mensuelle}     xpath://div[@kdescription="Tableau des cotisations mensuelles pour l’ensemble de l’effectif assuré"]//div//div/img[@class='apiStatusImage' and @alt='Complété']

#tableau de cotisation
${status_complete_cotisation}       xpath://div[@kdescription="Tableau de cotisations"]//div//div/img[@class='apiStatusImage' and @alt='Complété']

#champ Entreprise relevant de l’Accord collectif national des Coopératives Agricoles et Industries Agroalimentaires
${champ_entreprise_accord_collectif}        xpath://div[contains(@kdescription,"Entreprise relevant de l’Accord collectif national des Coopératives Agricoles et Industries Agroalimentaires")]//div//div//div/select
${status_complete_entreprise_accord_collectif}      xpath://div[contains(@kdescription,"Entreprise relevant de l’Accord collectif national des Coopératives Agricoles et Industries Agroalimentaires")]//div//div/img[@class='apiStatusImage' and @alt='Complété']


#champ Entreprise relevant de la Convention Collective Nationale de 1952
${champ_Entreprise relevant de la Convention Collective Nationale de 1952}     xpath://div[@kdescription='Entreprise relevant de la Convention Collective Nationale de 1952 ?']//div//div//div/select
${status_complete_type_Entreprise relevant de la Convention Collective Nationale de 1952}      xpath://div[contains(@kdescription,"Entreprise relevant de la Convention Collective Nationale de 1952 ?")]//div//div/img[@class='apiStatusImage' and @alt='Complété']

#champ De quelle fédération relève l’entreprise ?
${champ_De quelle fédération relève l’entreprise}     xpath://div[@kdescription='De quelle fédération relève l’entreprise ?']//div//div//div/select
${status_complete_type_De quelle fédération relève l’entreprise}      xpath://div[contains(@kdescription,"De quelle fédération relève l’entreprise ?")]//div//div/img[@class='apiStatusImage' and @alt='Complété']

#champ Quelle est la spécialisation de l’entreprise ?
${champ_Quelle est la spécialisation de l’entreprise ?}     xpath://div[@kdescription='Quelle est la spécialisation de l’entreprise ?']//div//div//div/select
${status_complete_type_Quelle est la spécialisation de l’entreprise ?}      xpath://div[contains(@kdescription,"Quelle est la spécialisation de l’entreprise ?")]//div//div/img[@class='apiStatusImage' and @alt='Complété']

#champ Effectif à assurer
${champ_effectif_a_assurer}       xpath://div[@kdescription='Effectif à assurer']//div//div//div/input
${status_complete_effectif_a_assurer}      xpath://div[@kdescription='Effectif à assurer']//div//div/img[@class='apiStatusImage' and @alt='Complété']

# champ Masse Salariale TA
${champ_Masse Salariale TA}     xpath://div[@kdescription='Masse Salariale TA']//div//div//div/input
${status_complete_Masse Salariale TA}    xpath://div[@kdescription='Masse Salariale TA']//div//div/img[@class='apiStatusImage' and @alt='Complété']

#champ Masse Salariale TB
${champ_Masse Salariale TB}     xpath://div[@kdescription='Masse Salariale TB']//div//div//div/input
${status_complete_Masse Salariale TB}    xpath://div[@kdescription='Masse Salariale TB']//div//div/img[@class='apiStatusImage' and @alt='Complété']

#champ Masse Salariale TC
${champ_Masse Salariale TC}     xpath://div[@kdescription='Masse Salariale TC']//div//div//div/input
${status_complete_Masse Salariale TC}    xpath://div[@kdescription='Masse Salariale TC']//div//div/img[@class='apiStatusImage' and @alt='Complété']

#champ Secteur de l'activité
${champ_Secteur_activite}   xpath://div[@kdescription='Secteur d’activité']//div//div//div/select
${status_complete_Secteur_activite}     xpath://div[@kdescription='Secteur d’activité']//div//div/img[@class='apiStatusImage' and @alt='Complété']

#champ Niveau de garantie obligatoire
${champ_niveau_garantie_obligatoire}    xpath://div[@kdescription='Niveau de garantie obligatoire']//div//div//div/select
${status_complete_niveau_garantie_obligatoire}      xpath://div[@kdescription='Niveau de garantie obligatoire']//div//div/img[@class='apiStatusImage' and @alt='Complété']

#champ Choix de garantie
${champ_choix_garantie}    xpath://div[@kdescription='Choix de la garantie']//div//div//div/select
${status_complete_choix_garantie}      xpath://div[@kdescription='Choix de la garantie']//div//div/img[@class='apiStatusImage' and @alt='Complété']

#champ 1ère valeur du supplément du taux conventionnel
${champ_1er_supplement_taux_cenventionnel}  xpath://tr[@class='line line0']//td[contains(@class,'column1')]//input

#champ 2ème valeur du supplément du taux conventionnel
${champ_2eme_supplement_taux_cenventionnel}  xpath://tr[@class='line line1']//td[contains(@class,'column1')]//input

#champ 3ème valeur du supplément du taux conventionnel
${champ_3eme_supplement_taux_cenventionnel}  xpath://tr[@class='line line2']//td[contains(@class,'column1')]//input

#champ Entreprise relevant de la CCN
${champ_entreprise_CCN}     xpath://div[@kdescription='L’entreprise relève de la CCN distribution et location de matériels agricoles, de travaux publics, de bâtiment, de manutention, de motoculture de plaisance et activités connexes, dite SDLM :']//div//div//div/select
${status_complete_entreprise_CCN}   xpath://div[contains(@kdescription,"L’entreprise relève de la CCN distribution et location de matériels agricoles, de travaux publics, de bâtiment, de manutention, de motoculture de plaisance et activités connexes, dite SDLM :")]//div//div/img[@class='apiStatusImage' and @alt='Complété']

#champ autres messages
&{champ_autres_messages}    xpath://td[text()='Il n’est pas possible de proposer cette offre aux entreprises ne relevant pas de la CCN Maintenance, Distribution et Location de Matériels.']

#champ L’entreprise relève de la CCN des vins, cidres, spiritueux, sirops, jus de fruit et liqueurs de France ?
${champ_entreprise_CCN des vins}    xpath://div[@kdescription='L’entreprise relève de la CCN des vins, cidres, spiritueux, sirops, jus de fruit et liqueurs de France ?']//div//div//div/select
${status_complete_entreprise_CCN des vins}   xpath://div[contains(@kdescription,"L’entreprise relève de la CCN des vins, cidres, spiritueux, sirops, jus de fruit et liqueurs de France ?")]//div//div/img[@class='apiStatusImage' and @alt='Complété']

#champ Niveau de garantie souhaité
${champ_niveau_garantie_souhaite}   xpath://div[@kdescription='Niveau de garantie souhaité']//div//div//div/select
${status_complete_niveau_garantie_souhaite}   xpath://div[contains(@kdescription,"Niveau de garantie souhaité")]//div//div/img[@class='apiStatusImage' and @alt='Complété']

#garantie obligatoire
${champ_garantie_santé}     xpath://div[@kdescription='Tableau de Cotisation']//tbody//tr[2]//td[1]


#champ L’entreprise relève de la CCN vins, cidres, spiritueux, sirops, jus de fruit et liqueurs de France
${champ_entreprise_CCN des vins_prévoyance}    xpath://div[@kdescription='L’entreprise relève de la CCN vins, cidres, spiritueux, sirops, jus de fruit et liqueurs de France']//div//div//div/select
${status_complete_entreprise_CCN des vins_prévoyance}   xpath://div[contains(@kdescription,"L’entreprise relève de la CCN vins, cidres, spiritueux, sirops, jus de fruit et liqueurs de France")]//div//div/img[@class='apiStatusImage' and @alt='Complété']

#cellule Nombre de salariés
${cellule_nombre_salaries}  xpath://div[@kdescription='Effectif et masse salariale de l’ensemble du personnel']//table[@class='tableRight']//tbody//tr[2]//td[2]//input

#cellule Masse salariale annuelle brute TA
${cellule_Masse salariale annuelle brute TA}    xpath://div[@kdescription='Effectif et masse salariale de l’ensemble du personnel']//table[@class='tableRight']//tbody//tr[2]//td[3]//input

#cellule Masse salariale annuelle brute TB
${cellule_Masse salariale annuelle brute TB}    xpath://div[@kdescription='Effectif et masse salariale de l’ensemble du personnel']//table[@class='tableRight']//tbody//tr[2]//td[4]//input

#cellule Nombre de salariés non cadre
${cellule_Nombre_salaries_NonCadre}        xpath://*[@class = 'collapsedView' and @id = 'collapsedtile89']//*[@type = 'text' and @selector = 'selector']
#cellule Masse salariale annuelle brute TA Non cadre
${cellule_Masse salariale annuelle brute TA_NonCadre}        xpath://*[@type = 'text' and @class = 'monetary' and @selector = 'selector' and @id = 'tile160_input']
${status_complete_Masse Salariale TA_NonCadre}        xpath://div[@fbtype = 'selector']/img[@alt ='Complété']
#cellule Masse salariale annuelle brute TA cadre
${cellule_Masse salariale annuelle brute TA_Cadre}        xpath://*[@type = 'text' and @selector = 'selector' and @onchange = concat('setValueSelectorDirty(' , "'" , 'cpe22' , "'" , ');')]
${status_complete_Masse Salariale TA_Cadre}                    xpath:(//img[contains(@src,'https://qualif-tarificateur.groupagrica.com/cameleonUI/theme/configuratorTouchAgrica/images/menu/statusCompleted.png')])[12]

#cellule Nombre de salariés cadre
${cellule_Nombre_salaries_Cadre}    xpath://*[@type = 'text' and @selector = 'selector' and @onchange = concat('setValueSelectorDirty(' , "'" , 'cpe21' , "'" , ');')]
#bouton suivant
${btn_suivant}      xpath://img[@title='Etape suivante']

#bouton Enregistrer
${btn_enregistrer}      xpath://img[@title='Valider la proposition']

#Tarificateur Centres équestres Santé
#champ Entreprise relevant de la CCN
${champ_entreprise_CCN_centres_santé}     xpath://div[@kdescription='Entreprise relevant de la Convention Collective Nationale du personnel non cadre des centres équestres']//div//div//div/select
#cellule Nombre effectif non cadre
${cellule_Nombre_effectif_NonCadre}        xpath://input[@type = 'text' and @selector = 'selector']

#Tarificateur Centres équestres Prévoyance
#champ Entreprise relevant de la CCN
${champ_entreprise_CCN_centres_prévoyance}     xpath://div[@kdescription='Entreprise relevant de la Convention Collective Nationale du Personnel non cadre des centres équestres']//div//div//div/select
#cellule Nombre effectif non cadre
${cellule_Nombre_effectif_NonCadre_prévoyance}        xpath://div[@kdescription='Effectif non cadre à assurer']//input
#cellule masse salariale
${cellule_masse_salariale_prévoyance}        xpath://div[@kdescription='Masse salariale annuelle non cadre (TA + TB)']//input


#Tarificateur ACCORD TAM ET CADRES DU PAYSAGE
#champ Entreprise relevant de l'accord TAM
${champ_entreprise_accord_tam}     xpath://div[@kdescription="Entreprise relevant de l\'\Accord TAM et Cadres du Paysage"]//div//div//div/select
#cellule Nombre de salariés_cadre
${cellule_Nombre_salaries_cadre_TAM}        xpath://div[@id="tile199"]//tr[@class="line line0"]//td[contains(@class,"column1")]//input
#cellule Masse salariale TA de salariés_cadre
${cellule_masse_TA_salaries_cadre}        xpath://div[@id="tile199"]//tr[@class="line line0"]//td[contains(@class,"column2")]//input
#cellule Masse salariale TB de salariés_cadre
${cellule_masse_TB_salaries_cadre}        xpath://div[@id="tile199"]//tr[@class="line line0"]//td[contains(@class,"column3")]//input
#cellule Masse salariale TC de salariés_cadre
${cellule_masse_TC_salaries_cadre}        xpath://div[@id="tile199"]//tr[@class="line line0"]//td[contains(@class,"column4")]//input
#cellule Nombre de salariés_TAM
${cellule_Nombre_salaries_TAM}        xpath://div[@id="tile551"]//tr[@class="line line0"]//td[contains(@class,"column1")]//input
#cellule Masse salariale TA de salariés_TAM
${cellule_masse_TA_salaries_TAM}        xpath://div[@id="tile551"]//tr[@class="line line0"]//td[contains(@class,"column2")]//input
#cellule Masse salariale TB de salariés_TAM
${cellule_masse_TB_salaries_TAM}        xpath://div[@id="tile551"]//tr[@class="line line0"]//td[contains(@class,"column3")]//input


#Tarificateur ACCORD NATIONAL DE LA COOPERATION AGRIGOLE ET DES INDUSTRIE
#champ Entreprise relevant de l'accord collectif national
${champ_entreprise_accord_collectif}     xpath://div[@kdescription="Entreprise relevant de l\’\Accord collectif national des Coopératives Agricoles et Industries Agroalimentaires"]//div//div//div/select
${champ_type_cotisations}     xpath://div[@kdescription="Type de cotisations"]//div//div//div/select
${champ_type_structure_tarifaire}     xpath://div[@kdescription="Structure tarifaire"]//div//div//div/select

#Tarificateur Indemnité Licenciement Inaptitude professionnelle
#champ Entreprise relevant de l'ILIP
${champ_entreprise_ILIP_prof}     xpath://div[@kdescription='Entreprise couverte au titre du risque incapacité temporaire d’origine professionnelle']//div//div//div/select
#champ type contrat de prévoyance
${champ_type_contrat_prevoyance}     xpath://div[@kdescription="Contrat Prévoyance actuel"]//div//div//div/select
#cellule Nombre salariés non cadres
${cellule_nombre_salaries_nonCadres}        xpath://div[@kdescription="Nombre de salariés non cadres"]//input
#cellule Masse salariale annuelle
${cellule_masse_salariale_ILIP}        xpath://div[@kdescription="Masse salariale annuelle moyenne des salariés non cadres"]//input
#Ligne_tableau plafond
${ligne_tab_plafond}        xpath://div[@id="tile206"]//tr[2]


#Tarificateur ACCORD NATIONAL DE LA PRODUCTION AGRICOLE – SANTÉ
#champ accord
${champ_entreprise_accord_entreprise}     xpath://div[@kdescription="De quel accord l\’entreprise relève-t-elle ?"]//div//div//div/select
#cellule Nombre salariés à couvrir
${cellule_nbr_salaries_a_couvrir}        xpath://input[@id = "tile180_input" and @selector = "selector"]

#Tarificateur SDLM Santé
#champ Entreprise relevant de la CCN
${champ_entreprise_CCN_SDLM_santé}     xpath://div[@kdescription="L\’entreprise relève de la CCN distribution et location de matériels agricoles, de travaux publics, de bâtiment, de manutention, de motoculture de plaisance et activités connexes, dite SDLM :"]//div//div//div/select
#champ type cotisations
${champ_type_cotisations_SDLM_santé}     xpath://div[@kdescription="Type de cotisations"]//div//div//div/select
#cellule effectif à assurer
${cellule_nombre_effectif_SDLM_santé_}        xpath://div[@kdescription="Effectif à assurer"]//input
#cellule niveau de garantie
${champ_niveau_garantie_SDLM_santé}        xpath://div[@kdescription="Niveau de garantie Souhaitée"]//div//div//div/select
#cellule status
${status_complete_nbr_effectif}      xpath://div[@kdescription='Effectif à assurer']//div//div/img[@class='apiStatusImage' and @alt='Complété']

#Tarificateur CCN des entreprises du Paysage Ouvriers et Employés
#champ Entreprise relevant de la CCN
${champ_entreprise_CCN_entreprise_ouvriers}     xpath://div[@kdescription='Entreprise relevant de la CCN des Entreprises du Paysage Ouvriers et Employés']//div//div//div/select
#cellule nbr salariés
${cellule_nbr_salaries_CCN_entreprise_ouvriers}        xpath://tr[@class='line line0']//td[contains(@class,'column1')]//input
#cellule masse salariale T1+T2
${cellule_masse_salariale_CCN_entreprise_ouvriers}        xpath://tr[@class='line line0']//td[contains(@class,'column2')]//input
#cellule status tableau
${status_complete_tab_CCN_entreprise_ouvriers}      xpath://div[@kdescription='Tableau de cotisations']//div//div/img[@class='apiStatusImage' and @alt='Complété']

#Tarificateur RÉGIME D’ADHÉSION
#champ question chambre d'agriculture
${champ_chambre_agriculture}     xpath://div[@kdescription="L’entreprise est-elle une chambre d’agriculture ?"]//div//div//div/select
#champ nbr de salariés
${champ_nbr_salaries_reg_adhesion}  xpath://tr[@class='line line0']//td[contains(@class,'column0')]//input
#champ masse salariale TA
${champ_masse_salariale_TA_reg_adhesion}  xpath://tr[@class='line line0']//td[contains(@class,'column1')]//input
#champ masse salariale TB
${champ_masse_salariale_TB_reg_adhesion}  xpath://tr[@class='line line0']//td[contains(@class,'column2')]//input
#champ masse salariale TC
${champ_masse_salariale_TC_reg_adhesion}  xpath://tr[@class='line line0']//td[contains(@class,'column3')]//input

#Tarificateur PER CPCEA - SUPPLÉMENT DE TAUX
#champ type collège à assurer
${champ_type_college_assurer_per_cpcea}     xpath://div[@kdescription="Collège à assurer"]//div//div//div/select
#champ type accord/convention
${champ_type_accord_convention_per_cpcea}     xpath://div[@kdescription="Accord / Convention"]//div//div//div/select
#cellule effectif à assurer
${champ_effectif_per_cpcea}        xpath://div[@kdescription="Effectif à assurer"]//input
#cellule masse annuelle TA
${champ_masse_TA_per_cpcea}        xpath://div[@kdescription="Masse salariale annuelle TA"]//input
#cellule masse annuelle TB
${champ_masse_TB_per_cpcea}        xpath://div[@kdescription="Masse salariale annuelle TB"]//input
#cellule masse annuelle TC
${champ_masse_TC_per_cpcea}        xpath://div[@kdescription="Masse salariale annuelle TC"]//input
#cellule masse annuelle TC Sup
${champ_masse_TC_Sup_per_cpcea}        xpath://div[@kdescription="Masse salariale annuelle TC Sup"]//input
#champ cellule tableau taux de retraite
${cellule_tab_per_cpcea}  xpath://tr[@class='line line0']//td[contains(@class,'column0')]//input
#cellule status tableau
${status_complete_tab_per_cpcea}      xpath://div[@kdescription='Tableau de cotisations']//div//div[@id='tile14_0_selector']/img[@class='apiStatusImage' and @alt='Complété']


** Keywords ***

#keywords communs aux  offres
Sélectionner le niveau de garantie que l'entreprise souhaite apporter à ses salariés
    [Arguments]     ${niveau_garantie}
    Select From List By Label    ${champ_niveau_garantie}   ${niveau_garantie}
#    Wait Until Page Contains Element        ${status_complete_niveau_garantie}

Sélectionner le type de cotisation
    [Arguments]     ${type_cotisations}
    Select From List By Label    ${champ_type_cotisation}   ${type_cotisations}
    Wait Until Page Contains Element        ${status_complete_type_cotisation}
Sélectionner la cotisation par salarie assuré dans le tableau  
    Click Element    ${valeur_cotisation}
    Wait Until Page Contains Element    ${status_complete_tableau_cotisation}



Vérifier si la valeur du niveau de garantie est correcte
    [Arguments]     ${niveau_garantie}
    ${label_niveau_garantie}        Set Variable        xpath://tr[@kdescription='Niveau de garantie que l’entreprise souhaite apporter à ses salariés']//td[2]//div//div[@class='cellText']//div[@class='text']
    ${texte}        Get Text    ${label_niveau_garantie}
    Should Be Equal As Strings    ${texte}    ${niveau_garantie}

Sélectionner le régime
    [Arguments]     ${regime}
    Select From List By Label       ${champ-regime}     ${regime}
    Wait Until Page Contains Element    ${status_complete_regime}

Vérifier si la valeur du régime est correcte
    [Arguments]     ${regime}
    ${label_regime}       Set Variable        xpath://tr[@kdescription='Régime']//td[2]//div//div[@class='cellText']//div[@class='text']
    ${texte}        Get Text     ${label_regime}
    Should Be Equal As Strings    ${texte}    ${regime}

Verifier la date d'effet de contrat
    [Arguments]     ${date_effet_contrat}
    ${option_champ}     Set Variable        xpath://option[normalize-space()='${date_effet_contrat}']
    #Click Element    ${champ_date_effet}
    #Click Element    ${option_champ}
    Wait Until Page Contains Element    ${status_complete_date_effet_tarificataire}


Vérifier si la valeur de la date d'effet de contrat est correcte
    [Arguments]     ${date_effet_contrat}
    ${label_date_effet_contrat}       Set Variable        xpath://tr[contains(@kdescription,'effet')]//td[2]//div//div[@class='cellText']//div[@class='text']
    ${texte}        Get Text     ${label_date_effet_contrat}
    Should Be Equal As Strings    ${texte}    ${date_effet_contrat}

Vérifier si l'offre sélectionnée est bien affichée dans la partie Résumé
    [Arguments]     ${offre_selectionnee}
    Wait Until Page Contains        Décomposition commerciale
    Page Should Contain    ${offre_selectionnee}

Cliquer sur le bouton Enregistrer
    Click Element    ${btn_enregistrer}

Cliquer sur le bouton Suivant
    Wait Until Element Is Enabled  ${btn_suivant}
    Sleep         5s
    Click Element    ${btn_suivant}



#keywords spécifiques à l'offre zénéa
Sélectionner la localisation
    [Arguments]     ${localisation}
    ${option_champ}     Set Variable        xpath://option[normalize-space()='${localisation}']
    Click Element    ${champ_localisation}
    Click Element    ${option_champ}
    Wait Until Page Contains Element    ${status_complete_localisation}


Sélectionner le collège
    [Arguments]     ${college}
    Select From List By Label     ${champ_college}      ${college}
    Wait Until Page Contains Element    ${status_complete_college}

Sélectionner l'effectif du collège à couvrir
    [Arguments]     ${effectif_college}
    Input Text      ${champ_effectif_college}       ${effectif_college}
    Press Keys    ${champ_effectif_college}      ENTER
    Wait Until Page Contains Element    ${status_complete_effectif_college}

Sélectionner la cotisation mensuelle pour l'ensemble de l'effectif assuré
    #[Arguments]     ${cotisation_mensuelle_a_selectionner}
    Wait Until Page Contains        Tableau des cotisations mensuelles pour l’ensemble de l’effectif assuré
    #problème rencontré avec le xpath //input[@value='wsTarificateur/SI/siUniforme100'] : element not interable
    #${offre_zen_100}        Set Variable        xpath://input[@value='wsTarificateur/SI/siUniforme100']
    ${offre_zen_100}        Set Variable        xpath://body[1]/div[6]/div[1]/div[1]/div[2]/div[2]/div[1]/div[2]/div[1]/div[1]/div[1]/div[1]/div[2]/div[1]/div[1]/div[1]/div[1]/div[2]/div[2]/div[1]/div[1]/div[1]/div[6]/div[1]/div[1]/div[2]/div[1]/div[1]/table[1]/tbody[1]/tr[3]/td[1]
    Click Element       ${offre_zen_100}
    Wait Until Page Contains Element    ${status_complete_cotisation_mensuelle}

Sélectionner la structure tarificataire
    [Arguments]     ${structure_tarificataire}
    ${option_champ}     Set Variable        xpath://option[normalize-space()='${structure_tarificataire}']
    Click Element    ${champ_structure_tarificataire}
    Click Element    ${option_champ}
    Wait Until Page Contains Element    ${status_complete_structure_tarificataire}


Vérifier si la valeur de la localisation est correcte
    [Arguments]     ${localisation}
    ${label_localisation}       Set Variable        xpath://tr[@kdescription='Localisation']//td[2]//div//div[@class='cellText']//div[@class='text']
    ${texte}        Get Text    ${label_localisation}
    Should Be Equal As Strings    ${texte}    ${localisation}


Vérifier si la valeur du collège est correcte
    [Arguments]     ${college}
    ${label_college}       Set Variable        xpath://tr[@kdescription='Collège']//td[2]//div//div[@class='cellText']//div[@class='text']
    ${texte}        Get Text     ${label_college}
    Should Be Equal As Strings    ${texte}    ${college}

Vérifier si la valeur de l'effectif du collège est correcte
    [Arguments]     ${effectif_college}
    ${label_effectif_college}       Set Variable        xpath://tr[@kdescription='Effectif du collège à couvrir']//td[2]//div//div[@class='cellText']//div[@class='text']
    ${texte}        Get Text     ${label_effectif_college}
    Should Be Equal As Strings    ${texte}    ${effectif_college}

Vérifier si la valeur de la cotisation mensuelle sélectionnée est correcte
    [Arguments]     ${cotisation_mensuelle_selectionnee}
    ${label_cotisation_mensuelle}       Set Variable        xpath://tr[@kdescription='Tableau des cotisations mensuelles pour l’ensemble de l’effectif assuré']//td[2]//div//div[@class='cellText']//div[@class='text']
    ${texte}        Get Text     ${label_cotisation_mensuelle}
    Should Be Equal As Strings    ${texte}    ${cotisation_mensuelle_selectionnee}

Vérifier si la valeur de la structure tarificataire est correcte
    [Arguments]     ${structure_tarificataire}
    ${label_structure_tarificataire}       Set Variable        xpath://tr[@kdescription='Structure tarifaire']//td[2]//div//div[@class='cellText']//div[@class='text']
    ${texte}        Get Text     ${label_structure_tarificataire}
    Should Be Equal As Strings    ${texte}    ${structure_tarificataire}

#keywords spécifiques à l'offre famille rurale

Vérifier si le commentaire en dessous du champ niveau garantie est dévalidé
    ${label_commentaire}    Set Variable        xpath://div[contains(@kdescription,'supplémentaire')]//div[@class='off']
    Wait Until Page Contains Element        ${label_commentaire}

Sélectionner l'adhésion
    [Arguments]     ${adhesion}
    ${option_champ}     Set Variable        xpath://option[normalize-space()='${adhesion}']
    Click Element    ${champ_adhesion}
    #Vérifier si le commentaire en dessous du champ niveau garantie est dévalidé
    Click Element    ${option_champ}
    Wait Until Page Contains Element        ${status_complete_adhesion}
Vérifier si la valeur de l'adhésion est correcte
    [Arguments]     ${adhesion}
    ${label_adhésion}       Set Variable        xpath://tr[@kdescription='Adhésion']//td[2]//div//div[@class='cellText']//div[@class='text']
    ${texte}        Get Text    ${label_adhésion}
    Should Be Equal As Strings    ${texte}    ${adhesion}

Renseigner le salaire brut de l'ensemble du personnel
    [Arguments]     ${salaire}
    Input Text    ${champ_salaire}       ${salaire}
    Press Keys    ${champ_salaire}      ENTER
    Wait Until Page Contains Element        ${status_complete_salaire}

Vérifier si le salaire brut de l'ensemble du personnel est correct
    [Arguments]     ${salaire}
    ${label_salaire}        Set Variable    xpath://tr[@kdescription='Salaire annuel brut ensemble du personnel']//td[2]//div//div[@class='cellText']//div[@class='text']
    ${texte}        Get Text    ${label_salaire}
    Should Be Equal As Strings    ${texte}    ${salaire}

Renseigner l'effectif du personnel
    [Arguments]     ${effectif_personnel}
    Input Text    ${champ_effectif_personnel}       ${effectif_personnel}
    Press Keys    ${champ_effectif_personnel}      ENTER
    Wait Until Page Contains Element        ${status_complete_effectif_personnel}

Vérifier si l'effectif du personnel est correct
    [Arguments]     ${effectif_personnel}
    ${label_effectif_personnel}        Set Variable    xpath://tr[@kdescription='Effectif ensemble du personnel']//td[2]//div//div[@class='cellText']//div[@class='text']
    ${texte}        Get Text    ${label_effectif_personnel}
    Should Be Equal As Strings    ${texte}    ${effectif_personnel}

#keywords spécifiques à l'offre ANPAD

Renseigner si l'entreprise relève de l’Accord collectif national des Coopératives Agricoles et Industries Agroalimentaires
    [Arguments]     ${reponse}
    ${option_champ}     Set Variable        xpath://option[normalize-space()='${reponse}']
    Click Element    ${champ_entreprise_accord_collectif}
    Click Element    ${option_champ}
    Wait Until Page Contains Element        ${status_complete_entreprise_accord_collectif}

Renseigner le type de cotisation
    [Arguments]     ${type_cotisation}
    ${option_champ}     Set Variable        xpath://option[normalize-space()='${type_cotisation}']
    Click Element    ${champ_type_cotisation}
    Click Element    ${option_champ}
    Wait Until Page Contains Element        ${status_complete_type_cotisation}

Renseigner le type de cotisation pour offre Vins 
    [Arguments]     ${type_cotisation}
    ${option_champ}     Set Variable        xpath://option[normalize-space()='${type_cotisation}']
    Click Element    ${champ_type_cotisation_Vins}
    Click Element    ${option_champ}
    Wait Until Page Contains Element        ${status_complete_type_cotisation_Vins}

Sélectionner la garantie souhaitee
    Wait Until Page Contains    Tableau de cotisations
    ${garantie_socle}       Set Variable        xpath:/html[1]/body[1]/div[6]/div[1]/div[1]/div[2]/div[2]/div[1]/div[2]/div[1]/div[1]/div[1]/div[1]/div[2]/div[1]/div[1]/div[1]/div[1]/div[2]/div[2]/div[1]/div[1]/div[1]/div[5]/div[1]/div[1]/div[2]/div[1]/div[1]/table[1]/tbody[1]/tr[3]
#    Click Element       ${garantie_socle}
#    Wait Until Page Contains Element    ${status_complete_cotisation}

Vérifier si la réponse à la question "l'entreprise relève de l’Accord collectif national des Coopératives Agricoles et Industries Agroalimentaires" est correcte
    [Arguments]     ${reponse}
    ${label_effectif_personnel}        Set Variable    xpath://tr[@kdescription='Entreprise relevant de l’Accord collectif national des Coopératives Agricoles et Industries Agroalimentaires']//td[2]//div//div[@class='cellText']//div[@class='text']
    ${texte}        Get Text    ${label_effectif_personnel}
    Should Be Equal As Strings    ${texte}    ${reponse}

Vérifier si le type de cotisation est correct
    [Arguments]     ${type_cotisation}
    ${label_type_cotisation}        Set Variable       xpath://tr[@kdescription='Type de cotisations' or @kdescription='Type de cotisation']//td[2]//div//div[@class='cellText']//div[@class='text']
    ${texte}        Get Text    ${label_type_cotisation}
    Should Be Equal As Strings    ${texte}    ${type_cotisation}

Vérifier si la valeur de la cotisation sélectionnée est correcte
    [Arguments]     ${cotisation_selectionnee}
    ${label_cotisation}       Set Variable        xpath://tr[@kdescription='Tableau des cotisations']//td[2]//div//div[@class='cellText']//div[@class='text']
    ${texte}        Get Text     ${label_cotisation}
    Should Be Equal As Strings    ${texte}    ${cotisation_selectionnee}

#keywords spécifiques à l'offre CCN52

Sélectionner l'entreprise relevant de la Convention Collective Nationale de 1952
    [Arguments]     ${valeur_champ_entreprise_CCN52}
    ${option_champ}     Set Variable        xpath://option[normalize-space()='${valeur_champ_entreprise_CCN52}']
    Click Element    ${champ_Entreprise relevant de la Convention Collective Nationale de 1952}
    Click Element    ${option_champ}
    Wait Until Page Contains Element        ${status_complete_type_Entreprise relevant de la Convention Collective Nationale de 1952}

Vérifier si la valeur du champ entreprise relevant de la Convention Collective Nationale de 1952
    [Arguments]     ${reponse}
    ${label_entreprise_CCN52}        Set Variable    xpath://tr[@kdescription='Entreprise relevant de la Convention Collective Nationale de 1952 ?']//td[2]//div//div[@class='cellText']//div[@class='text']
    ${texte}        Get Text    ${label_entreprise_CCN52}
    Should Be Equal As Strings    ${texte}    ${reponse}


Sélectionner la fédération qui relève l’entreprise
    [Arguments]     ${valeur_champ_federation}
    ${option_champ}     Set Variable        xpath://option[normalize-space()='${valeur_champ_federation}']
    Click Element    ${champ_De quelle fédération relève l’entreprise}
    Click Element    ${option_champ}
    Wait Until Page Contains Element        ${status_complete_type_De quelle fédération relève l’entreprise}

Vérifier si la fédération qui relève l’entreprise est correcte
    [Arguments]     ${reponse}
    ${label_federation}        Set Variable    xpath://tr[@kdescription='De quelle fédération relève l’entreprise ?']//td[2]//div//div[@class='cellText']//div[@class='text']
    ${texte}        Get Text    ${label_federation}
    Should Be Equal As Strings    ${texte}    ${reponse}


Sélectionner la spécialisation de l'entreprise
    [Arguments]     ${valeur_champ_specialisation}
    ${option_champ}     Set Variable        xpath://option[normalize-space()='${valeur_champ_specialisation}']
    Click Element    ${champ_Quelle est la spécialisation de l’entreprise ?}
    Click Element    ${option_champ}
    Wait Until Page Contains Element        ${status_complete_type_Quelle est la spécialisation de l’entreprise ?}

Vérifier si la valeur de la spécialisation de l'entreprise est correcte
    [Arguments]     ${reponse}
    ${label_specialisation}        Set Variable    xpath://tr[@kdescription='Quelle est la spécialisation de l’entreprise ?']//td[2]//div//div[@class='cellText']//div[@class='text']
    ${texte}        Get Text    ${label_specialisation}
    Should Be Equal As Strings    ${texte}    ${reponse}

Renseigner l'effectif à assurer
    [Arguments]      ${valeur_champ_effectif_a_assurer}
    Input Text    ${champ_effectif_a_assurer}       ${valeur_champ_effectif_a_assurer}
    Press Keys    ${champ_effectif_a_assurer}      ENTER
    Wait Until Page Contains Element         ${status_complete_effectif_a_assurer}


Vérifier si l'effectif à assurer est correct
    [Arguments]     ${reponse}
    ${label_effectif_a_assurer}        Set Variable    xpath://tr[@kdescription='Effectif à assurer']//td[2]//div//div[@class='cellText']//div[@class='text']
    ${texte}        Get Text    ${label_effectif_a_assurer}
    Should Be Equal As Strings    ${texte}    ${reponse}

Renseigner la masse salariale TA
    [Arguments]     ${valeur_champ_masse_salariale_TA}
    Input Text    ${champ_Masse Salariale TA}       ${valeur_champ_masse_salariale_TA}
    Press Keys    ${champ_Masse Salariale TA}      ENTER
    Wait Until Page Contains Element         ${status_complete_Masse Salariale TA}

Vérifier si la masse salariale TA est correcte
    [Arguments]     ${reponse}
    ${label_masse_salariale_TA}        Set Variable    xpath://tr[@kdescription='Masse Salariale TA']//td[2]//div//div[@class='cellText']//div[@class='text']
    ${texte}        Get Text    ${label_masse_salariale_TA}
    Should Be Equal As Strings    ${texte}    ${reponse}


Renseigner la masse salariale TB
    [Arguments]     ${valeur_champ_masse_salariale_TB}
    Input Text    ${champ_Masse Salariale TB}       ${valeur_champ_masse_salariale_TB}
    Press Keys    ${champ_Masse Salariale TB}      ENTER
    Wait Until Page Contains Element         ${status_complete_Masse Salariale TB}


Vérifier si la masse salariale TB est correcte
    [Arguments]     ${reponse}
    ${label_masse_salariale_TB}        Set Variable    xpath://tr[@kdescription='Masse Salariale TB']//td[2]//div//div[@class='cellText']//div[@class='text']
    ${texte}        Get Text    ${label_masse_salariale_TB}
    Should Be Equal As Strings    ${texte}    ${reponse}

Renseigner la masse salariale TC
    [Arguments]     ${valeur_champ_masse_salariale_TC}
    Input Text    ${champ_Masse Salariale TC}       ${valeur_champ_masse_salariale_TC}
    Press Keys    ${champ_Masse Salariale TC}      ENTER
    Wait Until Page Contains Element         ${status_complete_Masse Salariale TC}


Vérifier si la masse salariale TC est correcte
    [Arguments]     ${reponse}
    ${label_masse_salariale_TC}        Set Variable    xpath://tr[@kdescription='Masse Salariale TC']//td[2]//div//div[@class='cellText']//div[@class='text']
    ${texte}        Get Text    ${label_masse_salariale_TC}
    Should Be Equal As Strings    ${texte}    ${reponse}



#keywords spécifiques à l'offre PER CPCEA non cadre

Sélectionner le secteur d'activité
    [Arguments]     ${valeur_secteur_activite}
    ${option_champ}     Set Variable        xpath://option[normalize-space()='${valeur_secteur_activite}']
    Click Element    ${champ_Secteur_activite}
    Click Element    ${option_champ}
    Wait Until Page Contains Element        ${status_complete_Secteur_activite}

Vérifier si le secteur d'activité est correct
    [Arguments]     ${reponse}
    ${label_secteur_activite}        Set Variable    xpath://tr[contains(@kdescription,'Secteur')]//td[2]//div//div[@class='cellText']//div[@class='text']
    ${texte}        Get Text     ${label_secteur_activite}
    Should Be Equal As Strings    ${texte}    ${reponse}

Sélectionner le niveau de garantie obligatoire
    [Arguments]     ${valeur_niveau_garantie}
    ${option_champ}     Set Variable        xpath://option[normalize-space()='${valeur_niveau_garantie}']
    Click Element    ${champ_niveau_garantie_obligatoire}
    Click Element    ${option_champ}
    Wait Until Page Contains Element        ${status_complete_niveau_garantie_obligatoire}

Vérifier si le niveau de garantie obligatoire est correct
    [Arguments]     ${reponse}
    ${label_niveau_garantie_obligatoire}        Set Variable    xpath://tr[@kdescription='Niveau de garantie obligatoire']//td[2]//div//div[@class='cellText']//div[@class='text']
    ${texte}        Get Text     ${label_niveau_garantie_obligatoire}
    Should Be Equal As Strings    ${texte}    ${reponse}

Sélectionner le choix du garantie
    [Arguments]     ${valeur_choix_garantie}
    ${option_champ}     Set Variable        xpath://option[normalize-space()='${valeur_choix_garantie}']
    Click Element    ${champ_choix_garantie}
    Click Element    ${option_champ}
    Wait Until Page Contains Element        ${status_complete_choix_garantie}

Vérifier si le choix de garantie est correct
    [Arguments]     ${reponse}
    ${label_choix_garantie}        Set Variable    xpath://tr[@kdescription='Choix de la garantie']//td[2]//div//div[@class='cellText']//div[@class='text']
    ${texte}        Get Text     ${label_choix_garantie}
    Should Be Equal As Strings    ${texte}    ${reponse}

Renseigner Supplément du taux conventionnel (1re cellule)
    [Arguments]     ${valeur_1er_supplement_taux_cenventionnel}
    Input Text    ${champ_1er_supplement_taux_cenventionnel}        ${EMPTY}
    Input Text    ${champ_1er_supplement_taux_cenventionnel}        ${valeur_1er_supplement_taux_cenventionnel}
    Press Keys    ${champ_1er_supplement_taux_cenventionnel}      ENTER
    Sleep    2s

Renseigner Supplément du taux conventionnel (2eme cellule)
    [Arguments]     ${valeur_2eme_supplement_taux_cenventionnel}
    Input Text    ${champ_2eme_supplement_taux_cenventionnel}        ${EMPTY}
    Input Text    ${champ_2eme_supplement_taux_cenventionnel}        ${valeur_2eme_supplement_taux_cenventionnel}
    Press Keys    ${champ_2eme_supplement_taux_cenventionnel}      ENTER
    Sleep    2s

Renseigner Supplément du taux conventionnel (3eme cellule)
    [Arguments]     ${valeur_3eme_supplement_taux_cenventionnel}
    Input Text    ${champ_3eme_supplement_taux_cenventionnel}        ${EMPTY}
    Input Text    ${champ_3eme_supplement_taux_cenventionnel}        ${valeur_3eme_supplement_taux_cenventionnel}
    Press Keys    ${champ_3eme_supplement_taux_cenventionnel}      ENTER
    Sleep    2s

Sélectionner la date d'effet de contrat 1
    [Arguments]     ${date_effet_contrat}
    ${option_champ}     Set Variable        xpath://option[normalize-space()='${date_effet_contrat}']
    Click Element    ${champ_date_effet1}
    Click Element    ${option_champ}
    Wait Until Page Contains Element    ${status_complete_date_effet_tarificataire}




Verifier si le 1er supplement de taux cenventionnel est correct
    [Arguments]     ${reponse}
    ${label_1er_supplement_taux_cenventionnel}        Set Variable    xpath://tr[@kdescription='Supplément du taux conventionnel (par palier de 0,10%)'][1]//td[2]//div//div[@class='cellText']//div[@class='text']
    ${texte}        Get Text     ${label_1er_supplement_taux_cenventionnel}
    Should Be Equal As Strings    ${texte}    ${reponse}

Verifier si le 2eme supplement de taux cenventionnel est correct
    [Arguments]     ${reponse}
    ${label_2eme_supplement_taux_cenventionnel}        Set Variable    xpath://tr[@kdescription='Supplément du taux conventionnel (par palier de 0,10%)'][2]//td[2]//div//div[@class='cellText']//div[@class='text']
    ${texte}        Get Text     ${label_2eme_supplement_taux_cenventionnel}
    Should Be Equal As Strings    ${texte}    ${reponse}

Verifier si le 3eme supplement de taux cenventionnel est correct
    [Arguments]     ${reponse}
    ${label_3eme_supplement_taux_cenventionnel}        Set Variable    xpath://tr[@kdescription='Supplément du taux conventionnel (par palier de 0,10%)'][3]//td[2]//div//div[@class='cellText']//div[@class='text']
    ${texte}        Get Text     ${label_3eme_supplement_taux_cenventionnel}
    Should Be Equal As Strings    ${texte}    ${reponse}


#keywords spécifiques à l'offre Vins et spiritueux santé

Sélectionner la réponse à la question L’entreprise relève de la CCN des vins, cidres, spiritueux, sirops, jus de fruit et liqueurs de France ?
    [Arguments]     ${valeur_champ_entreprise_vins}
    ${option_champ}     Set Variable        xpath://option[normalize-space()='${valeur_champ_entreprise_vins}']
    Click Element    ${champ_entreprise_CCN des vins}
    Click Element    ${option_champ}
    Wait Until Page Contains Element        ${status_complete_entreprise_CCN des vins}


Vérifier si la valeur du champ entreprise relevant de la Convention Collective Nationale des vins a été bien sélectionnée
    [Arguments]     ${reponse}
    ${label_entreprise_CCN des vins}        Set Variable    xpath://tr[@kdescription='L’entreprise relève de la CCN des vins, cidres, spiritueux, sirops, jus de fruit et liqueurs de France ?']//td[2]//div//div[@class='cellText']//div[@class='text']
    ${texte}        Get Text    ${label_entreprise_CCN des vins}
    Should Be Equal As Strings    ${texte}    ${reponse}


Sélectionner le niveau de garantie souhaité
    [Arguments]     ${valeur_niveau_garantie_souhaité}
    ${option_champ}     Set Variable        xpath://option[normalize-space()='${valeur_niveau_garantie_souhaité}']
    Click Element    ${champ_niveau_garantie_souhaite}
    Click Element    ${option_champ}
    Wait Until Page Contains Element        ${status_complete_niveau_garantie_souhaite}


Vérifier si le niveau de garantie a été correctement renseigné
    [Arguments]     ${reponse}
    ${label_niveau_garantie}        Set Variable    xpath://tr[@kdescription='Niveau de garantie souhaité']//td[2]//div//div[@class='cellText']//div[@class='text']
    ${texte}        Get Text    ${label_niveau_garantie}
    Should Be Equal As Strings    ${texte}    ${reponse}

Sélectionner le type de garantie de santé souhaitée
    Wait Until Page Contains    Tableau de Cotisation
    Click Element    ${champ_garantie_santé}
    Sleep    5s

Vérifier si le type de garantie de santé a été bien sélectionnée
    [Arguments]     ${reponse}
    ${label_garantie_sante}        Set Variable    xpath://tr[@kdescription='Tableau de Cotisation']//td[2]//div//div[@class='cellText']//div[@class='text']
    ${texte}        Get Text    ${label_garantie_sante}
    Should Be Equal As Strings    ${texte}    ${reponse}

#keywords spécifiques à l'offre Vins et spiritueux prévoyance

Sélectionner la réponse à la question L’entreprise relève de la CCN des vins, cidres, spiritueux, sirops, jus de fruit et liqueurs de France (prévoyance)
    [Arguments]     ${valeur_champ_entreprise_vins}
    ${option_champ}     Set Variable        xpath://option[normalize-space()='${valeur_champ_entreprise_vins}']
    Click Element    ${champ_entreprise_CCN des vins_prévoyance}
    Click Element    ${option_champ}
    Wait Until Page Contains Element        ${status_complete_entreprise_CCN des vins_prévoyance}


Vérifier si la valeur du champ entreprise relevant de la Convention Collective Nationale des vins a été bien sélectionnée (prévoyance)
    [Arguments]     ${reponse}
    ${label_entreprise_CCN des vins}        Set Variable    xpath://tr[@kdescription='L’entreprise relève de la CCN vins, cidres, spiritueux, sirops, jus de fruit et liqueurs de France']//td[2]//div//div[@class='cellText']//div[@class='text']
    ${texte}        Get Text    ${label_entreprise_CCN des vins}
    Should Be Equal As Strings    ${texte}    ${reponse}

Renseigner le nombre de salariés
    [Arguments]     ${valeur_nombre_salariés}
    Input Text    ${cellule_nombre_salaries}    ${EMPTY}
    Input Text    ${cellule_nombre_salaries}  ${valeur_nombre_salariés}
    Press Keys    ${cellule_nombre_salaries}  ENTER

Renseigner la masse salariale annuelle brute TA
    [Arguments]     ${valeur_Masse salariale annuelle brute TA}
    Input Text    ${cellule_Masse salariale annuelle brute TA}      ${EMPTY}
    Input Text    ${cellule_Masse salariale annuelle brute TA}      ${valeur_Masse salariale annuelle brute TA}
    Press Keys    ${cellule_Masse salariale annuelle brute TA}      ENTER

Renseigner la masse salariale annuelle brute TB
    [Arguments]     ${valeur_Masse salariale annuelle brute TB}
    Input Text    ${cellule_Masse salariale annuelle brute TB}      ${EMPTY}
    Input Text    ${cellule_Masse salariale annuelle brute TB}      ${valeur_Masse salariale annuelle brute TB}
    Press Keys    ${cellule_Masse salariale annuelle brute TB}      ENTER

 Vérifier si le nombre de salariés a été correctement renseigné
    [Arguments]     ${reponse}
    ${label_entreprise_nombre_salariés}        Set Variable    xpath://tr[@kdescription='Nombre de salariés']//td[2]//div//div[@class='cellText']//div[@class='text']
    ${texte}        Get Text    ${label_entreprise_nombre_salariés}
    Should Be Equal As Strings    ${texte}    ${reponse}

 Vérifier si la masse salariale annuelle brute TA a été correctement renseignée
    [Arguments]     ${reponse}
    ${label_masse salariale annuelle brute TA}        Set Variable    xpath://tr[@kdescription='Masse salariale annuelle brute TA']//td[2]//div//div[@class='cellText']//div[@class='text']
    ${texte}        Get Text    ${label_masse salariale annuelle brute TA}
    Should Be Equal As Strings    ${texte}    ${reponse}
    Sleep    5s

 Vérifier si la masse salariale annuelle brute TB a été correctement renseignée
    [Arguments]     ${reponse}
    ${label_masse salariale annuelle brute TB}        Set Variable    xpath://tr[@kdescription='Masse salariale annuelle brute TB']//td[2]//div//div[@class='cellText']//div[@class='text']
    ${texte}        Get Text    ${label_masse salariale annuelle brute TB}
    Should Be Equal As Strings    ${texte}    ${reponse}

#keywords spécifiques à l'offre SDLM prévoyance

Sélectionner la réponse NON à la question l’entreprise relève de la CCN distribution et location de matériels agricoles, de travaux publics, de bâtiment, de manutention, de motoculture de plaisance et activités connexes, dite SDLM :
    [Arguments]     ${valeur_champ_entreprise_CCN}
    ${option_champ}     Set Variable        xpath://option[normalize-space()='${valeur_champ_entreprise_CCN}']
    Click Element    ${champ_entreprise_CCN}
    Click Element    ${option_champ}
    Wait Until Page Contains Element        ${status_complete_entreprise_CCN}

Sélectionner la réponse OUI à la question l’entreprise relève de la CCN distribution et location de matériels agricoles, de travaux publics, de bâtiment, de manutention, de motoculture de plaisance et activités connexes, dite SDLM :
    [Arguments]     ${valeur_champ_entreprise_CCN}
    ${option_champ}     Set Variable        xpath://option[normalize-space()='${valeur_champ_entreprise_CCN}']
    Click Element    ${champ_entreprise_CCN}
    Click Element    ${option_champ}
    Wait Until Page Contains Element        ${status_complete_entreprise_CCN}
Vérifier si la valeur du champ entreprise relevant de la CCN distribution et location de matériels agricoles, de travaux publics, de bâtiment, de manutention, de motoculture de plaisance et activités connexes, dite SDLM :
    [Arguments]     ${reponse}
    ${label_entreprise_CCN}        Set Variable    xpath://tr[@kdescription='L’entreprise relève de la CCN distribution et location de matériels agricoles, de travaux publics, de bâtiment, de manutention, de motoculture de plaisance et activités connexes, dite SDLM :']//td[2]//div//div[@class='cellText']//div[@class='text']
    ${texte}        Get Text    ${label_entreprise_CCN}
    Should Be Equal As Strings    ${texte}    ${reponse}

Vérifier la présence du message si la réponse est non
    Page Should Contain     L’entreprise relève de la CCN distribution et location de matériels agricoles, de travaux publics, de bâtiment, de manutention, de motoculture de plaisance et activités connexes, dite SDLM :


Renseigner l'effectif et masse salariale annuelle des salaris non cadres
     [Arguments]      ${valeur_champ_effectif_a_assurer}
    Input Text    ${cellule_Nombre_salaries_NonCadre}      ${valeur_champ_effectif_a_assurer}
    Press Keys    ${cellule_Nombre_salaries_NonCadre}      ENTER


Renseigner la masse salariale TA des salaries Non Cadres
    [Arguments]     ${valeur_champ_masse_salariale_TA}
   
    Input Text    ${cellule_Masse salariale annuelle brute TA_NonCadre}     ${EMPTY}
    Input Text    ${cellule_Masse salariale annuelle brute TA_NonCadre}     ${valeur_champ_masse_salariale_TA}
    Press Keys    ${cellule_Masse salariale annuelle brute TA_NonCadre}      ENTER
     Wait Until Page Contains Element         ${status_complete_Masse Salariale TA_NonCadre}

Renseigner l'effectif et masse salariale annuelle des salaris cadres
     [Arguments]      ${valeur_champ_effectif_a_assurer}
    Input Text    ${cellule_Nombre_salaries_Cadre}      ${valeur_champ_effectif_a_assurer}
    Press Keys    ${cellule_Nombre_salaries_Cadre}      ENTER


Renseigner la masse salariale TA des salaries Cadres
    [Arguments]     ${valeur_champ_masse_salariale_TA}
   
    Input Text    ${cellule_Masse salariale annuelle brute TA_Cadre}     ${EMPTY}
    Input Text    ${cellule_Masse salariale annuelle brute TA_Cadre}     ${valeur_champ_masse_salariale_TA}
    Press Keys    ${cellule_Masse salariale annuelle brute TA_Cadre}      ENTER
     Wait Until Page Contains Element         ${status_complete_Masse Salariale TA_Cadre}




#keywords spécifiques à l'offre Centres équestres Santé

Sélectionner la réponse NON à la question l’entreprise relève de la CCN du personnel non cadre des centres équestres
    [Arguments]     ${valeur_champ_entreprise_CCN_centres_santé}
    ${option_champ}     Set Variable        xpath://option[normalize-space()='${valeur_champ_entreprise_CCN_centres_santé}']
    Click Element    ${champ_entreprise_CCN_centres_santé}
    Click Element    ${option_champ}
#    Wait Until Page Contains Element        ${status_complete_entreprise_CCN}



Vérifier la présence du message si la réponse est non_équestres_santé
    Page Should Contain     Entreprise relevant de la Convention Collective Nationale du personnel non cadre des centres équestres

Sélectionner la réponse OUI à la question l’entreprise relève de la CCN du personnel non cadre des centres équestres
    [Arguments]     ${valeur_champ_entreprise_CCN_centres_santé}
    ${option_champ}     Set Variable        xpath://option[normalize-space()='${valeur_champ_entreprise_CCN_centres_santé}']
    Click Element    ${champ_entreprise_CCN_centres_santé}
    Click Element    ${option_champ}

Vérifier la valeur du champ entreprise relevant de la CCN du personnel non cadre des centres équestres
    [Arguments]     ${reponse}
    ${label_entreprise_CCN_centres_santé}        Set Variable    xpath://tr[@kdescription='Entreprise relevant de la Convention Collective Nationale du personnel non cadre des centres équestres']//td[2]//div//div[@class='cellText']//div[@class='text']
    ${texte}        Get Text    ${label_entreprise_CCN_centres_santé}
    Should Be Equal As Strings    ${texte}    ${reponse}



Renseigner l'effectif non cadre à assurer
     [Arguments]      ${valeur_champ_effectif_a_assurer}
    Input Text    ${cellule_Nombre_effectif_NonCadre}      ${valeur_champ_effectif_a_assurer}
    Press Keys    ${cellule_Nombre_effectif_NonCadre}      ENTER



#keywords spécifiques à l'offre Centres équestres Prévoyance

Sélectionner la réponse NON à la question l’entreprise relève de la CCN du personnel non cadre des centres équestres prévoyance
    [Arguments]     ${valeur_champ_entreprise_CCN_centres_prévoyance_NON}
    ${option_champ}     Set Variable        xpath://option[normalize-space()='${valeur_champ_entreprise_CCN_centres_prévoyance_NON}']
    Click Element    ${champ_entreprise_CCN_centres_prévoyance}
    Click Element    ${option_champ}

Vérifier la présence du message si la réponse est non_équestres_prévoyance
    Page Should Contain     Entreprise relevant de la Convention Collective Nationale du Personnel non cadre des centres équestres

Sélectionner la réponse OUI à la question l’entreprise relève de la CCN du personnel non cadre des centres équestres prévoyance
    [Arguments]     ${valeur_champ_entreprise_CCN_centres_prévoyance}
    ${option_champ}     Set Variable        xpath://option[normalize-space()='${valeur_champ_entreprise_CCN_centres_prévoyance}']
    Click Element    ${champ_entreprise_CCN_centres_prévoyance}
    Click Element    ${option_champ}

Vérifier la valeur du champ entreprise relevant de la CCN du personnel non cadre des centres équestres prévoyance
    [Arguments]     ${reponse}
    ${label_entreprise_CCN_centres_prévoyance}        Set Variable    xpath://tr[@kdescription='Entreprise relevant de la Convention Collective Nationale du Personnel non cadre des centres équestres']//td[2]//div//div[@class='cellText']//div[@class='text']
    ${texte}        Get Text    ${label_entreprise_CCN_centres_prévoyance}
    Should Be Equal As Strings    ${texte}    ${reponse}




Renseigner l'effectif non cadre à assurer prévoyance
     [Arguments]      ${valeur_champ_effectif_a_assurer}
    Input Text    ${cellule_Nombre_effectif_NonCadre_prévoyance}     ${valeur_champ_effectif_a_assurer}
    Press Keys    ${cellule_Nombre_effectif_NonCadre_prévoyance}      ENTER

Renseigner la masse salariale prévoyance
     [Arguments]      ${valeur_champ_masse_salariale}
    Input Text    ${cellule_masse_salariale_prévoyance}     ${valeur_champ_masse_salariale}
    Press Keys    ${cellule_masse_salariale_prévoyance}      ENTER



#keywords spécifiques à l'offre ACCORD TAM ET CADRES DU PAYSAGE

Sélectionner la réponse NON à la question entreprise relevant de l'accord TAM et Cadres du Paysage
    [Arguments]     ${valeur_champ_entreprise_cooperatives}
    ${option_champ}     Set Variable        xpath://option[normalize-space()='${valeur_champ_entreprise_cooperatives}']
    Click Element    ${champ_entreprise_accord_tam}
    Click Element    ${option_champ}


Vérifier la présence du message si la réponse TAM est non
    Page Should Contain     Il n’est pas possible de proposer cette offre


Vérifier si la valeur du champ NON entreprise relevant de l'accord TAM et Cadres du Paysage
    [Arguments]     ${reponse}
    ${label_entreprise_TAM}        Set Variable    xpath://tr[@kdescription="Entreprise relevant de l'Accord TAM et Cadres du Paysage"]//td[2]//div//div[@class="cellText"]//div[@class="text"]
    ${texte}        Get Text    ${label_entreprise_TAM}
    Should Be Equal As Strings    ${texte}    ${reponse}

Sélectionner la réponse OUI à la question entreprise relevant de l'accord TAM et Cadres du Paysage
    [Arguments]     ${valeur_champ_entreprise_TAM}
    ${option_champ}     Set Variable        xpath://option[normalize-space()='${valeur_champ_entreprise_TAM}']
    Click Element    ${champ_entreprise_accord_tam}
    Click Element    ${option_champ}

Vérifier si la valeur du champ OUI entreprise relevant de l'accord TAM et Cadres du Paysage
    [Arguments]     ${reponse}
    ${label_entreprise_TAM}        Set Variable    xpath://tr[@kdescription="Entreprise relevant de l'Accord TAM et Cadres du Paysage"]//td[2]//div//div[@class="cellText"]//div[@class="text"]
    ${texte}        Get Text    ${label_entreprise_TAM}
    Should Be Equal As Strings    ${texte}    ${reponse}
Sélectionner le niveau de garantie
    [Arguments]     ${niveau_garantie}
    Select From List By Label    ${champ_niveau_garantie}   ${niveau_garantie}

Vérifier la localisation TAM
    [Arguments]     ${localisation_TAM}
    ${label_localisation_TAM}       Set Variable        xpath://tr[contains(@kdescription,'Localisation')]//td[2]//div//div[@class='cellText']//div[@class='text']
    ${texte}        Get Text     ${label_localisation_TAM}
    Should Be Equal As Strings    ${texte}    ${localisation_TAM}
Renseigner le nombre de salariés_Cadre
    [Arguments]      ${valeur_champ_nbr_salariés_cadre}
    Input Text    ${cellule_Nombre_salaries_cadre_TAM}      ${valeur_champ_nbr_salariés_cadre}
    Press Keys    ${cellule_Nombre_salaries_cadre_TAM}     ENTER

Renseigner la masse salariale annuelle TA salariés_Cadre
    [Arguments]      ${valeur_champ_masse_TA_cadre}
    Input Text    ${cellule_masse_TA_salaries_cadre}      ${valeur_champ_masse_TA_cadre}
    Press Keys    ${cellule_masse_TA_salaries_cadre}      ENTER

Renseigner la masse salariale annuelle TB salariés_Cadre
    [Arguments]      ${valeur_champ_masse_TB_cadre}
    Input Text    ${cellule_masse_TB_salaries_cadre}      ${valeur_champ_masse_TB_cadre}
    Press Keys    ${cellule_masse_TB_salaries_cadre}     ENTER

Renseigner la masse salariale annuelle TC salariés_Cadre
    [Arguments]      ${valeur_champ_masse_TC_cadre}
    Input Text    ${cellule_masse_TC_salaries_cadre}      ${valeur_champ_masse_TC_cadre}
    Press Keys    ${cellule_masse_TC_salaries_cadre}    ENTER

Renseigner le nombre de salariés_TAM
    [Arguments]      ${valeur_champ_nbr_salariés_TAM}
    Input Text    ${cellule_Nombre_salaries_TAM}       ${valeur_champ_nbr_salariés_TAM}
    Press Keys    ${cellule_Nombre_salaries_TAM}    ENTER

Renseigner la masse salariale annuelle TA salariés_TAM
    [Arguments]      ${valeur_champ_masse_TA_TAM}
    Input Text    ${cellule_masse_TA_salaries_TAM}      ${valeur_champ_masse_TA_TAM}
    Press Keys    ${cellule_masse_TA_salaries_TAM}   ENTER

Renseigner la masse salariale annuelle TB salariés_TAM
    [Arguments]      ${valeur_champ_masse_TB_TAM}
    Input Text   ${cellule_masse_TB_salaries_TAM}      ${valeur_champ_masse_TB_TAM}
    Press Keys    ${cellule_masse_TB_salaries_TAM}   ENTER


#keywords spécifiques à l'offre ACCORD NATIONAL DE LA COOPERATION AGRIGOLE ET DES INDUSTRIES

Sélectionner la réponse NON à la question entreprise relevant de l'accord collectif national
    [Arguments]     ${valeur_champ_entreprise_accord_collectif}
    ${option_champ}     Set Variable        xpath://option[normalize-space()='${valeur_champ_entreprise_accord_collectif}']
    Click Element    ${champ_entreprise_accord_collectif}
    Click Element    ${option_champ}

Vérifier la présence du message si la réponse Accord collectif national est non
    Page Should Contain     Il n’est pas possible de proposer cette offre aux entreprises ne relevant pas de l’Accord.

Vérifier si la valeur du champ NON entreprise relevant de l'Accord collectif national
    [Arguments]     ${reponse}
    ${label_entreprise_accord_collectif}        Set Variable    xpath://tr[@kdescription='Entreprise relevant de l\’Accord collectif national des Coopératives Agricoles et Industries Agroalimentaires']//td[2]//div//div[@class='cellText']//div[@class='text']
    ${texte}        Get Text    ${label_entreprise_accord_collectif}
    Should Be Equal As Strings    ${texte}    ${reponse}

Sélectionner la réponse OUI à la question entreprise relevant de l'Accord collectif national
    [Arguments]     ${valeur_champ_entreprise_accord_collectif}
    ${option_champ}     Set Variable        xpath://option[normalize-space()='${valeur_champ_entreprise_accord_collectif}']
    Click Element    ${champ_entreprise_accord_collectif}
    Click Element    ${option_champ}

Vérifier si la valeur du champ OUI entreprise relevant de l'Accord collectif national
    [Arguments]     ${reponse}
    ${label_entreprise_TAM}        Set Variable    xpath://tr[@kdescription='Entreprise relevant de l\’Accord collectif national des Coopératives Agricoles et Industries Agroalimentaires']//td[2]//div//div[@class='cellText']//div[@class='text']
    ${texte}        Get Text    ${label_entreprise_TAM}
    Should Be Equal As Strings    ${texte}    ${reponse}

Vérifier si la valeur du champ Régime est par défaut
    [Arguments]     ${reponse}
    ${label_entreprise_TAM}        Set Variable    xpath://div[@kdescription='Régime']//div//div//div/select
    ${texte}        Get Text    ${label_entreprise_TAM}
    Should Be Equal As Strings    ${texte}    ${reponse}
Sélectionner le niveau de garantie de l'Accord collectif national
    [Arguments]     ${niveau_garantie}
    ${option_champ}     Set Variable        xpath://option[normalize-space()='${niveau_garantie}']
    Click Element    ${champ_niveau_garantie}
    Click Element    ${option_champ}
Sélectionner le type de cotisations de l'Accord collectif national
    [Arguments]     ${valeur_champ_type_cotisation}
    ${option_champ}     Set Variable        xpath://option[normalize-space()='${valeur_champ_type_cotisation}']
    Click Element    ${champ_type_cotisations}
    Click Element    ${option_champ}

Sélectionner le type de structure tarifaire de l'Accord collectif national
    [Arguments]     ${valeur_champ_type_structure}
    ${option_champ}     Set Variable        xpath://option[normalize-space()='${valeur_champ_type_structure}']
    Click Element    ${champ_type_structure_tarifaire}
    Click Element    ${option_champ}


#keywords spécifiques à l'offre Indemnité Licenciement Inaptitude professionnelle

Sélectionner la réponse NON à la question l’entreprise couverte au titre du risque incapacité temporaire d’origine professionnelle
    [Arguments]     ${valeur_champ_entreprise_ILIP}
    ${option_champ}     Set Variable        xpath://option[normalize-space()='${valeur_champ_entreprise_ILIP}']
    Click Element    ${champ_entreprise_ILIP_prof}
    Click Element    ${option_champ}

Vérifier la présence du message si la réponse est non_ILIP
    Page Should Contain     Seules les entreprises couvertes par une garantie incapacité temporaire de travail d’origine professionnelle peuvent souscrire à l’offre Indemnités de Licenciement pour Inaptitude Professionnelle.

Vérifier si la valeur du champ est NON ILIP
    [Arguments]     ${reponse}
    ${label_entreprise_ILIP}        Set Variable    xpath://tr[@kdescription="Entreprise couverte au titre du risque incapacité temporaire d’origine professionnelle"]//td[2]//div//div[@class="cellText"]//div[@class="text"]
    ${texte}        Get Text    ${label_entreprise_ILIP}
    Should Be Equal As Strings    ${texte}    ${reponse}

Sélectionner la réponse OUI à la question l’entreprise couverte au titre du risque incapacité temporaire d’origine professionnelle
    [Arguments]     ${valeur_champ_entreprise_ILIP}
    ${option_champ}     Set Variable        xpath://option[normalize-space()='${valeur_champ_entreprise_ILIP}']
    Click Element    ${champ_entreprise_ILIP_prof}
    Click Element    ${option_champ}

Vérifier la valeur du champ entreprise est OUI ILIP
    [Arguments]     ${reponse}
    ${label_entreprise_ILIP}        Set Variable    xpath://tr[@kdescription="Entreprise couverte au titre du risque incapacité temporaire d’origine professionnelle"]//td[2]//div//div[@class="cellText"]//div[@class="text"]
    ${texte}        Get Text    ${label_entreprise_ILIP}
    Should Be Equal As Strings    ${texte}    ${reponse}

Sélectionner le type de contrat prévoyance actuel
    [Arguments]     ${valeur_champ_type_contrat}
    ${option_champ}     Set Variable        xpath://option[normalize-space()='${valeur_champ_type_contrat}']
    Click Element    ${champ_type_contrat_prevoyance}
    Click Element    ${option_champ}


Renseigner le nombre de salariés non cadres
    [Arguments]      ${valeur_champ_nbr_salaries}
    Input Text    ${cellule_nombre_salaries_nonCadres}       ${valeur_champ_nbr_salaries}
    Press Keys    ${cellule_nombre_salaries_nonCadres}       ENTER

Renseigner la masse salariale annuelle
    [Arguments]      ${valeur_champ_masse_salariale}
    Input Text    ${cellule_masse_salariale_ILIP}       ${valeur_champ_masse_salariale}
    Press Keys    ${cellule_masse_salariale_ILIP}        ENTER

Sélectionner le plafond
    Click Element    ${ligne_tab_plafond}



#keywords spécifiques à l'offre ACCORD NATIONAL DE LA PRODUCTION AGRICOLE – SANTÉ

Sélectionner la réponse "d’un accord spécifique hors Accord " à la question accord
    [Arguments]     ${valeur_champ_accord}
    ${option_champ}     Set Variable        xpath://option[normalize-space()='${valeur_champ_accord}']
    Click Element    ${champ_entreprise_accord_entreprise}
    Click Element    ${option_champ}

Vérifier si la valeur du champ est d'un accord spécifique hors Accord
    [Arguments]     ${reponse}
    ${label_entreprise_SANTE}        Set Variable    xpath://tr[@kdescription='De quel accord l\’entreprise relève-t-elle ?']//td[2]//div//div[@class='cellText']//div[@class='text']
    ${texte}        Get Text    ${label_entreprise_SANTE}
    Should Be Equal As Strings    ${texte}    ${reponse}

Sélectionner la réponse "accord national de la production " à la question accord
    [Arguments]     ${valeur_champ_entreprise_SANTE}
    ${option_champ}     Set Variable        xpath://option[normalize-space()='${valeur_champ_entreprise_SANTE}']
    Click Element    ${champ_entreprise_accord_entreprise}
    Click Element    ${option_champ}

Vérifier si la valeur du champ est accord national de la production
    [Arguments]     ${reponse}
    ${label_entreprise_SANTE}        Set Variable    xpath://tr[@kdescription='De quel accord l\’entreprise relève-t-elle ?']//td[2]//div//div[@class='cellText']//div[@class='text']
    ${texte}        Get Text    ${label_entreprise_SANTE}
    Should Be Equal As Strings    ${texte}    ${reponse}

Vérifier la valeur de localisation
    [Arguments]     ${localisation}
    ${label_localisation}       Set Variable        xpath://tr[contains(@kdescription,"Localisation")]//td[2]//div//div[@class='cellText']//div[@class='text']
    ${texte}        Get Text     ${label_localisation}
    Should Be Equal As Strings    ${texte}    ${localisation}

Renseigner le nombre de salariés à couvrir
    [Arguments]      ${valeur_champ_nbr_salariés_a_couvrir}
    Input Text    ${cellule_nbr_salaries_a_couvrir}          ${valeur_champ_nbr_salariés_a_couvrir}

Sélectionner le type de structure tarifaire de l'Accord national de la production agricole
    [Arguments]     ${valeur_champ_type_structure}
    ${option_champ}     Set Variable        xpath://option[normalize-space()='${valeur_champ_type_structure}']
    Click Element    ${champ_type_structure_tarifaire}
    Click Element    ${option_champ}


#keywords spécifiques à l'offre SDLM_Santé

Sélectionner la réponse NON à la question l’entreprise relève de la CCN distribution et locations de matériels
    [Arguments]     ${valeur_champ_entreprise_CCN_SDLM_santé}
    ${option_champ}     Set Variable        xpath://option[normalize-space()='${valeur_champ_entreprise_CCN_SDLM_santé}']
    Click Element    ${champ_entreprise_CCN_SDLM_santé}
    Click Element    ${option_champ}

Vérifier la présence du message si la réponse est non_SDLM_santé
    Page Should Contain     Il n’est pas possible de proposer cette offre.

Vérifier si la valeur du champ est NON SDLM_santé
    [Arguments]     ${reponse}
    ${label_entreprise_SDLM_santé}        Set Variable    xpath://tr[@kdescription="L\’entreprise relève de la CCN distribution et location de matériels agricoles, de travaux publics, de bâtiment, de manutention, de motoculture de plaisance et activités connexes, dite SDLM :"]//td[2]//div//div[@class="cellText"]//div[@class="text"]
    ${texte}        Get Text    ${label_entreprise_SDLM_santé}
    Should Be Equal As Strings    ${texte}    ${reponse}

Sélectionner la réponse OUI à la question l’entreprise relève de la CCN distribution et locations de matériels
    [Arguments]     ${valeur_champ_entreprise_SDLM_santé}
    ${option_champ}     Set Variable        xpath://option[normalize-space()='${valeur_champ_entreprise_SDLM_santé}']
    Click Element    ${champ_entreprise_CCN_SDLM_santé}
    Click Element    ${option_champ}

Vérifier la valeur du champ entreprise est OUI SDLM_santé
    [Arguments]     ${reponse}
    ${label_entreprise_SDLM_santé}        Set Variable    xpath://tr[@kdescription="L\’entreprise relève de la CCN distribution et location de matériels agricoles, de travaux publics, de bâtiment, de manutention, de motoculture de plaisance et activités connexes, dite SDLM :"]//td[2]//div//div[@class="cellText"]//div[@class="text"]
    ${texte}        Get Text    ${label_entreprise_SDLM_santé}
    Should Be Equal As Strings    ${texte}    ${reponse}

Sélectionner le type de cotisations

    [Arguments]     ${type_cotisations_SDLM_santé}
    ${option_champ}     Set Variable        xpath://option[normalize-space()='${type_cotisations_SDLM_santé}']
    Click Element    ${champ_type_cotisations_SDLM_santé}
    Click Element    ${option_champ}

Renseigner l'effectif à assurer_SDLM_Santé
    [Arguments]      ${valeur_effectif_SDLM_santé}
    Input Text    ${cellule_nombre_effectif_SDLM_santé_}       ${valeur_effectif_SDLM_santé}
    Press Keys    ${cellule_nombre_effectif_SDLM_santé_}        ENTER
    Wait Until Page Contains Element        ${status_complete_nbr_effectif}

Sélectionner le niveau de garantie SDLM_santé
    [Arguments]     ${niveau_garantie_SDLM_santé}
    ${option_champ}     Set Variable        xpath://option[normalize-space()='${niveau_garantie_SDLM_santé}']
    Click Element    ${champ_niveau_garantie_SDLM_santé}
    Click Element    ${option_champ}

#keywords spécifiques à l'offre CCN des entreprises du Paysage Ouvriers et Employés

Sélectionner la réponse NON à la question l’entreprise relève de la CCN des entreprises du Paysage Ouvriers et Employés
    [Arguments]     ${valeur_champ_entreprise_CCN_entreprises_NON}
    ${option_champ}     Set Variable        xpath://option[normalize-space()='${valeur_champ_entreprise_CCN_entreprises_NON}']
    Click Element    ${champ_entreprise_CCN_entreprise_ouvriers}
    Click Element    ${option_champ}
Vérifier la présence du message si la réponse est non_CCN des entreprises du Paysage Ouvriers et Employés
    Page Should Contain     Il n’est pas possible de proposer cette offre.

Sélectionner la réponse OUI à la question l’entreprise relève de la CCN des entreprises du Paysage Ouvriers et Employés
    [Arguments]     ${valeur_champ_entreprise_CCN_entreprises_OUI}
    ${option_champ}     Set Variable        xpath://option[normalize-space()='${valeur_champ_entreprise_CCN_entreprises_OUI}']
    Click Element    ${champ_entreprise_CCN_entreprise_ouvriers}
    Click Element    ${option_champ}

Vérifier la valeur du champ entreprise relevant de la CCN des entreprises du Paysage Ouvriers et Employés
    [Arguments]     ${reponse}
    ${label_entreprise_CCN_entreprises}        Set Variable    xpath://tr[@kdescription='Entreprise relevant de la CCN des Entreprises du Paysage Ouvriers et Employés']//td[2]//div//div[@class='cellText']//div[@class='text']
    ${texte}        Get Text     ${label_entreprise_CCN_entreprises}
    Should Be Equal As Strings    ${texte}    ${reponse}

Vérifier le niveau de garantie CCN des entreprises du Paysage Ouvriers et Employés
    [Arguments]     ${champ_niveau_garantie_CNN}
    ${label_niveau_garantie_CNN}       Set Variable        xpath://tr[contains(@kdescription,"Niveau de garantie que l\'entreprise souhaite apporter à ses salariés")]//td[2]//div//div[@class='cellText']//div[@class='text']
    ${texte}        Get Text     ${label_niveau_garantie_CNN}
    Should Be Equal As Strings    ${texte}    ${champ_niveau_garantie_CNN}

Vérifier la localisation CCN des entreprises du Paysage Ouvriers et Employés
    [Arguments]     ${champ_localisation_CNN}
    ${label_localisation_CNN}       Set Variable        xpath://tr[contains(@kdescription,"Localisation")]//td[2]//div//div[@class='cellText']//div[@class='text']
    ${texte}        Get Text     ${label_localisation_CNN}
    Should Be Equal As Strings    ${texte}    ${champ_localisation_CNN}

Renseigner le nombre de salariés CCN des entreprises du Paysage Ouvriers et Employés
    [Arguments]      ${valeur_champ_nbr_salarie_CNN}
    Input Text    ${cellule_nbr_salaries_CCN_entreprise_ouvriers}    ${valeur_champ_nbr_salarie_CNN}
    Press Keys    ${cellule_nbr_salaries_CCN_entreprise_ouvriers}      ENTER

Renseigner la masse salariale T1+T2 CCN des entreprises du Paysage Ouvriers et Employés
     [Arguments]      ${valeur_champ_masse_salariale_CNN}
    Input Text    ${cellule_masse_salariale_CCN_entreprise_ouvriers}    ${valeur_champ_masse_salariale_CNN}
    Press Keys    ${cellule_masse_salariale_CCN_entreprise_ouvriers}      ENTER
    Wait Until Page Contains Element        ${status_complete_tab_CCN_entreprise_ouvriers}

#keywords spécifiques à l'offre RÉGIME D’ADHÉSION
Vérifier le niveau de garantie_régime_adhésion
    [Arguments]     ${niveau_garantie_régime_adhésion}
    ${label_niveau_garantie}       Set Variable        xpath://tr[contains(@kdescription,'Quel Niveau de garantie souhaité ?')]//td[2]//div//div[@class='cellText']//div[@class='text']
    ${texte}        Get Text     ${label_niveau_garantie}
    Should Be Equal As Strings    ${texte}    ${niveau_garantie_régime_adhésion}

 Vérifier le régime de base régime_adhésion
    [Arguments]     ${regime_base_régime_adhésion}
    ${label_regime_base}       Set Variable        xpath://tr[contains(@kdescription,'Quel est le régime de base ?')]//td[2]//div//div[@class='cellText']//div[@class='text']
    ${texte}        Get Text     ${label_regime_base}
    Should Be Equal As Strings    ${texte}    ${regime_base_régime_adhésion}

 Sélectionner la réponse NON à la question chambre d'agriculture régime_adhésion
    [Arguments]     ${valeur_champ_chambre_agri}
    ${option_champ}     Set Variable        xpath://option[normalize-space()='${valeur_champ_chambre_agri}']
    Click Element    ${champ_chambre_agriculture}
    Click Element    ${option_champ}

Vérifier si la valeur du champ chambre agruculture est NON régime_adhésion
    [Arguments]     ${reponse}
    ${label_chambre_agri}        Set Variable    xpath://tr[@kdescription="L’entreprise est-elle une chambre d’agriculture ?"]//td[2]//div//div[@class="cellText"]//div[@class="text"]
    ${texte}        Get Text    ${label_chambre_agri}
    Should Be Equal As Strings    ${texte}    ${reponse}

Renseigner le nbr de salariés régime_adhésion
    [Arguments]     ${nbr_salaries_regime_adhesion}
    Input Text    ${champ_nbr_salaries_reg_adhesion}       ${EMPTY}
    Input Text    ${champ_nbr_salaries_reg_adhesion}        ${nbr_salaries_regime_adhesion}
    Press Keys   ${champ_nbr_salaries_reg_adhesion}      ENTER
    Sleep    2s

Renseigner la masse salariale TA régime_adhésion
    [Arguments]     ${masse_salariale_TA_regime_adhesion}
    Input Text    ${champ_masse_salariale_TA_reg_adhesion}      ${EMPTY}
    Input Text    ${champ_masse_salariale_TA_reg_adhesion}        ${masse_salariale_TA_regime_adhesion}
    Press Keys   ${champ_masse_salariale_TA_reg_adhesion}      ENTER
    Sleep    2s

Renseigner la masse salariale TB régime_adhésion
    [Arguments]     ${masse_salariale_TB_regime_adhesion}
    Input Text    ${champ_masse_salariale_TB_reg_adhesion}      ${EMPTY}
    Input Text    ${champ_masse_salariale_TB_reg_adhesion}         ${masse_salariale_TB_regime_adhesion}
    Press Keys   ${champ_masse_salariale_TB_reg_adhesion}      ENTER
    Sleep    2s
Renseigner la masse salariale TC régime_adhésion
    [Arguments]     ${masse_salariale_TC_regime_adhesion}
    Input Text    ${champ_masse_salariale_TC_reg_adhesion}      ${EMPTY}
    Input Text    ${champ_masse_salariale_TC_reg_adhesion}         ${masse_salariale_TC_regime_adhesion}
    Press Keys   ${champ_masse_salariale_TC_reg_adhesion}      ENTER
    Sleep    2s


#keywords spécifiques à l'offre PER CPCEA - SUPPLÉMENT DE TAUX
Vérifier le niveau de garantie PER CPCEA - SUPPLÉMENT DE TAUX
    [Arguments]     ${niveau_garantie_per_supp_taux}
    ${label_niveau_garantie_per_cpcea}        Set Variable    xpath://tr[@kdescription="Niveau de garantie souhaité"]//td[2]//div//div[@class="cellText"]//div[@class="text"]
    ${texte}        Get Text     ${label_niveau_garantie_per_cpcea}
    Should Be Equal As Strings    ${texte}    ${niveau_garantie_per_supp_taux}

Sélectionner le collège à assurer PER CPCEA - SUPPLÉMENT DE TAUX
    [Arguments]     ${valeur_college_per_cpcea}
    ${option_champ}     Set Variable        xpath://option[normalize-space()='${valeur_college_per_cpcea}']
    Click Element    ${champ_type_college_assurer_per_cpcea}
    Click Element    ${option_champ}

Sélectionner l'accord PER CPCEA - SUPPLÉMENT DE TAUX
    [Arguments]     ${valeur_accord_per_cpcea}
    ${option_champ}     Set Variable        xpath://option[normalize-space()='${valeur_accord_per_cpcea}']
    Click Element    ${champ_type_accord_convention_per_cpcea}
    Click Element    ${option_champ}

Renseigner le nbr effectif à assurer PER CPCEA - SUPPLÉMENT DE TAUX
    [Arguments]     ${nbr_effectif_per_cpcea}
    Input Text    ${champ_effectif_per_cpcea}       ${EMPTY}
    Input Text    ${champ_effectif_per_cpcea}       ${nbr_effectif_per_cpcea}
    Press Keys   ${champ_effectif_per_cpcea}      ENTER
    Sleep    2s

Renseigner la masse annuelle TA PER CPCEA - SUPPLÉMENT DE TAUX
    [Arguments]     ${nbr_masse_TA_per_cpcea}
    Input Text    ${champ_masse_TA_per_cpcea}       ${EMPTY}
    Input Text    ${champ_masse_TA_per_cpcea}        ${nbr_masse_TA_per_cpcea}
    Press Keys   ${champ_masse_TA_per_cpcea}       ENTER
    Sleep    2s

Renseigner la masse annuelle TB PER CPCEA - SUPPLÉMENT DE TAUX
    [Arguments]     ${nbr_masse_TB_per_cpcea}
    Input Text    ${champ_masse_TB_per_cpcea}       ${EMPTY}
    Input Text    ${champ_masse_TB_per_cpcea}        ${nbr_masse_TB_per_cpcea}
    Press Keys   ${champ_masse_TB_per_cpcea}       ENTER
    Sleep    2s

Renseigner la masse annuelle TC PER CPCEA - SUPPLÉMENT DE TAUX
    [Arguments]     ${nbr_masse_TC_per_cpcea}
    Input Text    ${champ_masse_TC_per_cpcea}       ${EMPTY}
    Input Text    ${champ_masse_TC_per_cpcea}        ${nbr_masse_TC_per_cpcea}
    Press Keys   ${champ_masse_TC_per_cpcea}       ENTER
    Sleep    2s

Renseigner la masse annuelle TC Sup PER CPCEA - SUPPLÉMENT DE TAUX
    [Arguments]     ${nbr_masse_TC_sup_per_cpcea}
    Input Text    ${champ_masse_TC_Sup_per_cpcea}       ${EMPTY}
    Input Text    ${champ_masse_TC_Sup_per_cpcea}         ${nbr_masse_TC_sup_per_cpcea}
    Press Keys   ${champ_masse_TC_Sup_per_cpcea}       ENTER
    Sleep    2s
#    Wait Until Page Contains Element        ${status_complete_tab_per_cpcea}

Cliquer sur la cellule tab_taux PER CPCEA - SUPPLÉMENT DE TAUX
    Click Element    ${cellule_tab_per_cpcea}