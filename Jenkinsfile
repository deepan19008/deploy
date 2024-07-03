pipeline {
    agent any
    stages {
        stage('Build and Push') {
            steps {
                script {
                    sh 'chmod +x build.sh'
                    sh './build.sh'
                    sh 'docker login -u deepanr -p R@jasekar01'
                    sh 'docker build -t deepanr/dev .'
                    sh 'docker push deepanr/dev'
                    sh 'chmod +x deploy.sh'
                    sh './deploy.sh'
                }
            }
        }  
    }
}
