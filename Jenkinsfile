pipeline {
    agent any

    stages {
        stage('Build Docker Image') {
            steps {
                sh 'docker build --no-cache -t gallery_with_media -f Dockerfile .'
            }
        }

        stage('Run Docker Container') {
            steps {
                sh 'docker run -p 8081:80 --name gallery_with_media gallery_with_media'
            }
        }
    }
}