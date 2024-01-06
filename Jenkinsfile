pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                script {
                    // Étape de construction - Exemple : construire une image Docker
                    sh 'docker build -t node:19-bullseye .'
                }
            }
        }

        stage('Test') {
            steps {
                script {
                    // Étape de test - Exemple : exécuter des tests
                    sh 'docker run node:19-bullseye npm test'
                }
            }
        }

        stage('Deploy') {
            steps {
                script {
                    // Étape de déploiement - Exemple : déployer sur Kubernetes
                    sh 'kubectl apply -f exam.yaml'
                }
            }
        }
    }
}
