pipeline {
    agent any

    // Параметри для build
    parameters {
        string(name: 'ENV', defaultValue: 'dev', description: 'Environment for build')
        booleanParam(name: 'RUN_TESTS', defaultValue: true, description: 'Run tests')
    }

    stages {
        stage('Checkout') {
            steps {
                git branch: 'Lab_3', url: 'https://github.com/NazarH88/PRIKM_ITPA.git'
            }
        }

        stage('Build') {
            steps {
                echo "Building project for environment: ${params.ENV}"
                // Тут можна вставити реальну команду збірки, наприклад:
                // sh 'make build' або sh './gradlew build'
            }
        }

        stage('Test') {
            when {
                expression { return params.RUN_TESTS }
            }
            steps {
                echo 'Running tests...'
                // sh 'make test' або інші команди тестів
            }
        }

        stage('Deploy') {
            steps {
                echo "Deploying to ${params.ENV} environment"
                // Тут можна додати команди деплою
            }
        }
    }

    post {
        success {
            echo 'Build SUCCESS'
            // Відправка повідомлення на твій вебхук
            sh """
            curl -X POST -H 'Content-Type: application/json' \
            -d '{ "text": "Build SUCCESS for Lab_3 on ENV=${params.ENV}" }' \
            https://webhookbot.c-toss.com/api/bot/webhooks/f6e1ba0d-7742-4041-ab70-270858fddd2b
            """
        }
        failure {
            echo 'Build FAILED'
            // Відправка повідомлення про помилку
            sh """
            curl -X POST -H 'Content-Type: application/json' \
            -d '{ "text": "Build FAILED for Lab_3 on ENV=${params.ENV}" }' \
            https://webhookbot.c-toss.com/api/bot/webhooks/f6e1ba0d-7742-4041-ab70-270858fddd2b
            """
        }
    }
}
