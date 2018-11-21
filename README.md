# How to build and run the Resin docker image?
- Step 1: Build the docker image from the Dockerfile. We may change the tag name of your own.<br />
docker build -t gcr.io/PROJECT_ID/hello-node:v1 .

- Step 2: Run the docker image locally and map the container's port 8080 to the localhost. <br />
docker run -d -p 8080:8080 gcr.io/PROJECT_ID/hello-node:v1

- Step 3: Test the Resin server by the following address on your localhost browser.  <br />
http://localhost:8080

# Add JSP programs
- Step 4: Re-edit your Dockerfile. If you a index.jsp file, we use the command--> COPY index.jsp /var/resin/webapps/ROOT/
- Step 5: Re-edit your Dockerfile. If you a directory, we use the command--> COPY src/ /var/resin/webapps/ROOT/
# Optinal: How to push docker image on Google Cloud Platform (GKE)?
- Step 6: Upload the image to the GCP and please ensure you have the right PROJECT_ID. <br />
gcloud docker push gcr.io/PROJECT_ID/hello-node:v1

- Step 5: Start a small container cluster  <br />
gcloud container clusters get-credentials hello-world --num-nodes 1 --machine-type g1-small
