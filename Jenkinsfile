pipeline {
  //agent { 
    //dockerfile {
      //args '-t pythonapp'
    //}
  //}
  //agent any
  script { def app }
  agent { dockerfile true }
  stages {
    stage('run') {
      
      //agent { dockerfile { reuseNode true } }
      steps {
      script{
      app=docker.build("pythonapp")
      
      }
        app.inside{
      sh 'pwd' 
      echo 'rrrr'}
        sh 'pwd' 
        //sh 'docker run --name app -tid -p 8081:8081 pythonapp'
        //sh 'docker ps'
        //echo 'uuuuu'
      }
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
