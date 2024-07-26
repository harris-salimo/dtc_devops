pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                sh "docker build -t dtc_devops:1.0 ."
                withCredentials([usernamePassword(credentialsId: 'DockerHub', passwordVariable: 'PASSWORD', usernameVariable: 'USERNAME')]) {
                    sh "docker login -u ${USERNAME} -p ${PASSWORD}"
                    sh "docker push harrissalimo/dtc_devops"
                }
            }
        }
        stage('Deploy') {
            steps {
                sh "docker stack deploy -c https://raw.githubusercontent.com/harris-salimo/dtc_devops/master/compose.yml dtc_devops"
            }
        }
    }
}