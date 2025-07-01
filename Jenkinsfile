pipeline {
  agent any

  environment {
    TF_DIR = 'jenkins-ec2'
  }

  stages {

    stage('Clone Terraform Repo') {
      steps {
        git credentialsId: 'github-cred-th-tier', url: 'https://github.com/Abubakar-sys123/instance-repo', branch: 'main'
      }
    }

    stage('Terraform Init') {
      steps {
        dir("${env.TF_DIR}") {
          sh 'terraform init'
        }
      }
    }

    stage('Terraform Plan') {
      steps {
        dir("${env.TF_DIR}") {
          sh 'terraform plan'
        }
      }
    }

    stage('Terraform Apply') {
      steps {
        dir("${env.TF_DIR}") {
          sh 'terraform apply -auto-approve'
        }
      }
    }
  }
}

