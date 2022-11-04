pipeline{
    agent any
    stages {
        stage('Test in ZAP') {
            steps {
                //cleanWs()
                sh "mkdir -p ${WORKSPACE}/out"
                sh "chmod 777 ${WORKSPACE}/out"
                sh "cp swagger.json ${WORKSPACE}/out/swagger.json"
  			    sh "docker run -v ${WORKSPACE}/out:/zap/wrk/:rw owasp/zap2docker-weekly zap-api-scan.py -t swagger.json -f openapi -g gen.conf -r testreport.html"
                sh "cp ${WORKSPACE}/out/testreport.html ${WORKSPACE}/testreport.html"
                //sh "aws s3 cp testreport.html s3://vishnu-test-s3 "
                sh 'exit 1'
            }  
        }
        stage('copy in ZAP') {
            steps {
                sh "cp  ${WORKSPACE}/out/testreport.html ${WORKSPACE}/out/zapreport.html"
                sh 'exit 0'
            }
        }
    }
}

