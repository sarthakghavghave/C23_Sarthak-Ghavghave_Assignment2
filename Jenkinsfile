pipeline {
    agent any

    stages {
        stage('Clone Repository') {
            steps {
                git 'https://github.com/sarthakghavghave/C23_Sarthak-Ghavghave_Assignment2.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t sarthakghavghave/studentproject .'
            }
        }

        stage('Push to Docker Hub') {
            steps {
                withDockerRegistry([credentialsId: 'sarthakghavghave']) {
                    sh 'docker push sarthakghavghave/studentproject'
                }
            }
        }
    }
}
