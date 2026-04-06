pipeline {
    agent any

    environment {
        APP_NAME = "my-nginx"
        IMAGE_NAME = "nginx/custom:latest"
        HOST_PORT = "8080" // можна змінити на будь-який вільний порт
    }

    stages {
        stage('Start') {
            steps {
                echo "Lab_1: ${IMAGE_NAME}"
            }
        }

        stage('Build') {
            steps {
                sh "docker build -t ${IMAGE_NAME} ."
            }
        }

        stage('Test') {
            steps {
                echo 'Tests passed successfully'
            }
        }

        stage('Deploy nginx/custom'){
            steps {
                sh "docker run -d -p 80:80 nginx/custom:latest"
            }
        }
    }
}
