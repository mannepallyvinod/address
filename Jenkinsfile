pipeline {
    agent any
    environment {
        mvnhome= "C:\\apache-maven-3.8.6\\bin:$mvnhome"
    }
    stages {
        stage('Checkout') {
            steps {
                git url: "https://github.com/mannepallyvinod/address.git"
            }
        }
        stage ('Build') {
            steps {
                bat "mvn clean install package"
            }
        }
        stage('Build Docker Image') {
            steps {
                script {
                    // Build Docker image
                    dockerImage = docker.build("address")
                }
            }
        }
        stage('Run Docker Container') {
            steps {
                script {
                    // Run Docker container
                    dockerContainer = dockerImage.run("-p 8080:80 -d")
                    dockerContainerId = dockerContainer.id
                }
            }
        }
    }
}
