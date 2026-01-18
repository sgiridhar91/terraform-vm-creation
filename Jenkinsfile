pipeline{
agent any

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
