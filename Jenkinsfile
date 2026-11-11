
pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                echo 'Downloading HTML source code'
                checkout scm
            }
        }

        stage('Build') {
            steps {
                echo 'Checking HTML project files'
                sh 'pwd'
                sh 'ls -la'
                sh 'test -f index.html'
                echo 'HTML files found successfully!'
            }
        }

        stage('Docker Build') {
            steps {
                echo 'Building Docker image'
                sh 'docker build -t my-html-app .'
            }
        }
    }

    post {
        success {
            echo 'HTML CI/CD Pipeline completed successfully!'
        }
        failure {
            echo 'Pipeline failed. Check the console output.'
        }
    }
}
