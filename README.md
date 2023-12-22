step 1 : in setting.xml ( C:\Program Files\Apache\maven\conf\settings.xml )



<settings xmlns="http://maven.apache.org/SETTINGS/1.0.0"
  xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
  xsi:schemaLocation="http://maven.apache.org/SETTINGS/1.0.0
                      http://maven.apache.org/xsd/settings-1.0.0.xsd">
  <localRepository>${user.home}/.m2/repository</localRepository>
  <interactiveMode>true</interactiveMode>
  <usePluginRegistry>false</usePluginRegistry>
  <offline>false</offline>
  <pluginGroups>
    <pluginGroup>org.mortbay.jetty</pluginGroup>
  </pluginGroups>
</settings>



step 2 : create table in mysql


CREATE TABLE users (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    birthdate DATE,
    email VARCHAR(255),
    whatsapp VARCHAR(20),
    linkedin VARCHAR(255),
    website VARCHAR(255),
    education VARCHAR(255),
    interests VARCHAR(255),
    skills VARCHAR(255),
    projects VARCHAR(255),
    internships VARCHAR(255),
    open_to_work BOOLEAN
);



step 3 : change username password in hibernate.cfg.xml


step 4 : run in terminal


mvn jetty:run
