pipeline{
agent any
    environment {
        ARM_SUBSCRIPTION_ID = "956bb615-2864-44be-aa40-3e5bd6ef654f"
        ARM_CLIENT_ID       = "9cf4b57b-6b15-41fb-aead-a87aff7fe6e4"
        ARM_CLIENT_SECRET   = ""
        ARM_TENANT_ID       = "3a532a72-e615-4eca-9fc8-311daaae64a2"
    }
stages{
stage('code checkout'){
steps{
git branch:'main', url:'https://github.com/sgiridhar91/terraform-vm-creation.git'
}
}
stage('terraform init'){
steps{
sh 'terraform init'
}
}
stage('terraform apply'){
steps{
sh 'terraform apply -auto-approve'
}
}
}
}
