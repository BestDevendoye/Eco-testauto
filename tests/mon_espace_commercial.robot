*** Settings ***
Library     SeleniumLibrary
Library     OperatingSystem
Resource       scenarios/creation_devis_accord_national_de_la_production_agricole.robot
Resource       scenarios/creation_devis_offre_rurale.robot
Resource       scenarios/creation_devis_offre_zenea.robot

# initialisation du test (setup et teardown)
Resource        ../core/selenium_utils.robot
Resource    scenarios/CCN52.robot
Resource    scenarios/creation_devis_per_CPCEA_non_cadre.robot
Resource    scenarios/creation_devis_vins_spiritueux_prévoyance.robot
Resource    scenarios/creation_devis_vins_spiritueux_santé.robot
Resource    scenarios/creation_devis_SDLM_prévoyance.robot
Resource    scenarios/creation_devis_zenea_produits_du_sol.robot
Resource    scenarios/creation_devis_zenea_mareyeurs_expediteurs.robot
Resource    scenarios/creation_devis_centres_équestres_santé.robot
Resource    scenarios/creation_devis_centres_équestres_prévoyance.robot
Resource    scenarios/creation_devis_accord_national_cooperation_agricole_indusctries.robot
Resource    scenarios/creation_devis_accord_tam_cadres_paysage.robot
Resource    scenarios/creation_devis_ILIP.robot
Resource    scenarios/creation_devis_accord_national_prod_agricole_santé.robot
Resource    scenarios/creation_devis_SDLM_santé.robot
Resource    scenarios/creation_devis_CCN_entreprises_paysage_ouvriers_employés.robot
Resource    scenarios/creation_devis_régime_adhésion.robot
Resource    scenarios/creation_devis_per_CPCEA_supplément_taux.robot

Test Setup   Ouvrir le navigateur    ${url}   ${browser}
Test Teardown     Fermer le navigateur


*** Test Cases ***

Etape de connexion, réinitialisation du mot de passe
    Se connecter à Agrica Espace Co Sans Email     ${browser}
    Se connecter à Agrica Espace Co Avec Email     ${nom_utilisateur_Agrica}    ${browser}
    Se connecter à Agrica Espace Co Avec Email erroné    ${nom_utilisateur_Agrica_erroné}    ${motdepasse_Agrica}    ${browser}
    Se connecter à Agrica Espace Co Avec Password incorrect    ${nom_utilisateur_Agrica_test}    ${motdepasse_Agrica_incorrecte}
    Mot de passe oublié     ${nom_utilisateur_Agrica}    ${nom_utilisateur_Agrica_erroné}    ${browser}


Connexion en tant que commercial/assureur/admin/caisse regionale/Distributeur
    Connexion en tant que Distributeur
    Se deconnecter de Agrica
    #Connexion en tant que commercial
    #Se deconnecter de Agrica
    Connexion en tant que Credit Agricole
    Se deconnecter de Agrica
    Connexion en tant que Assureur
    Se deconnecter de Agrica
    Connexion en tant que Admin
    Se deconnecter de Agrica


Creation devis offre Zenea
    Connexion en tant que Distributeur
    Formulaire Devis-Accès-Offre Zenea
    Formulaire Devis-Entreprise-Offre Zenea
    Formulaire Devis-Signataires-Offre Zenea
    Formulaire Devis-Distributeur-Offre Zenea
    Tarificateur Zenéa
    Envoi de la proposition commerciale-Offre zenea

Creation zenea_produits_du_sol
    Connexion en tant que Distributeur_Produits_Sol
    Formulaire Devis-Accès-Offre Zenea_Produits_Sol
    Formulaire Devis-Entreprise-Offre Zenea_Produits_Sol
    Formulaire Devis-Signataires-Offre Zenea_Produits_Sol
    Formulaire Devis-Distributeur-Offre Zenea_Produits_Sol
    Tarificateur Zenéa_Produits_Sol
    Envoi de la proposition commerciale-Offre zenea_Produits_Sol

Creation zenea_mareyeurs_expediteurs
    Connexion en tant que Distributeur_Mareyeurs_Expediteurs
    Formulaire Devis-Accès-Offre Zenea_Mareyeurs_Expediteurs
    Formulaire Devis-Entreprise-Offre Zenea_Mareyeurs_Expediteurs
    Formulaire Devis-Signataires-Offre Zenea_Mareyeurs_Expediteurs
    Formulaire Devis-Distributeur-Offre Zenea_Mareyeurs_Expediteurs
    Tarificateur Zenéa_Mareyeurs_Expediteurs
    Envoi de la proposition commerciale-Offre zenea_Mareyeurs_Expediteurs




Creation devis offre Famille Rurale
   Connexion en tant que Distributeur
   Formulaire Devis-Accès-Offre Famille rurale
   Formulaire Devis-Entreprise-Offre Famille rurale
   Formulaire Devis-Signataires-Offre Famille rurale
   Formulaire Devis-Distributeur - Offre Famille rurale
   Tarificateur Famille Rurale
   Envoi de la proposition commerciale-Offre Famille rurale

