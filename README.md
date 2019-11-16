# How to build and run the Resin docker image?
- Step 1: Build the docker image from the Dockerfile. We may change the tag name of your own.<br />
docker build -t gcr.io/PROJECT_ID/hello-node:v1 .

- Step 2: Run the docker image locally and map the container's port 8080 to the localhost. <br />
docker run -d -p 8080:8080 --name resin2019 gcr.io/PROJECT_ID/hello-node:v1

- Step 3: Test the Resin server by the following address on your localhost browser.  <br />
http://localhost:8080/

# Add JSP Website
- Step 4: Re-edit your Dockerfile. If we have the JSP applications under src folder, we use the command--> COPY src/ /var/resin/webapps/ROOT/

# Step 5 (Optinal): How to push docker image on Google Cloud Platform (GKE)?
- //Upload the image to the GCP and please ensure you have the right PROJECT_ID. <br />
- docker images //We get the [ImageID]
- docker tag [ImageID] gcr.io/PROJECT_ID/hello-node:v1
- gcloud auth configure-docker
- docker push gcr.io/PROJECT_ID/hello-node:v1
- gcloud container clusters create mycluster2019 --num-nodes 2 --machine-type g1-small --zone asia-east1-c
- kubectl run resincluster --image gcr.io/PROJECT_ID/hello-node:v1
- kubectl expose deployment resincluster --port 8080 --type=LoadBalancer
- kubectl get pods
- kubectl get service resincluster
- //update image
- kubectl set image deployment resincluster app=gcr.io/PROJECT_ID/hello-node:v2

# Step 6: Clean up
- docker stop resin2019  <br />
- docker rm resin2019  <br />
- docker rmi gcr.io/PROJECT_ID/hello-node:v1  <br />