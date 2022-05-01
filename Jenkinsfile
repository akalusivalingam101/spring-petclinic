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
        bat 'docker build -t spring-petclinic-jfrog-demo:latest .'
      }
    }
     stage('Push image to JFrog Artifactory') {
        withDockerRegistry([ credentialsId: "artifactory", url: "https://ananthakalusivalingam.jfrog.io" ]) {
        bat 'docker push spring-petclinic-jfrog-demo:latest'
        }
     }
  }
}
