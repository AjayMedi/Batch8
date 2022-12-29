pipeline {
    agent any

    stages {
        stage('Clone SCM') {
            steps {
                echo 'clone project from Github'
                git branch: 'main', credentialsId: 'githubcredentials', url: 'https://github.com/AjayMedi/Batch8.git'
            }
        }
        stage('Build Artifact') {
            steps {
                echo 'building using maven tool'
                sh 'mvn clean install'
            }
        }
        stage('Deploy to Tomcat server') {
            steps {
                echo 'Deploying'
                deploy adapters: [tomcat9(credentialsId: '176167a8-0054-45d3-920c-53f4bcde8e9c', path: '', url: 'http://10.81.10.20:8080')], contextPath: 'FACEBOOK', war: '**/*.war'
            }
        }



    }
}
