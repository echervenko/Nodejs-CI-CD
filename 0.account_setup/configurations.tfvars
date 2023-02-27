# Please get your AWS Domain
google_domain_name = "chervenko.com"

# Use GCP account email
email              = "echervenko6@gmail.com"

# Add bucketname you created above
BUCKET_NAME        = "terraform-project-echervenko2"

# Add project name you created above
PROJECT_ID         = "annular-welder-377100" 


nodejs-config = {
    repository_id = "team2-nodejs"

    namespace_name = "team2-nodejs"

    tag = "latest"

    deployment_name = "nodejs-app"

    image-repository = "us-central1-docker.pkg.dev/terraform-project-echervenko/team2-nodejs/nodejs"  

    host = "nodejs-app.chervenko.com"
}