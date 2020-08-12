mkdir jenkins-pipeline && cd jenkins-pipeline

docker run --rm -d \
--name jenkins \
-u root \
-p 8080:8080 \
-v jenkins-data:/var/jenkins_home \
-v /var/run/docker.sock:/var/run/docker.sock \
-v "$HOME":/home \
jenkinsci/blueocean


docker container exec jenkins cat /var/jenkins_home/secrets/initialAdminPassword

# Plugins include the GitHub integration, an email extension, Maven and Gradle integration, and so on.


