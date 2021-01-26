pipeline{
    agent{
        node{
            label 'maven'
        }
    }
    parameters{
        string()
    }
    environment{

    }

    stages{
        stage('checkout scm'){
            steps{
                checkout(scm)
            }
        }
        stage('unit test'){
            steps{
                container('maven'){
                    sh 'mvn clean test'
                }
            }
        }
        
        stage('build and push'){
            steps{
                container('maven'){
                    sh 'mvn -Dmanven.test.ship=true clean package'
                    sh 'docker build -f dockerfile -t'
                }
            }
        }
    }
}