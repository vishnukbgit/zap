pipeline{
    agent any
    environment {
        AWS_ACCESS_KEY="AKIAW6R3ZJ22CCXVGEUS"
        AWS_SECRET_KEY="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"
    }
    stages {
        stage('Test in ZAP') {
            steps {
                 sh "./script.sh"
                 sh "aws s3 cp testreport.html s3://vishnu-test-s3"
            }  
        }
        
    }
}

