pipeline{
  agent none
  stages{
    stage('Compile'){
      agent any
      steps{
        bat 'mvn compile'
      }
    }
    stage('Test'){
      agent any
      steps{
        bat 'mvn test'
      }
    }
    stage('Package'){
      agent any
      steps{
        bat 'mvn package'
      }
    }
    stage('Docker Build') {
      agent any
      steps {
        bat 'docker build -t ananthak/spring-petclinic-jfrog-demo:latest .'
      }
    }
     stage('JFrog Artifactory Push') {
      agent any
      steps {
        withCredentials([usernamePassword(credentialsId: 'jfrogartifactory', passwordVariable: 'jfrogartifactoryPassword', usernameVariable: 'jfrogartifactoryUser')]) {
          bat "docker login -u ${env.jfrogartifactoryUser} -p ${env.jfrogartifactoryPassword} ananthakalusivalingam.jfrog.io"
          bat "docker tag umaan/spring-petclinic-jfrog-demo:latest ananthakalusivalingam.jfrog.io/default-docker-local/spring-petclinic-jfrog-demo:latest"
          bat 'docker push ananthakalusivalingam.jfrog.io/default-docker-local/spring-petclinic-jfrog-demo:latest'
        }
      }
     }
  }
}
