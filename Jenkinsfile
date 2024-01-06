pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                script {
                    // Étape de construction - Exemple : construire une image Docker
                    sh 'npm install'
                    sh 'npm start'
                }
            }
        }

        stage('Test') {
            steps {
                script {
                    // Étape de test - Exemple : exécuter des tests
                   sh 'npm test'
                }
            }
        }

        stage('Deploy') {
            steps {
                script {
                    // Étape de déploiement - Exemple : déployer sur Kubernetes
                    echo "Déploiement du projet"
                }
            }
        }
    }
}
