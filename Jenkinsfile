pipeline {
    agent any

    environment {
        // Щоб Ansible не питав про підтвердження SSH ключів
        ANSIBLE_HOST_KEY_CHECKING = 'False'
    }

    stages {
        stage('Start') {
            steps {
                echo 'Lab_7: CI/CD Pipeline with Terraform & Ansible'
            }
        }

        stage('Infrastructure Provisioning (Terraform)') {
            steps {
                dir('Lab_7') {
                    // Ініціалізація та запуск Terraform
                    sh "terraform init"
                    sh "terraform apply -auto-approve"
                    
                    // Витягуємо дані для Ansible
                    sh "terraform output -raw ansible_inventory > inventory_auto.ini"
                    
                    // Виводимо IP в консоль для скріншота
                    echo "--- SERVER IP ADDRESS ---"
                    sh "terraform output -raw server_ip"
                }
            }
        }

        stage('Image Build & Push') {
            steps {
                // Будуємо твій Docker образ
                sh "docker build -t nazarh88/prikm:latest ."
                
                withDockerRegistry([credentialsId: "dockerhub_token", url: ""]) {
                    sh "docker push nazarh88/prikm:latest"
                }
            }
        }

        stage('Configuration & Deploy (Ansible)') {
            steps {
                dir('Lab_7') {
                    // Ansible заходить на створений сервер і розгортає там Nginx або твій контейнер
                    sh "ansible-playbook -i inventory_auto.ini playbook.yml"
                }
            }
        }
    }

    post {
        failure {
            echo "Пайплайн впав. Видаляємо тимчасову інфраструктуру..."
            dir('Lab_7') {
                sh "terraform destroy -auto-approve"
            }
        }
        success {
            echo "Вітаю! Лабораторна №7 виконана успішно."
        }
    }
}
