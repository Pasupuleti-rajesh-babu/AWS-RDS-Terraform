# AWS-RDS-Terraform

<h1>Deploying Wordpress Application On Kubernetes With AWS RDS Using Terraform</h1>
<img src="https://miro.medium.com/max/1400/1*6aMa8fOkcpW1V7QzVEmPKw.png" alt="aws-rds">
<u>https://medium.com/@p.rajeshbabu6666/deploying-wordpress-application-on-kubernetes-with-aws-rds-using-terraform-242a67294cbb</u>


<h1>Problem Statement:</h1>
<h3>Deploy the Wordpress application on Kubernetes and AWS using terraform</h3>
<ol>
  <li>.Writing an Infrastructure as code using Terraform, which automatically deploys the WordPress application</li>
<li>On AWS, use RDS service for the relational database for WordPress application.</li>
<li>Deploying WordPress as a container either on top of Minikube.</li>
<li>The WordPress application should be accessible from the public world if deployed on Minikube.</li>
</ol>
<h1>Prerequisites:</h1>
<ul>
<li>Terraform must be installed in the system.</li>
<li>AWS CLI must be there.</li>
<li>kubectl(client program for Kubernetes cluster)</li>
<li>Installed Minikube: You have to must install minikube before doing this task.</li>
<li>AWS Account for launching the RDS database by using terraform.</li>
  </ul>
<h1>What is Kubernetes</h1>
Kubernetes is a portable, extensible, open-source platform for managing containerized workloads and services. On K8S (short for Kubernetes) we create containers and launch our application on top of these containers. Containers provide isolation and everything is managed by K8S.
<h1>What are Containers</h1>
A container is a standard unit of software that packages up code and all its dependencies so the application runs quickly and reliably from one computing environment to another.
<h1>What is the need of Kubernetes</h1>
Containers are a good way to bundle and run your applications. In a production environment, you need to manage the containers that run the applications and ensure that there is no downtime. For example, if a container goes down, another container needs to start. This is where Kubernetes helps us. Everything is managed by Kubernetes itself. We just need to specify the templates of the container and Kubernetes will do its job.
<h1>What is AWS-RDS</h1>
Amazon Relational Database Service (Amazon RDS) makes it easy to set up, operate, and scale a relational database in the cloud. It provides cost-efficient and resizable capacity while automating time-consuming administration tasks such as hardware provisioning, database setup, patching, and backups.
Why Terraform
Terraform provides full lifecycle management of Kubernetes resources including the creation and deletion of pods, replication controllers, and services.
Unlike the kubectl CLI, Terraform will wait for services to become ready before creating dependent resources. This is useful when you want to guarantee the state following the command’s completion. As a concrete example of this behavior, Terraform will wait until service is provisioned so it can add the service’s IP to a load balancer. No manual processes are necessary!…
