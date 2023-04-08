pipeline {
  environment {
     registry1 = '582858263322.dkr.ecr.ap-northeast-2.amazonaws.com/happydraw-board'     // 개발 AWS에 생성한 컨슈머용 ECR 주소
     registryCredential1 = 'Happydraw'                                                                  // Jenkins에 셋팅한 AWS용 Credential ID
     app1 = ''
    
     registry2 = '582858263322.dkr.ecr.ap-northeast-2.amazonaws.com/happydraw-main'     // 개발 AWS에 생성한 컨슈머용 ECR 주소
     registryCredential2 = 'Happydraw'                                                                  // Jenkins에 셋팅한 AWS용 Credential ID
     app2 = ''
    
     registry3 = '582858263322.dkr.ecr.ap-northeast-2.amazonaws.com/happydraw-product'     // 개발 AWS에 생성한 컨슈머용 ECR 주소
     registryCredential3 = 'Happydraw'                                                                  // Jenkins에 셋팅한 AWS용 Credential ID
     app3 = ''
    }
  
  agent any
  stages {
   stage('Docker Build') {
       steps {
         script {
                 app1 = docker.build("happydraw-board:latest", "-f Dockerfile-b .")
                }
            }
        }
    
    stage('Push Image') {
      steps {
        script{
           docker.withRegistry("https://" + registry1, "ecr:ap-northeast-2:" + registryCredential1) {
             // withRegistry(이미지 올릴 ECR 주소, Credentail ID) 이렇게 셋팅하면 된다.
           app.push("latest")       // tag 정보
               }
           }
         }
       }
 
   stage('main img push') {
      steps {
        sh '''
        docker tag main 582858263322.dkr.ecr.ap-northeast-2.amazonaws.com/happydraw-main
        aws ecr get-login-password --region ap-northeast-2 | docker login --username AWS --password-stdin 582858263322.dkr.ecr.ap-northeast-2.amazonaws.com/happydraw-main
        docker image push 582858263322.dkr.ecr.ap-northeast-2.amazonaws.com/happydraw-main
        '''
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
