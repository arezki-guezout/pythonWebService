def img
pipeline {
  
  environment { 
    registery = 'arezkiguezout/pythonwebapp'
    registeryCredential = 'DockerHub'
    dockerImage = ''
  }
  agent any
  
  stages {
    stage('github checkout') {
      steps {
        git 'https://github.com/arezki-guezout/pythonWebService.git'
      }
    }
    
    stage('Build Image') {
      steps {
        script {
          img = registry + ":${env.BUILD_ID}"
          println("${img}")
          dockerImage = docker.build("${img}")
        }
      }
    }
    
    stage('Test - run in local'){
      steps{
        sh 'docker run -d --name ${JOB_NAME} -p 8081:8081 ${img}'
      }
    }
    
    stage('Push to DockerHub'){
      steps{
        script{
          docker.withRegistery('https://registery.hub.docker.com', registeryCredential){
            dockerImage.push()
          }
        }
      }
    }
