# PMW Kubernetes Configurations

This repository contains the configuration files for the PMW Kubernetes cluster.

## Structure

The repository is structured as follows (in alphabetical order):

- `auth-service`: Contains the configuration for the Auth Service.
- `cart-service`: Contains the configuration for the Cart Service.
- `email-service`: Contains the configuration for the Email Service.
- `inventory-service`: Contains the configuration for the Inventory Service.
- `order-service`: Contains the configuration for the Order Service.
- `product-service`: Contains the configuration for the Product Service.
- `user-service`: Contains the configuration for the User Service.

Each folder contains a variety of Kubernetes resources for the respective service. The `README.md` file in each folder provides detailed information about the resources contained within.

## Usage

To apply the configuration for a service, navigate to the service's folder and run the following command:

```bash
kubectl apply -f .
```

Make sure to replace `.` with the specific YAML file if needed.

## ArgoCD

This repository is integrated with ArgoCD for continuous delivery and GitOps. ArgoCD helps in maintaining and managing the desired state of the Kubernetes cluster.

Visit the ArgoCD dashboard to view the applications and sync status:

```bash
argocd app list
argocd app get <APP_NAME>
```

## Architecture

The PMW Kubernetes cluster is built using the following components:

- [Helm](https://helm.sh/): A package manager for Kubernetes.
- [Kubernetes](https://kubernetes.io/): An open-source container-orchestration system for automating application deployment, scaling, and management.
- [NGINX Ingress Controller](https://kubernetes.github.io/ingress-nginx/): An Ingress controller that uses ConfigMap to store the NGINX configuration.
- [ArgoCD](https://argoproj.github.io/argo-cd/): A declarative, GitOps continuous delivery tool for Kubernetes.
