# Student Registration Web Application

A small Java/JSP Maven web application for practicing GitHub, Jenkins, Maven, and Tomcat deployment.

## Features
- Student ID, full name, email, and course form
- Registration confirmation page
- Maven WAR packaging
- Starter Jenkins pipeline that builds and archives the WAR

## Requirements
- JDK 8 or newer
- Maven 3.6+
- Apache Tomcat 9 or a compatible JSP container

## Build locally
```bash
mvn clean package
```

The WAR file is created at:
`target/student-registration.war`

## Deploy
Copy `target/student-registration.war` to the Tomcat `webapps/` directory and start/restart Tomcat.
Then open:
`http://YOUR_TOMCAT_HOST:8080/student-registration/`

## Important
This is a learning demo. It displays submitted details but does not store student records in a database.
The included Jenkinsfile builds and archives the WAR. We will add the deployment stage after configuring secure access from Jenkins to the Tomcat server.
