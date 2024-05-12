pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                sh "docker build -t dtc_devops:1.0 ."
            }
        }
        stage('Deploy') {
            steps {
                withCredentials([usernamePassword(credentialsId: 'GitHub-Https', passwordVariable: 'PASSWORD', usernameVariable: 'USERNAME')]) {
                    sh "docker login -u ${USERNAME} -p ${PASSWORD}"
                    sh "docker push harrissalimo/dtc_devops:1.0"
                }
            }
        }
    }
}