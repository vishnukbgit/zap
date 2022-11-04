mkdir -p ${WORKSPACE}/out
chmod 777 ${WORKSPACE}/out
cp swagger.json ${WORKSPACE}/out/swagger.json
docker run -v ${WORKSPACE}/out:/zap/wrk/:rw owasp/zap2docker-weekly zap-api-scan.py -t swagger.json -f openapi -g gen.conf -r testreport.html 2> /dev/null; (($? == 2)) && echo 'Done' >&2
cp ${WORKSPACE}/out/testreport.html ${WORKSPACE}/testreport.html