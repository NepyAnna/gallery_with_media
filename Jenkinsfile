pipeline {
agent any

stages {
    stage('Build') {
        steps {
            sh 'docker build --no-cache -t gallery_with_media -f Dockerfile .'
        }
    }
    stage('Execute Command2') {
        steps {
            sh 'docker run -p 8081:80 --name  gallery_with_media '
        }
    }
  }
}