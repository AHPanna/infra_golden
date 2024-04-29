# infra de golden
- tuto : https://medium.com/@vladkens/aws-ecs-cluster-on-ec2-with-terraform-2023-fdb9f6b7db07
- remplacer sur access key et secret key dans provider.tf
- lancer le docker images si besoin attention un serveur web pour le test:

```
# Get AWS repo url from Terraform outputs
export REPO=$(terraform output --raw app_repo_url)
# Login to AWS ECR
aws ecr get-login-password | docker login --username AWS --password-stdin $REPO

# Pull docker image & push to our ECR
docker pull --platform linux/amd64 strm/helloworld-http:latest
docker tag strm/helloworld-http:latest $REPO:latest
docker push $REPO:latest
```


## run
``` terraform init ```

``` terraform plan ```

``` terraform apply ```

``` terraform destroy ```

## ssh
```
ssh ec2-user@IP_PUBLIC_EC2 -i id_rsa
sudo su
docker ps

docker exec -it MyContainer bash
```