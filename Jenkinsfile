pipeline{
  agent none
  def app
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
     stage('Build image') {
        /* This builds the actual image; synonymous to
         * docker build on the command line */

        app = docker.build("getintodevops/hellonode")
    }

  }
}
