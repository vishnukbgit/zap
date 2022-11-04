pipeline{
    agent any
    stages {
        stage('Test in ZAP') {
            steps {
                sh "pwd"
                sh "ls -ls"
                sh """#!/usr/bin/env bash

			docker rm $(docker ps -a -f status=exited -q)
			# docker rmi $(docker images --filter "dangling=true" -q --no-trunc)

			docker pull owasp/zap2docker-live

			echo DEBUG - mkdir -p $PWD/out
			mkdir -p $PWD/out

			echo DEBUG - chmod 777 $PWD/out
			chmod 777 $PWD/out

			test -d ${PWD}/out \
  			&& docker run -v $(pwd)/out:/zap/wrk/:rw -t owasp/zap2docker-live zap-api-scan.py -f openapi -d -r zap_scan_report.html  """

                //sh "aws s3 cp testreport.html s3://vishnu-test-s3 "
            }  
        }
    }
}

