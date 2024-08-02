# Deployment Instructions

## Prerequisites

- Azure subscription
- IIS server

## Steps

1. Set up the IIS server by running the following script:
    ```sh
    ./scripts/iis-setup.ps1
    ```

2. Publish the application:
    ```sh
    ./scripts/app-publish.ps1
    ```

3. Deploy the application to Azure:
    ```sh
    ./scripts/deploy.ps1 -webAppName <your-web-app-name> -resourceGroupName <your-resource-group-name> -subscriptionId <your-subscription-id>
    ```

4. Configure the Azure DevOps pipeline by updating the `azure-pipelines.yml` file with your Azure subscription and web app details.

5. Commit and push your changes to trigger the pipeline.
    ```sh
    git add .
    git commit -m "Setup CI/CD pipeline"
    git push origin main
    ```
