
# AWS Web Application Deployment with ALB + ASG + S3

## Overview
This repository contains the deployment of the Clarusway Bootcamp Website using AWS services such as S3 for static assets, Auto Scaling Group (ASG) for NGINX web servers, and Application Load Balancer (ALB) for traffic distribution.

## Deployment Architecture
1. **S3 for static assets**: The `index.html` and logos are hosted on an S3 bucket with static website hosting enabled.
2. **Auto Scaling Group (ASG)**: NGINX servers are launched and managed using an ASG with a minimum of 1 instance and a maximum of 3 instances.
3. **Application Load Balancer (ALB)**: An ALB is used to distribute traffic across the NGINX instances, ensuring high availability and load balancing.

## URLs
- **S3 Website URL**: [http://renad-clarusway-assets.s3-website.eu-north-1.amazonaws.com](http://renad-clarusway-assets.s3-website.eu-north-1.amazonaws.com)
- **ALB URL**: [http://clarusway-alb-949124468.eu-north-1.elb.amazonaws.com](http://clarusway-alb-949124468.eu-north-1.elb.amazonaws.com)

## Tasks Completed:
### Part 1: S3 Setup (Static Assets)
- Created the S3 bucket `renad-clarusway-assets` in the `eu-north-1` region.
- Uploaded the following files:
  - `index.html`
  - Logos: `logo.png`, `sda.png`
- Configured S3 for static website hosting.
- Set bucket policy for public read access.

### Part 2: Auto Scaling Group (ASG)
- Created a launch template with a user data script to install and configure NGINX. The user data script installs NGINX, starts the service, and copies the `index.html` from the S3 bucket to the web server's root directory.
- Configured ASG with:
  - Min: 1, Max: 3, Desired: 2
  - Health checks for EC2 and ELB
  
### Part 3: Application Load Balancer (ALB)
- Created an internet-facing ALB with:
  - HTTP listener on port 80
  - Target group with health checks on `/`
- Verified access via ALB DNS name and round-robin traffic distribution.

Note: The Auto Scaling Group was configured manually using the AWS Management Console, without using an external configuration file.

#Conclusion

The website is now successfully deployed with high availability and proper traffic distribution across all components.
