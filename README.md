# Tesseract Docker Playground

A repository to test out how to get a Tesseract schema repo working as a ready-to-go containerized service.

## Setup 

To setup a new Tesseract service, use one of the following methods:
- [Google Cloud Run serverless setup](./documentation/SETUP_GCR.md)

## Create Local Docker Image

### Build the Docker Image

For building a new container image, run the following command:

```
docker build -t datawheel/cfc-tesseract:<IMAGE-TAGNAME> .
```

### Deploy the Docker Image

For deploying a container image locally, run the following command:

```
docker run \
  --name=cfc-tesseract \
  -e TESSERACT_DATABASE_URL=<CLICKHOUSE_DB_URL> \
  -e TESSERACT_DEBUG=true \
  -e RUST_LOG=debug \
  -p 7777:7777 \
  datawheel/cfc-tesseract:<IMAGE-TAGNAME>
```

### Pushing to Docker Hub

Before pushing the container image to the Docker Hub repo, login to the Docker Hub account with the following command:

```
docker login -u datawheel
```

For pushing the image to Docker Hub, run the following command:

```
docker push datawheel/cfc-tesseract:<IMAGE-TAGNAME>
```

### Pushing to Google Artifact Registry

For this, check the github actions workflow.

**MORE DOCUMENTATION COMING SOON!**
