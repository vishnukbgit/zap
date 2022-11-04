pipeline{
    agent any
    stages {
        stage('Test in ZAP') {
            steps {
            //cleanWs()
                sh "pwd"
                sh "ls -ls"
                sh """mkdir -p ${WORKSPACE}/out \
                chmod 777 ${WORKSPACE}/out \
                cp swagger.json ${WORKSPACE}/out/swagger.json \
                ls -la \
  			    docker run -v ${WORKSPACE}/out:/zap/wrk/:rw owasp/zap2docker-weekly zap-api-scan.py -t swagger.json -f openapi -g gen.conf -r testreport.html"""

                //sh "aws s3 cp testreport.html s3://vishnu-test-s3 "
            }  
        }
    }
}

