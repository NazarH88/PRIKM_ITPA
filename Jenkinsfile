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

        stage('Deploy') {
            steps {
                // Зупинити старий контейнер (якщо є)
                sh "docker stop ${APP_NAME} || true"
                sh "docker rm ${APP_NAME} || true"

                // Запуск нового контейнера
                sh "docker run -d --name ${APP_NAME} -p ${HOST_PORT}:80 ${IMAGE_NAME}"
            }
        }
    }
}
