# How to build and run your docker image on Google Cloud Platform
Step 1: Add a file name as Dockerfile
vi Dockerfile

Step 2: Copy and paste the content from our example

Step 3: Build the docker image on the Google Cloud
docker build -t gcr.io/PROJECT_ID/hello-node:v1 .

Step 4: Run the docker image locally
docker run -d -p 8080:8080 gcr.io/PROJECT_ID/hello-node:v1

Step 5: Test the Resin server and 
curl http://localhost:8080

Step 6: Check the container and stop it
docker ps
docker stop YOUR_CONTAINER_ID

Step 7: Upload the image to the GCP
gcloud docker push gcr.io/PROJECT_ID/hello-node:v1

--Step 8: Start a small container cluster 
--gcloud container clusters get-credentials hello-world --num-nodes 1 --machine-type g1-small
