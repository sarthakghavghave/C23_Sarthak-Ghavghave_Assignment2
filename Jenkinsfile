pipeline {
    agent any

    stages {
        stage('Clone Repository') {
            steps {
                git 'https://github.com/your_username/your_repository.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t your_dockerhub_username/studentproject .'
            }
        }

        stage('Push to Docker Hub') {
            steps {
                withDockerRegistry([credentialsId: 'docker-hub-credentials']) {
                    sh 'docker push your_dockerhub_username/studentproject'
                }
            }
        }
    }
}