Creation devis offre ANPAD
   Connexion en tant que Credit Agricole
   Formulaire Devis-Accès-Offre ANPAD
   Formulaire Devis-Entreprise-Offre ANPAD
   Formulaire Devis-Signataires-Offre ANPAD
   Formulaire Devis-Distributeur-Zenea-Offre ANPAD
   Tarificateur ANPAD
   Envoi de la proposition commerciale-Offre ANPAD

Creation devis offre CCN52
  Connexion en tant que Assureur
  Formulaire Devis-Accès-Offre CCN52
  Formulaire Devis-Entreprise-Offre CCN52
  Formulaire Devis-Signataires-Offre CCN52
  Formulaire Devis-Distributeur-Offre CCN52
  Tarificateur CCN52
  Envoi de la proposition commerciale-Offre CCN52

Creation devis offre PER CPCEA NON CADRES PROD / ETARF
  Connexion en tant que Assureur
  Formulaire Devis-Accès-Offre PER CPCEA non cadre PROD / ETARF
  Formulaire Devis-Entreprise-Offre PER CPCEA non cadre PROD / ETARF
  Formulaire Devis-Signataires-Offre PER CPCEA non cadre PROD / ETARF
  Formulaire Devis-Distributeur-Offre PER CPCEA non cadrePROD / ETARF
  Tarificateur PER CPCEA non cadre PROD / ETARF
  Envoi de la proposition commerciale-Offre PER CPCEA non cadre PROD / ETARF

Creation devis offre Vins et spiritueux santé
  Connexion en tant que Distributeur
  Formulaire Devis-Accès-Offre Vins et spiritueux santé
  Formulaire Devis-Entreprise-Offre Vins et spiritueux santé
  Formulaire Devis-Signataires-Offre Vins et spiritueux santé
  Formulaire Devis-Distributeur-Offre Vins et spiritueux santé
  Tarificateur Vins et spiritueux santé
  Envoi de la proposition commerciale-Offre Vins et spiritueux santé

Creation devis offre Vins et spiritueux prévoyance
  Connexion en tant que Distributeur
  Formulaire Devis-Accès-Offre Vins et spiritueux prévoyance
  Formulaire Devis-Entreprise-Offre Vins et spiritueux prévoyance
  Formulaire Devis-Signataires-Offre Vins et spiritueux prévoyance
  Formulaire Devis-Distributeur-Offre Vins et spiritueux prévoyance
  Tarificateur Vins et spiritueux prévoyance
  Envoi de la proposition commerciale-Offre Vins et spiritueux prévoyance

Creation devis offre SDLM prévoyance
  Connexion en tant que Distributeur
  Formulaire Devis-Accès-Offre SDLM prévoyance
  Formulaire Devis-Entreprise-Offre SDLM prévoyance
  Formulaire Devis-Signataires-Offre SDLM prévoyance
  Formulaire Devis-Distributeur-Offre SDLM prévoyance
  Tarificateur SDLM prévoyance
  Envoi de la proposition commerciale-Offre Vins et spiritueux prévoyance

Creation devis offre Centres équestres Santé
  Connexion en tant que distributeur Agrica équestres santé
  Formulaire Devis-Accès-Offre équestres santé
  Formulaire Devis-Entreprise-Offre équestres santé
  Formulaire Devis-Signataires-Offre équestres santé
  Formulaire Devis-Distributeur-Offre équestres santé
  Tarificateur équestres santé
  Envoi de la proposition commerciale-Offre équestres santé

Creation devis offre Centres équestres Prévoyance
  Connexion en tant que distributeur Agrica équestres prévoyance
  Formulaire Devis-Accès-Offre équestres prévoyance
  Formulaire Devis-Entreprise-Offre équestres prévoyance
  Formulaire Devis-Signataires-Offre équestres prévoyance
  Formulaire Devis-Distributeur-Offre équestres prévoyance
  Tarificateur équestres prévoyance
  Envoi de la proposition commerciale-Offre équestres prévoyance

Creation devis offre ACCORD NATIONAL DE LA COOPERATION AGRIGOLE ET DES INDUSTRIES
  Connexion en tant que distributeur Agrica ACCORD NATIONAL DE LA COOPERATION AGRIGOLE ET DES INDUSTRIES
  Formulaire Devis-Accès-Offre ACCORD NATIONAL DE LA COOPERATION AGRIGOLE ET DES INDUSTRIES
  Formulaire Devis-Entreprise-Offre ACCORD NATIONAL DE LA COOPERATION AGRIGOLE ET DES INDUSTRIES
  Formulaire Devis-Signataires-Offre ACCORD NATIONAL DE LA COOPERATION AGRIGOLE ET DES INDUSTRIES
  Formulaire Devis-Distributeur-Offre ACCORD NATIONAL DE LA COOPERATION AGRIGOLE ET DES INDUSTRIES
  Tarificateur ACCORD NATIONAL DE LA COOPERATION AGRIGOLE ET DES INDUSTRIES
  Envoi de la proposition commerciale-Offre Accord NATIONAL DE LA COOPERATION AGRIGOLE ET DES INDUSTRIES

