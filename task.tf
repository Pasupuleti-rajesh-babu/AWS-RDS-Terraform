provider "aws"{
    region = "ap-south-1"
    
    profile = "rajesh"
}


provider "kubernetes" {
    config_context_cluster = "minikube"
}
