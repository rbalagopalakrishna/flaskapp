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
                sh 'python app.py'
            }
        }
    }
}
