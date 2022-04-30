pipeline{
  agent none
  stages{
    stage('Compile'){
      agent any
      steps{
        sh 'mvn compile'
      }
    }
    stage('Test'){
      agent any
      steps{
        sh 'mvn test'
      }
    }
    stage('Package'){
      agent any
      steps{
        sh 'mvn package'
      }
    }

  }
}
