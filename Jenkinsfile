pipeline {
  agent { 
    dockerfile {
      args '-t pythonapp'
    }
  }
  stages {
    stage('run') {
      agent { reuseNode true }
      steps {
        echo 'rrrr'
        //sh 'docker run --name app -tid -p 8081:8081 pythonapp'
        sh 'docker ps'
        echo 'uuuuu'
      }
    }
    
    stage('test') {
      agent { reuseNode true }
      steps {
        sh 'docker exec -tid app sh -c "python3 -m unittest unitTest.py"'
      }
    }
  }
}
