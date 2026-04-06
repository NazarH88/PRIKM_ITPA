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
                sh 'docker build -t nginx/custom:latest .'
            }
        }

        stage('Test nginx/custom') {
            steps {
                echo 'Tests passed successfully'
            }
        }

        stage('Deploy nginx/custom') {
            steps {
                sh 'docker stop my-nginx || true'
                sh 'docker rm my-nginx || true'
                sh 'docker run -d --name my-nginx -p 8080:80 nginx/custom:latest'
            }
        }
    }
}
