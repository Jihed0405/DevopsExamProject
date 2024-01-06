pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                script {
                   
                    echo "Build the project"
                    
                    bat 'npm install'
                }
            }
        }

        stage('Test') {
            steps {
                script {
                echo "Test the project"
                   bat  'npm test'
                }
            }
        }

        stage('Deploy') {
            steps {
                script {
                   
                    echo "Déploiement du projet"
                }
            }
        }
    }
}
