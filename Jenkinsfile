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
        stage('Deploy') {
            steps {
                script {
                    docker.build('address:latest', '.')
                }
            }
        }
        stage('Run') {
            steps {
               sh 'docker run -p 8080:80 address:latest'
            }
        }
    }
}
