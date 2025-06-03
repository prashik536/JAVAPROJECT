# 🚀 Java Spring Boot + Docker + Kubernetes Demo

A simple Spring Boot web application that serves a styled HTML page using Thymeleaf. It’s containerized with Docker and ready to be deployed on Kubernetes.

---

## 🌟 Features

- Java 17 + Spring Boot 3
- Thymeleaf template engine
- Dockerfile for containerization
- Kubernetes deployment + service
- Clean, responsive HTML UI

---

## 📁 Project Structure

```
java-docker-k8s/
├── src/
│   ├── main/
│   │   ├── java/com/example/demo/
│   │   │   ├── DemoApplication.java
│   │   │   └── HelloController.java
│   │   └── resources/
│   │       ├── templates/index.html
│   │       └── application.properties
├── Dockerfile
├── deployment.yaml
├── service.yaml
├── .gitignore
├── pom.xml
└── README.md
```

---

## 🧪 Run Locally

### 1. Build the project
```bash
mvn clean package
```

### 2. Run the app
```bash
java -jar target/demo-0.0.1-SNAPSHOT.jar
```

### 3. Access the app
Open: [http://localhost:8080](http://localhost:8080)

To use a different port, set it in `application.properties`:
```properties
server.port=9090
```

---

## 🐳 Docker

### 1. Build Docker image
```bash
docker build -t your-dockerhub-username/java-demo .
```

### 2. Run container
```bash
docker run -p 8080:8080 your-dockerhub-username/java-demo
```

---

## ☸️ Kubernetes

### 1. Push image
```bash
docker push your-dockerhub-username/java-demo
```

### 2. Apply Kubernetes manifests
```bash
kubectl apply -f deployment.yaml
kubectl apply -f service.yaml
```

### 3. Get app URL

For Minikube:
```bash
minikube service java-demo-service
```

For LoadBalancer:
```bash
kubectl get service java-demo-service
```

---

## 🎨 HTML Page Preview

Located at: `src/main/resources/templates/index.html`

```html
<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org">
<head>
  <title>Hello Page</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      background: linear-gradient(to right, #6dd5fa, #2980b9);
      color: white;
      text-align: center;
      padding-top: 100px;
    }
    .container {
      background: rgba(255, 255, 255, 0.1);
      padding: 40px;
      border-radius: 12px;
      display: inline-block;
    }
    h1 {
      font-size: 2.5em;
    }
  </style>
</head>
<body>
  <div class="container">
    <h1 th:text="${message}">Hello from Spring Boot!</h1>
    <p>Deployed via Docker & Kubernetes.</p>
  </div>
</body>
</html>
```

---

## 📄 .gitignore

Recommended contents for `.gitignore`:
```
/target
*.log
*.class
*.jar
*.war
*.iml
.idea/
*.swp
.DS_Store
```

---

## 📦 Technologies Used

- Java 17
- Spring Boot 3
- Thymeleaf
- Docker
- Kubernetes (kubectl, Minikube, or cloud)
- Maven

---

## 📝 License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.
