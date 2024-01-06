pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                script {
                    echo "Build the project"
                    def proc = bat(script: 'start cmd /c "your_command_here"', returnStatus: true)
                    def timeoutSeconds = 300
                    def timer = 0  
                    def pollInterval = 10
                    while (timer < timeoutSeconds) {
                        // Check if the process has completed
                        if (proc.exitStatus == 0) {
                            echo "Process completed successfully."
                            break
                        }

                        // Wait for the specified interval
                        sleep pollInterval

                        // Update the timer
                        timer += pollInterval
                    }

                    // If the process is still running after the timeout, kill it
                    if (proc.exitStatus != 0) {
                        echo "Process did not complete within the timeout. Killing the process."
                        bat 'taskkill /IM node.exe /F'
                    }
                    
                    
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
