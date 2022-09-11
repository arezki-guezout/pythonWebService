pipeline {
  agent { dockerfile true 
          args '-t pythonapp'
        }
  stages {
    stage('run') {
      steps {
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
