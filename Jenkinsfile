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
     stage('Docker Push') {
      agent any
      steps {
        withCredentials([usernamePassword(credentialsId: 'dockerHub', passwordVariable: 'dockerHubPassword', usernameVariable: 'dockerHubUser')]) {
          sh "docker login -u ${env.dockerHubUser} -p ${env.dockerHubPassword}"
          sh 'docker push shanem/spring-petclinic:latest'
        }
      }
  }
}
