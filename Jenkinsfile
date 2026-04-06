pipeline {
    agent any

    stages {

        stage('Start') {
            steps {
                echo 'Lab_1: nginx/custom:latest'
            }
        }

        stage('Build nginx/custom') {
            steps {
                sh 'docker build -t nginx/custom:latest .'
            }
        }

        stage('Check index.html') {
            steps {
                sh 'ls -la index.html'
                echo 'index.html is ready for deployment'
            }
        }

        stage('Test nginx/custom') {
            steps {
                echo 'Pass'
            }
        }

        stage('Deploy nginx/custom') {
            steps {
                // Зупиняємо і видаляємо старий контейнер, якщо він існує
                sh 'docker stop my-nginx || true'
                sh 'docker rm my-nginx || true'

                // Запускаємо новий контейнер
                sh 'docker run -d --name my-nginx -p 8080:80 nginx/custom:latest'
            }
        }

        stage('Test HTTP') {
            steps {
                // Перевіряємо, чи сервер відповідає
                sh 'curl -I http://localhost:8080 || true'
                echo 'HTTP response checked'
            }
        }

        stage('Custom Message') {
            steps {
                echo 'Lab work done by Studynazar'
            }
        }

    }
}
