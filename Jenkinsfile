pipeline {
    agent any

    environment {
        IMAGE_NAME = 'varsha0411/seven-wonders'
        CONTAINER_NAME = 'wonders-container'
    }

    stages {

        stage('Clone Code') {
            steps {
                git 'https://github.com/your-repo/seven-wonders.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                sh "docker build -t $IMAGE_NAME ."
            }
        }

        stage('Run Container') {
            steps {
                sh '''
                docker stop $CONTAINER_NAME || true
                docker rm $CONTAINER_NAME || true
                docker run -d -p 91:80 --name $CONTAINER_NAME $IMAGE_NAME
                '''
            }
        }
    }
}
