pipeline {
  agent any
  stages {
    stage('this is test dragon') {
      steps {
        sh '''
        echo asdf
        '''
      }
    }
   stage('docker build') {
      steps {
        sh '''
        
        docker build -t main -f Dockerfile-m .
        docker build -t board -f Dockerfile-b .
        docker build -t product -f Dockerfile-p .
        docker tag main 582858263322.dkr.ecr.ap-northeast-2.amazonaws.com/happydraw-main:latest
        docker tag main 582858263322.dkr.ecr.ap-northeast-2.amazonaws.com/happydraw-board:latest
        docker tag main 582858263322.dkr.ecr.ap-northeast-2.amazonaws.com/happydraw-product:latest
        
        
        
        '''
      }
    }
   stage('main img push') {
      steps {
          docker.withRegistry("https://582858263322.dkr.ecr.ap-northeast-2.amazonaws.com", "ecr:ap-northeast-2:" + "Happydraw")     {
         
          docker.image("582858263322.dkr.ecr.ap-northeast-2.amazonaws.com/happydraw-main:latest").push()       // tag 정보
               }
       }
    }
   stage('product img push') {
      steps {
        sh '''
        docker tag product 582858263322.dkr.ecr.ap-northeast-2.amazonaws.com/happydraw-product
        aws ecr get-login-password --region ap-northeast-2 | docker login --username AWS --password-stdin 582858263322.dkr.ecr.ap-northeast-2.amazonaws.com/happydraw-product
        docker image push 582858263322.dkr.ecr.ap-northeast-2.amazonaws.com/happydraw-product
        '''
      }
    }
   stage('board img push') {
      steps {
        sh '''
        docker tag board 582858263322.dkr.ecr.ap-northeast-2.amazonaws.com/happydraw-board
        aws ecr get-login-password --region ap-northeast-2 | docker login --username AWS --password-stdin 582858263322.dkr.ecr.ap-northeast-2.amazonaws.com/happydraw-board
        docker image push 582858263322.dkr.ecr.ap-northeast-2.amazonaws.com/happydraw-board
        '''
      }
    }
   stage('k8s apply') {
      steps {
        sh '''
        kubectl apply -f main.yml -f board.yml -f product.yml
        '''
      }
    }
   }
  }
