# Exécution des tests sur Chrome, Edge et Firefox. 
# Pour chaque navigateur, on fait jusqu'à 4 exécutions (en ne rejouant que les tests failed)
# Ensuite on fusionne les résultats des tests dans un rapport

# Execution sur Chrome
robot --variable browser:Chrome --output Report_Chrome/output-1.xml mon_espace_commercial.robot
robot --rerunfailed Report_Chrome/output-1.xml --runemptysuite --variable browser:Chrome --output Report_Chrome/output-2.xml mon_espace_commercial.robot
robot --rerunfailed Report_Chrome/output-2.xml --runemptysuite --variable browser:Chrome --output Report_Chrome/output-3.xml mon_espace_commercial.robot
robot --rerunfailed Report_Chrome/output-3.xml --runemptysuite --variable browser:Chrome --output Report_Chrome/output-4.xml mon_espace_commercial.robot
rebot --log Report_Chrome/log.html --report Report_Chrome/report.html --merge Report_Chrome/*.xml 

# Execution sur Edge
robot --variable browser:Edge --output Report_Edge/output-1.xml mon_espace_commercial.robot
robot --rerunfailed Report_Edge/output-1.xml --runemptysuite --variable browser:Edge --output Report_Edge/output-2.xml mon_espace_commercial.robot
robot --rerunfailed Report_Edge/output-2.xml --runemptysuite --variable browser:Edge --output Report_Edge/output-3.xml mon_espace_commercial.robot
robot --rerunfailed Report_Edge/output-3.xml --runemptysuite --variable browser:Edge --output Report_Edge/output-4.xml mon_espace_commercial.robot
rebot --log Report_Edge/log.html --report Report_Edge/report.html --merge Report_Edge/*.xml 

# Execution sur Firefox
robot --variable browser:Firefox --output Report_Firefox/output-1.xml mon_espace_commercial.robot
robot --rerunfailed Report_Firefox/output-1.xml --runemptysuite --variable browser:Firefox --output Report_Firefox/output-2.xml mon_espace_commercial.robot
robot --rerunfailed Report_Firefox/output-2.xml --runemptysuite --variable browser:Firefox --output Report_Firefox/output-3.xml mon_espace_commercial.robot
robot --rerunfailed Report_Firefox/output-3.xml --runemptysuite --variable browser:Firefox --output Report_Firefox/output-4.xml mon_espace_commercial.robot
rebot --log Report_Firefox/log.html --report Report_Firefox/report.html --merge Report_Firefox/*.xml 