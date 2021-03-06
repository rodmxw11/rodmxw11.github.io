@setlocal
@echo off

@rem -- See: https://en.wikipedia.org/wiki/Percent-encoding#Percent-encoding_reserved_characters
set encode_question=%%3F
set encode_pound=%%23

set dummy_ehr_url=https://rodmxw11.github.io
set pwa_url=https://mdx-pwa-dev-personal-3.cmdx-k8s-2nodes-1zone.us-south.containers.appdomain.cloud
set /p jwt_token=<jwt.txt

set ehr_launch_url=%dummy_ehr_url%?pwa_iframe_url=%pwa_url%/%encode_pound%/gateway%encode_question%jws=%jwt_token%

echo %ehr_launch_url%

start chrome %ehr_launch_url%