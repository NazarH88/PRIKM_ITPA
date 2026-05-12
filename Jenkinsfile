pipeline {
    agent any

    stages {

        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Terraform Apply') {
            steps {
                dir('terraform') {

                    sh 'terraform init'

                    sh """
                    docker rm -f \
                    app_node \
                    prometheus \
                    grafana \
                    node_exporter || true
                    """

                    sh 'terraform apply -auto-approve'
                }
            }
        }

        stage('Smoke Test') {
            steps {
                sh 'curl -f http://localhost:8085'
                sh 'curl -f http://localhost:9091'
                sh 'curl -f http://localhost:9100/metrics'
            }
        }
    }

    post {
        always {
            echo "Пайплайн завершено."
        }
    }
}
