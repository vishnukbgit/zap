pipeline{
    agent any
    stages {
        stage('Test in ZAP') {
            steps {
                sh "pwd"
                sh "ls -ls"
                sh "docker run --rm -v ${pwd}:/zap/wrk/:rw -t owasp/zap2docker-weekly zap-api-scan.py -t swagger.json -f openapi -g gen.conf -r testreport.html"
                
                //sh "aws s3 cp testreport.html s3://vishnu-test-s3 "
            }  
        }
    }
}

