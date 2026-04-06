pipeline {
    agent any

    stages {
        stage('Start') {
            steps {
                echo 'Lab_2: started by GitHub'
            }
        }

        stage('Image build') {
            steps {
                sh "docker build -t prikm:latest ."
                sh "docker tag prikm nazarh88/prikm:latest"
                sh "docker tag prikm nazarh88/prikm:$BUILD_NUMBER"
            }
        }

        stage('Push to registry') {
            steps {
                withDockerRegistry([credentialsId: "dockerhub_token", url: ""]) {
                    sh "docker push nazarh88/prikm:latest"
                    sh "docker push nazarh88/prikm:$BUILD_NUMBER"
                }
            }
        }

        stage('Deploy image') {
            steps {
                sh "docker run -d -p 80:80 nazarh88/prikm"
            }
        }
    }
}
