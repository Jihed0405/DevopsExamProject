pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                script {
                   
                    echo "Build the project"
                    bat 'start cmd /c  "yarn dev" && timeout /t 20 && taskkill /IM node.exe /F'
                    
                }
            }
        }

        stage('Test') {
            steps {
                script {
                
                catchError(){
                          
                echo "Test the project"
                   bat  'npm test'
                   
                   bat '''
                   @echo off
                    :: run all tests with Mocha
                    yarn test
                    
                    ::run integration tests
                    yarn test:integration
                   
                    '''
                }
              
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
