pipeline {
  agent { any { image 'python:3.7.2' } }
  stages {
    stage('build') {
      steps {
        sh 'sudo apt install pip && sudo pip install -r requirements.txt'
      }
    }
    stage('test') {
      steps {
        sh 'python test.py'
      }   
    }
  }
}
