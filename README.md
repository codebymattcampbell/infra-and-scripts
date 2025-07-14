# DevOps Engineer Lab Prep: Docker, Kubernetes, and Python

A hands-on checklist and quickstart repo for practicing real-world tasks in Docker, Kubernetes, and Python.

---

## 🐳 Docker

### ✅ Task: Write and Build a Multi-Stage Dockerfile
- Create a minimal Python Flask app
- Add a multi-stage `Dockerfile`
- Build the image and run it locally

### ✅ Task: Use Docker Compose
- Link a Flask API with Redis
- Expose ports and volumes

### ✅ Task: Scan Image with Trivy
```bash
trivy image my-app:latest
```

---

## ☸️ Kubernetes

### ✅ Task: Deploy a Flask App
- Write `Deployment.yaml`, `Service.yaml`, and `Ingress.yaml`
- Apply to a local `kind` or `minikube` cluster

### ✅ Task: Inject Config and Secret
- Create a `.env` file and move values to ConfigMap + Secret

### ✅ Task: Liveness/Readiness Probes
- Add health check endpoints to Flask
- Use them in your Deployment spec

### ✅ Task: Helm Deployment
- Create a basic `Chart.yaml`
- Parameterize image tag and resource limits

---

## 🐍 Python for DevOps

### ✅ Task: API Script with Requests
```python
import requests
resp = requests.get("https://api.github.com/repos/python/cpython")
print(resp.json()["description"])
```

### ✅ Task: Parse JSON/YAML Config
- Create a script that loads and prints keys from `config.yaml`

### ✅ Task: Run Shell Commands
```python
import subprocess
out = subprocess.run(["kubectl", "get", "pods"], capture_output=True, text=True)
print(out.stdout)
```

---

## 🚀 Optional Advanced
- Prisma Cloud CLI integration
- Terraform to provision EKS
- GitHub Actions workflow to test and deploy app

---

Want to contribute? Fork this and add your own prep challenges.

---

> Built for hands-on DevOps interview prep, security consulting roles, and infrastructure bootcamps.
