pipeline {
    agent any
    environment {
        ARM_SUBSCRIPTION_ID = "956bb615-2864-44be-aa40-3e5bd6ef654f"
        ARM_CLIENT_ID       = "9cf4b57b-6b15-41fb-aead-a87aff7fe6e4"
        ARM_TENANT_ID       = "3a532a72-e615-4eca-9fc8-311daaae64a2"
    }
    stages {
        stage('Checkout code') {
            steps {
                git branch: 'main', url: 'https://github.com/sgiridhar91/terraform-vm-creation.git'
            }
        }
        stage('Terraform Init & Apply') {
            steps {
                
                withCredentials([string(credentialsId: 'azure-jenkins-secret', variable: 'ARM_CLIENT_SECRET')]) {
                    sh 'terraform init'
                    sh 'terraform apply -auto-approve'
                }
            }
        }
    }
}
