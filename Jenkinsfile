pipeline {
  agent { dockerfile true }
  stages {
    stage('clone') {
      steps {
        sh 'git clone https://github.com/arezki-guezout/pythonWebService.git'
        sh 'pwd'
      }
    }
  
    stage('build') {
      steps {
        sh 'docker rm app'
        sh 'docker build ./pythonWebService -t pythonapp'
        sh 'docker run --name app -tid -p 8081:8081 pythonapp'
        sh 'docker ps'
      }
    }
    
    stage('test') {
      steps {
        sh 'docker exec -tid app sh -c "python3 -m unittest unitTest.py"'
      }
    }
  }
}
