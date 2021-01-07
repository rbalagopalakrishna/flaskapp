pipeline {
    agent none 
    stages {
        stage('Build') { 
            agent {
                docker {
                    image 'python:2.7' 
                }
            }
            steps {
                sh 'pip install -r requirements.txt' 
            }
            stage('test') {
              steps { 
                sh 'python test_app.py'
              }
            }
        }
    }
}
