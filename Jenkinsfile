pipeline {
  agent any
  // any, none, label, node, docker, dockerfile, kubernetes

  stages {
    stage('Example') {
      steps {
        sh 'just test'
        echo 'Hello World'
        }
    }
  }
}
