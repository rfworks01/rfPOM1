
--python-path ./pages:./resources:./resources/locators 

#specify report folder
-d reports 
#specify junit xml file
-x junit-report.xml 

--Variable browserMode:headlesschrome

#file to execute
#tests/suite_file
tests/test_001.robot
