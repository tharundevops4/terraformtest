pipeline {
    agent any

    environment {
        AWS_REGION = "us-east-1"
    }

    stages {
        stage('Checkout Code') {
            steps {
                git 'https://github.com/tharundevops4/terraformtest.git'
            }
        }

        stage('Initialize Terraform') {
            steps {
                sh 'terraform init'
            }
        }

        stage('Validate Terraform') {
            steps {
                sh 'terraform validate'
            }
        }

        stage('Plan Infrastructure Changes') {
            steps {
                sh 'terraform plan'
            }
        }

        stage('Apply Infrastructure Changes') {
            steps {
                sh 'terraform apply -auto-approve'
            }
        }

        stage('Retrieve Terraform Outputs') {
            steps {
                sh 'terraform output'
            }
        }
    }

    post {
        success {
            echo 'Terraform applied successfully. EC2 and EBS are created!'
        }
        failure {
            echo 'Terraform deployment failed!'
        }
    }
}
