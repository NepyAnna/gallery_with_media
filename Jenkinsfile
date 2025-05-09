pipeline {
agent any

stages {
    stage('Build') {
        steps {
            // Intenta modificar los permisos del socket de Docker
            sh 'chmod 666 /var/run/docker.sock || true'
            sh 'docker build --no-cache -t gallery_with_media .'

        }
    }
    stage('Execute Command2') {
        steps {
            sh 'docker rm -f gallery_with_media || true'
            sh 'docker run -d -p 8081:80 --name gallery_with_media gallery_with_media'
        }
    }
  }
}