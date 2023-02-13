*** Variables ***
#Variables communes
${valeur_champ_entreprise_NON}  NON
${valeur_champ_entreprise_OUI}  OUI
${valeur_champ_niveau_garantie}     Conforme aux obligations conventionnelles ou légales
#offre zenea
${valeur_champ_niveau_garantie_zenea}     Conforme aux obligations conventionnelles ou légales
${valeur_champ_niveau_garantie_famillerurale}      Renforcé, plus proche de ses attentes et de celles des salariés
${localisation}     Régime agricole - Alsace-Moselle
${adhesion}    Régime Familles Rurales
${regime}       Régime Agricole
${college}      Cadre
${effectif_college}      50
${valeur_champ_type_cotisation}     Couvrir le salarié et ses ayants droit à titre obligatoire
${structure_tarificataire}      Uniforme
${date_effet_contrat}       mars 2023
${date_effet_contrat_cpcea}       juillet 2021
${cotisation_mensuelle_selectionnee}        Zen 200
${offre_selectionnee_zenea}       Zen 200 - Uniforme

#offre famille rurale
${niveau_garantie_famillerurale}    Renforcé, plus proche de ses attentes et de celles des salariés
${adhesion}     Régime Familles Rurales
${salaire}  40 000
${effectif_personnel}   50
${offre_selectionnee_famillerurale}     Offre : Familles Rurales

#offre ANDPAD
${reponse}  OUI
${regime_ANPAD}     Régime agricole - Alsace-Moselle
${type_cotisation}      Couvrir le salarié et ses ayants droit à titre obligatoire
${cotisation_mensuelle}     Garantie socle
${offre_selectionnee_ANPAD}     Offre : Accord National de la Coopération Agricole et des Industries Agroalimentaires

#offre CCN52
${localisation_CCN52}     Alsace-Moselle
${valeur_champ_entreprise_CCN52}    Oui
${valeur_champ_federation}      Fédération Nationale du Paysage
${valeur_champ_specialisation}      POLYCULTURE
${valeur_champ_effectif_a_assurer}      550
${valeur_champ_masse_salariale_TA}  100
${valeur_champ_masse_salariale_TB}  20
${valeur_champ_masse_salariale_TC}  20
${offre_selectionnee_CCN52}     Offre : Convention Collective Nationale de 1952

#offre PER CPCEA non cadre
${valeur_secteur_activite}  entreprises et exploitations agricoles, ou CUMA (Production agricole)
${valeur_choix_garantie}        Taux conventionnel amélioré
${valeur_1eme_supplement_taux_cenventionnel}    0,1
${valeur_2eme_supplement_taux_cenventionnel}    0
${valeur_3eme_supplement_taux_cenventionnel}    0
${offre_selectionnee_PER CPCEA non cadre}     Offre : Plan d’Epargne Retraite - PER CPCEA non cadres

#offre Vins et spiritueux santé
${valeur_champ_entreprise_vins}    OUI
${regime_Vins_sante}    Régime agricole - Alsace-Moselle
${type_cotisation_vins_sante}   Couvrir le salarié et ses ayants droit à titre obligatoire
${niveau_garantie_vins_sante}   Garantie obligatoire
${offre_selectionnee_Vins_sante}    Offre : Vins et Spiritueux Santé

#offre Vins et spiritueux prévoyance
${valeur_champ_entreprise_vins_prevoyance}  OUI
${niveau_garantie_vins_prevoyance}  Conforme aux obligations conventionnelles ou légales
${valeur_nombre_salariés}   50
${valeur_Masse salariale annuelle brute TA}  30 000,00 €
${valeur_Masse salariale annuelle brute TB}  40 000,00 €
${offre_selectionnee_Vins_prevoyance}  Offre : Vins et Spiritueux Prévoyance

#offre SDLM prévoyance
${offre_selectionnee_SDLM}     Offre : SDLM Prévoyance


#offre Centres équestres santé
${valeur_champ_entreprise_CCN_centres_santé_NON}  Non
${valeur_champ_entreprise_CCN_centres_santé_OUI}  Oui
${valeur_champ_effectif_a_assurer_centres_santé}      550
${offre_selectionnee_centres_santé}     Offre : Centres équestres Santé


