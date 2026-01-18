pipeline {
    agent any
    environment {
        export ARM_CLIENT_ID="fccbe0bd-2e6a-46c5-a360-11441a52da03"
export ARM_TENANT_ID="d90b060c-4168-4e78-91aa-d4dce4a21e27"
export ARM_SUBSCRIPTION_ID="956bb615-2864-44be-aa40-3e5bd6ef654f"
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
