pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                script {
                   
                    echo "Build the project"
                    bat 'yarn dev'
                }
            }
        }

        stage('Test') {
            steps {
                script {
                echo "Test the project"
                   bat  'npm test'
                   
                   bat '''
                   @echo off
                    :: run all tests with Mocha
                    yarn test
                    ::run unit tests
                    yarn test:unit
                    ::run integration tests
                    yarn test:integration
                    :: run all tests and watch for changes
                    yarn test:watch
                    :: open nyc test coverage reports
                    yarn coverage
                    '''
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