#offre Centres équestres prévoyance
${valeur_champ_effectif_a_assurer_centres_prévoyance}      550
${valeur_masse_salariale_centres_prévoyance}      500
${offre_selectionnee_centres_prévoyance}     Offre : Centres Equestres Prévoyance



#offre ACCORD TAM ET CADRES DU PAYSAGE
${localisation_TAM}     Hors Alsace-Moselle
${valeur_champ_salaries_cadre}      550
${valeur_champ_masse_TA_salaries_cadre}      100
${valeur_champ_masse_TB_salaries_cadre}      100
${valeur_champ_masse_TC_salaries_cadre}      100
${valeur_champ_salaries_TAM}      650
${valeur_champ_masse_TA_salaries_TAM}      200
${valeur_champ_masse_TB_salaries_TAM}      200
${offre_selectionnee_accord_TAM}     Offre : Accord TAM et Cadres du Paysage

#offre ACCORD NATIONAL DE LA COOPERATION AGRIGOLE ET DES INDUSTRIES
${regime_accord_national}       Régime agricole - Hors Alsace-Moselle
${type_cotisations_accord_national}       Couvrir le salarié et ses ayants droit à titre obligatoire
${type_structure_accord_national}       Uniforme
${offre_selectionnee_accord_national_cooperation}     Offre : Accord National de la Coopération Agricole et des Industries

#offre ILIP (Indemnité Licenciement Inaptitude professionnelle)
${type_contrat_prevoyance_actuel}       Accord national de la production agricole
${valeur_champ_nbr_salaries_ILIP}      550
${valeur_champ_masse_salariale_ILIP}      900
${valeur_plafond_ILIP}      Couverture de base Plafond de 10 000 €
${offre_selectionnee_ILIP}     Offre : Indemnités de Licenciement pour Inaptitude Professionnelle

#offre ACCORD NATIONAL DE LA PRODUCTION AGRICOLE – SANTÉ
${reponse_hors_accord_SANTE}        d’un accord spécifique hors Accord national de la production agricole
${reponse_accord_national_SANTE}        de l’accord national de la production agricole
${localisation_SANTE}        Hors Alsace-Moselle
${valeur_salaries_a_couvrir}      300
${type_structure_accord_SANTE}       Uniforme
${offre_selectionnee_accord_national_production_agricole}     Offre : Accord National Production Agricole – Santé

#offre SDLM_Santé
${type_cotisations_SDLM-santé}       Couvrir le salarié et ses ayants droit à titre obligatoire
${valeur_champ_effectif_SDLM_santé}      100
${offre_selectionnee_SDLM_santé}     Offre : SDLM Santé

#offre CCN des entreprises du Paysage Ouvriers et Employés
${champ_localisation_CNN_entreprises}       Hors Alsace-Moselle
${champ_nbr_salaries_CNN_entreprises}      100
${champ_masse_salariale_CNN_entreprises}      100
${offre_selectionnee_CNN_entreprises_ouvriers}     Offre : CCN des entreprises du Paysage Ouvriers et Employés

#offre RÉGIME D’ADHÉSION
${champ_regime_base}       Régime agricole
${champ_nbr_salaris_reg_adhesion}       100
${valeur_masse_salariale_TA_reg_adhesion}       1000
${valeur_masse_salariale_TB_reg_adhesion}       1000
${valeur_masse_salariale_TC_reg_adhesion}       1000
${offre_selectionnee_régime_adhésion}     Offre : Régime d'adhésion


#offre PER CPCEA - SUPPLÉMENT DE TAUX
${valeur_niveau_garantie_per_cpcea}       Renforcé, plus proche de mes attentes et de celles de mes salariés
${valeur_type_college_per_cpcea}       Cadres art 4
${valeur_type_accord_per_cpcea}       1 - Convention collective nationale de 1952
${valeur_effectif_assurer_per_cpcea}       100
${valeur_masse_TA_per_cpcea}       200
${valeur_masse_TB_per_cpcea}       300
${valeur_masse_TC_per_cpcea}       50
${valeur_masse_TC_Sup_per_cpcea}       250
${offre_selectionnee_per_cpcea_taux}     Offre : Plan d’Epargne Retraite CPCEA

