pipeline{
    agent any
    stages {
        stage('Test in ZAP') {
            steps {
                sh "pwd"
                sh "ls -ls"
                sh """echo DEBUG - mkdir -p ${WORKSPACE}/out \
			mkdir -p ${WORKSPACE}/out

			echo DEBUG - chmod 777 ${WORKSPACE}/out \
			chmod 777 ${WORKSPACE}/out \
			test -d ${WORKSPACE}/out \
            cp swagger.json ${WORKSPACE}/out/swagger.json \
  			docker run -v ${WORKSPACE}/out:/zap/wrk/:rw -t owasp/zap2docker-weekly zap-api-scan.py -t swagger.json -f openapi -g gen.conf -r testreport.html"""

                //sh "aws s3 cp testreport.html s3://vishnu-test-s3 "
            }  
        }
    }
}

