pipeline{
    agent any
    stages {
        stage('Test in ZAP') {
            steps {
                 sh "./script.sh"
                 sh "aws s3 ls s3://vishnu-test-s3"
                 sh "aws s3 cp testreport.html s3://vishnu-test-s3"
            }  
        }
        
    }
}

