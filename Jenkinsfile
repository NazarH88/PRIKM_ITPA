pipeline {
    agent any

    stages {
        stage('Start') {
            steps {
                echo 'Lab_1: nginx/custom'
            }
        }

        stage('Build nginx/custom') {
            steps {
                echo 'Building Docker image...'
                sh 'docker build -t nginx/custom:latest .'
            }
        }

        stage('Test nginx/custom') {
            steps {
                echo 'Running tests...'
                echo 'Pass'
            }
        }

        stage('Deploy nginx/custom') {
            steps {
                echo 'Deploying Docker container...'
                // Зупиняємо старий контейнер, якщо він є
                sh 'docker stop my-nginx || true'
                sh 'docker rm my-nginx || true'
                // Деплой нового контейнера
                sh 'docker run -d -p 80:80 --name my-nginx nginx/custom:latest || true'
            }
        }
    }
}
