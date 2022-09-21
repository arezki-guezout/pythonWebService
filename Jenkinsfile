pipeline {
  //agent { 
    //dockerfile {
      //args '-t pythonapp'
    //}
  //}
  //agent any
  environment { app='' }
  agent { dockerfile true }
  stages {
    stage('run') {
      script{
      app=docker.build("pythonapp")
      app.inside{
      sh 'pwd' }
      }
      //agent { dockerfile { reuseNode true } }
      //steps {
        //echo 'rrrr'
        //sh 'docker run --name app -tid -p 8081:8081 pythonapp'
        //sh 'docker ps'
        //echo 'uuuuu'
      //}
    }
    
    stage('test') {
      //agent { dockerfile { reuseNode true } }
      steps {
        //sh 'docker exec -tid app sh -c "python3 -m unittest unitTest.py"'
        sh 'ls && pwd'
        sh 'python3 -m unittest unitTests.py'
      }
    }
  }
}
