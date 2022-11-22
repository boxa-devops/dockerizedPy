aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin 763701258901.dkr.ecr.us-east-1.amazonaws.com
# Build and Push Receive
docker build -t receive -f receive_service/Dockerfile receive_service/
docker tag receive 763701258901.dkr.ecr.us-east-1.amazonaws.com/receive
docker push 763701258901.dkr.ecr.us-east-1.amazonaws.com/receive:latest
# Build and Push Send
#docker build -t send -f send_service/Dockerfile send_service/
#docker tag send 763701258901.dkr.ecr.us-east-1.amazonaws.com/send
#docker push 763701258901.dkr.ecr.us-east-1.amazonaws.com/send:latest




