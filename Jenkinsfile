pipeline {
    agent any

    environment {
        IMAGE_NAME = 'myhtmlapplication'
        CONTAINER_NAME = 'myhtmlapplicationcontainer'
    }

    stages {
        stage('Clone Repository') {
            steps { // ✅ Fix: should be "steps" not "step"
                git branch: 'main', url: 'https://github.com/aditi2003b/jenkins_practice.git'
            }
        }

        stage('Build') {
            steps {
                script {
                    sh "docker build -t $IMAGE_NAME ."
                }
            }
        }

        stage('Run') {
            steps {
                script {
                    sh "docker rm -f $CONTAINER_NAME || true"  // ✅ Fix: 'doker' → 'docker'

                    sh "docker run -d --name $CONTAINER_NAME -p 8085:80 $IMAGE_NAME"
                }
            }
        }
    }
}
