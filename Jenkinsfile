pipeline {
  agent any

  stages {
    stage('Build') {
      steps {
        sh 'chmod +x build.sh'
        sh './build.sh'
      }
    }
    
    stage('Deploy') {
      steps {
        withCredentials([usernamePassword(credentialsId: "${DOCKER_REGISTRY_CREDS}", passwordVariable: 'DOCKER_PASSWORD', usernameVariable: 'DOCKER_USERNAME')]) {
          sh "echo \$DOCKER_PASSWORD | docker login -u \$DOCKER_USERNAME --password-stdin docker.io"
          sh 'docker push $DOCKER_USERNAME/prod:capstoneproject'
        }
      }
    }
    
  }

post{
      always{
            sh 'chmod +x deploy.sh'
            sh './deploy.sh'
            
            
        }
    }

}
