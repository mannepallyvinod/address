pipeline {
    agent any
    environment {
        mvnhome= "C:\\apache-maven-3.8.6\\bin:$mvnhome"
    }
    stages {
        stage('Checkout') {
            steps {
                git url: "https://github.com/mannepallyvinod/Spring.git"
            }
        }
        stage ('Build') {
            steps {
                bat "mvn clean install package"
            }
        }
        stage('Deploy') {
            steps {
                script {
                    docker.build('spring:latest', '.')
                }
            }
        }
    }
}
