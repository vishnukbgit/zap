pipeline{
    agent any
    stages {
        stage('Test in ZAP') {
            steps {
                sh "pwd"
                sh "ls -ls"
		sh "touch newfile"
		sh "mkdir newdir"
                sh "docker run --rm -v ${WORKSPACE}:/zap/wrk -t owasp/zap2docker-weekly zap-api-scan.py -t swagger.json -f openapi "
                
                //sh "aws s3 cp testreport.html s3://vishnu-test-s3 "
            }  
        }
    }
}

