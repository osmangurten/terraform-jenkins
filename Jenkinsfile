pipeline {
  agent any
  environment {
    PATH = "${PATH}:${getTerraformPath()}"
  }

stages {
  stage('S3 Create Bucket') {
    steps{
      createS3Bucket('osmangurten-tf-bucket')
    }
  }
  stage('terraform init and apply -dev'){
    steps{
    sh returnStatus: true, script: 'terraform workspace new dev'
    sh "terraform init"
    sh "terraform apply -var-file=dev.tfvars -auto-approve"
      }
    }
   stage('terraform init and apply -prod'){
      steps{
      sh returnStatus: true, script: 'terraform workspace new prod'
      sh "terraform init"
      sh "terraform apply -var-file=prod.tfvars -auto-approve"
        }
      }
  }
}

def getTerraformPath(){
  tfHome = tool name: 'terraform-12', type: 'org.jenkinsci.plugins.terraform.TerraformInstallation'
  return tfHome
}
def createS3Bucket(bucketName){
  sh returnStatus: true, script: "aws s3 mb s3://${bucketName} --region us-west-1"
}
