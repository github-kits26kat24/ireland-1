pipeline {
    
    agent any 
    environment {
                AWS_ACCESS_KEY_ID = credentials ('AWS_ACCESS_KEY')
                AWS_SECRET_ACCESS_KEY =  credentials ('AWS_SECRET_ACCESS_KEY')
                AWS_REGION = 'eu-west-1'
            }
    stages {
        stage ('terraform code validation') {
            steps {
                echo 'about to perform code validation'
                sh 'terraform init'
                sh 'terraform validate'
            }
        }
        stage ('terraform plan') {
            steps {
                sh 'terraform plan'
            }
        }
    }
    post {
        always {
            echo 'i just ran a pipeline'
        }
        success {
            echo 'pipeline ran successfully'
        }
        failure {
            echo 'pipeline failed'
        }
    }
}
