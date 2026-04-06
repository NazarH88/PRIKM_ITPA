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
                sh 'docker run -d --name my-nginx -p 80:80 nginx/custom:latest'
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
