pipeline {
    agent any

    stages {
        stage('Build Docker Image') {
            steps {
                sh 'docker build -t gallery_with_media .'
            }
        }

        stage('Run Docker Container') {
            steps {
                sh 'docker rm -f gallery_with_media || true'

                sh 'docker run -d -p 8081:80 --name gallery_with_media gallery_with_media'
            }
        }
    }
}