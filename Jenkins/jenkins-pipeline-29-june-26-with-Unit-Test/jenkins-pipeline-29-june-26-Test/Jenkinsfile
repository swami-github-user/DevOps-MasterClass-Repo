pipeline {

    agent any

    tools {
        maven 'Maven'
    }

    environment {
        APP_NAME = 'hello-world-war'
        DEPLOY_DIR = '/var/lib/tomcat10/webapps'
    }

    stages {

        stage('Checkout') {
            steps {

                echo 'Downloading source code from GitHub'

                checkout scm

                sh 'pwd'
                sh 'ls -la'
            }
        }

        stage('Verify Environment') {
            steps {

                sh 'java -version'
                sh 'mvn -version'
                sh 'git --version'
            }
        }

        stage('Compile') {
            steps {

                echo 'Compiling Application'

                sh 'mvn clean compile'
            }
        }

        stage('Unit Test') {
            steps {

                echo 'Running Tests'

                sh 'mvn test'
            }
        }

        stage('Package') {
            steps {

                echo 'Creating WAR File'

                sh 'mvn package'
            }
        }

        stage('Deploy To Tomcat') {
            steps {

                echo 'Deploying WAR'

                sh '''
                sudo cp target/*.war ${DEPLOY_DIR}/
                '''
            }
        }

        stage('Verify Deployment') {
            steps {

                echo 'Deployment Completed'
            }
        }
    }

    post {

        always {

            junit 'target/surefire-reports/*.xml'
            echo 'Pipeline Finished'

        }

        success {

            echo 'Application Successfully Built and Deployed'
        }

        failure {

            echo 'Build Failed'
        }
    }
}
