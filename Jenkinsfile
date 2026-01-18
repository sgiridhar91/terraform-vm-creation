pipeline {
    agent any
       environment {
        ARM_CLIENT_ID       = credentials('client-id')
        ARM_CLIENT_SECRET   = credentials('client-secret')
        ARM_SUBSCRIPTION_ID = credentials('subscription-id')
        ARM_TENANT_ID       = credentials('tenant-id')
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
