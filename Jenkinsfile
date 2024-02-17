#!/usr/bin/env groovy
pipeline {
    agent any
    environment {
        AWS_ACCESS_KEY_ID = credentials('AWS_ACCESS_KEY_ID')
        AWS_SECRET_ACCESS_KEY = credentials('AWS_SECRET_ACCESS_KEY')
<<<<<<< HEAD
        AWS_DEFAULT_REGION = "us-east-1"
=======
        AWS_DEFAULT_REGION = "ap-south-1"
>>>>>>> 2e449c6fd5dce749d1d56bd38f93d8d95bd5f5fc
    }
    stages {
        stage("Create an EKS Cluster") {
            steps {
                script {
                    dir('terraform') {
                        sh "terraform init"
                        sh "terraform apply -auto-approve"
                    }
                }
            }
        }
        stage("Deploy to EKS") {
            steps {
                script {
                    dir('kubernetes') {
                        sh "aws eks update-kubeconfig --name myapp-eks-cluster"
                        sh "kubectl apply -f nginx-deployment.yaml"
                        sh "kubectl apply -f nginx-service.yaml"
                    }
                }
            }
        }
    }
<<<<<<< HEAD
}
=======
}
>>>>>>> 2e449c6fd5dce749d1d56bd38f93d8d95bd5f5fc