Creation devis offre ACCORD TAM ET CADRES DU PAYSAGE
  Connexion en tant que distributeur Agrica ACCORD TAM ET CADRES DU PAYSAGE
  Formulaire Devis-Accès-Offre ACCORD TAM ET CADRES DU PAYSAGE
  Formulaire Devis-Entreprise-Offre ACCORD TAM ET CADRES DU PAYSAGE
  Formulaire Devis-Signataires-Offre ACCORD TAM ET CADRES DU PAYSAGE
  Formulaire Devis-Distributeur-Offre ACCORD TAM ET CADRES DU PAYSAGE
  Tarificateur ACCORD TAM ET CADRES DU PAYSAGE
  Envoi de la proposition commerciale-Offre Accord TAM et cadres du paysage

Creation devis offre ILIP (Indemnité Licenciement Inaptitude professionnelle)
  Connexion en tant que distributeur Agrica ILIP
  Formulaire Devis-Accès-Offre ILIP
  Formulaire Devis-Entreprise-Offre ILIP
  Formulaire Devis-Signataires-Offre ILIP
  Formulaire Devis-Distributeur-Offre ILIP
  Tarificateur ILIP
  Envoi de la proposition commerciale-Offre ILIP

Creation devis offre ACCORD NATIONAL DE LA PRODUCTION AGRICOLE – SANTÉ
  Connexion en tant que distributeur Agrica ACCORD NATIONAL DE LA PRODUCTION AGRICOLE – SANTÉ
  Formulaire Devis-Accès-Offre ACCORD NATIONAL DE LA PRODUCTION AGRICOLE – SANTÉ
  Formulaire Devis-Entreprise-Offre ACCORD NATIONAL DE LA PRODUCTION AGRICOLE – SANTÉ
  Formulaire Devis-Signataires-Offre ACCORD NATIONAL DE LA PRODUCTION AGRICOLE – SANTÉ
  Formulaire Devis-Distributeur-Offre ACCORD NATIONAL DE LA PRODUCTION AGRICOLE – SANTÉ
  Tarificateur ACCORD NATIONAL DE LA PRODUCTION AGRICOLE – SANTÉ
  Envoi de la proposition commerciale-Offre ACCORD NATIONAL DE LA PRODUCTION AGRICOLE – SANTÉ

Creation devis offre SDLM_Santé
  Connexion en tant que distributeur Agrica SDLM_Santé
  Formulaire Devis-Accès-Offre SDLM_Santé
  Formulaire Devis-Entreprise-Offre SDLM_Santé
  Formulaire Devis-Signataires-Offre SDLM_Santé
  Formulaire Devis-Distributeur-Offre SDLM_Santé
  Tarificateur SDLM_Santé
  Envoi de la proposition commerciale-Offre SDLM_Santé

Creation devis CCN des entreprises du Paysage Ouvriers et Employés
   Connexion en tant que distributeur Agrica CCN des entreprises du Paysage Ouvriers et Employés
   Formulaire Devis-Accès-Offre CCN des entreprises du Paysage Ouvriers et Employés
   Formulaire Devis-Entreprise-Offre CCN des entreprises du Paysage Ouvriers et Employés
   Formulaire Devis-Signataires-Offre CCN des entreprises du Paysage Ouvriers et Employés
   Formulaire Devis-Distributeur-Offre CCN des entreprises du Paysage Ouvriers et Employés
   Tarificateur CCN des entreprises du Paysage Ouvriers et Employés
   Envoi de la proposition commerciale-Offre CCN des entreprises du Paysage Ouvriers et Employés


Creation devis RÉGIME D’ADHÉSION
   Connexion en tant que distributeur Agrica RÉGIME D’ADHÉSION
   Formulaire Devis-Accès-Offre RÉGIME D’ADHÉSION
   Formulaire Devis-Entreprise-Offre RÉGIME D’ADHÉSION
   Formulaire Devis-Signataires-Offre RÉGIME D’ADHÉSION
   Formulaire Devis-Distributeur-Offre RÉGIME D’ADHÉSION
   Tarificateur RÉGIME D’ADHÉSION
   Envoi de la proposition commerciale-Offre RÉGIME D’ADHÉSION

Creation devis PER CPCEA - SUPPLÉMENT DE TAUX
   Connexion en tant que distributeur Agrica PER CPCEA - SUPPLÉMENT DE TAUX
   Formulaire Devis-Accès-Offre PER CPCEA - SUPPLÉMENT DE TAUX
   Formulaire Devis-Entreprise-Offre PER CPCEA - SUPPLÉMENT DE TAUX
   Formulaire Devis-Signataires-Offre PER CPCEA - SUPPLÉMENT DE TAUX
   Formulaire Devis-Distributeur-Offre PER CPCEA - SUPPLÉMENT DE TAUX
   Tarificateur PER CPCEA - SUPPLÉMENT DE TAUX
   Envoi de la proposition commerciale-Offre PER CPCEA - SUPPLÉMENT DE TAUX
