
pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('SonarQube Analysis') {
            steps {
                script {
                    def mvn = tool 'Default Maven'

                    withSonarQubeEnv('SonarQube-Server') {
                        sh "${mvn}/bin/mvn clean verify org.sonarsource.scanner.maven:sonar-maven-plugin:sonar -Dsonar.projectKey=student-registration -Dsonar.projectName=student-registration"
                    }
                }
            }
        }

        stage('Archive WAR') {
            steps {
                archiveArtifacts artifacts: 'target/student-registration.war', fingerprint: true
            }
        }
    }
}

