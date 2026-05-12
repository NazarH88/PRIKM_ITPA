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
		    sh 'docker rm -f app_node monitor_node || true'
                    sh 'terraform apply -auto-approve'
                    // Генеруємо інвентар для Ansible з output терраформу
                    sh 'terraform output -raw ansible_inventory > ../ansible/inventory.ini'
                }
            }
        }
        
        stage('Ansible Deploy') {
            steps {
                dir('ansible') {
                    sh 'ansible-playbook -i inventory.ini playbook.yml'
                }
            }
        }
        
        stage('Smoke Test') {
            steps {
                sh 'curl -f http://localhost:8080 || echo "App not ready"'
                sh 'curl -f http://localhost:9090 || echo "Prometheus not ready"'
            }
        }
    }
    
    post {
        always {
            echo "Пайплайн завершено."
        }
        // Якщо хочеш, щоб після кожного білду ресурси видалялися (економія):
        // success { dir('terraform') { sh 'terraform destroy -auto-approve' } }
    }
}
