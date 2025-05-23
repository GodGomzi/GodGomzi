pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                git url: 'https://github.com/YOUR_USERNAME/YOUR_REPO.git', branch: 'main'
            }
        }

        stage('Run Shell Script') {
            steps {
                sh './build.sh'
            }
        }
    }

    post {
        success {
            echo 'Website built successfully!'
        }
        failure {
            echo 'Something went wrong.'
        }
    }
}
