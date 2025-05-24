# Spring Boot 2 REST Student Service Example

This project is a simple Spring Boot REST API for managing students, demonstrating CRUD operations using Spring Data JPA and an H2 in-memory database. It is integrated with Azure DevOps and Azure Container Instances (ACI) for CI/CD pipeline deployment.

---

## 🛠️ Technologies Used

- Java 17
- Spring Boot 2.x
- Spring Data JPA
- H2 Database (in-memory)
- Maven
- Docker
- Azure Container Registry (ACR)
- Azure Container Instances (ACI)
- Azure DevOps Pipelines (CI/CD)

---

### Prerequisites

- Java 17+
- Maven 3.6+
- Docker (for local use)
- Azure Account
- Azure DevOps Account

---

## Build and Run Locally

1. **Clone the repository:**

   ```bash
   git clone <your-repo-url>
   cd spring-boot-2-rest-service-basic
   ```
2. **Build the project:**

   ```bash
   mvn clean package
   ```
3. **Run the application:**

   ```bash
   mvn spring-boot:run
   ```

   App runs at: [http://localhost:8080](http://localhost:8080)

---

## API Endpoints

| Method | Endpoint           | Description          |
| ------ | ------------------ | -------------------- |
| GET    | `/students`      | List all students    |
| GET    | `/students/{id}` | Get student by ID    |
| POST   | `/students`      | Create a new student |
| PUT    | `/students/{id}` | Update a student     |
| DELETE | `/students/{id}` | Delete a student     |

Sample students are loaded at startup from `src/main/resources/data.sql`.

---

## Docker Support

1. **Build the Docker image:**

   ```bash
   docker build -t spring-boot-rest-example .
   ```
2. **Run the container:**

   ```bash
   docker run -p 8080:8080 spring-boot-rest-example
   ```

---

## ☁️ Azure DevOps CI/CD Pipeline

### What’s Been Completed:

- ✅ Dockerized the Spring Boot application
- ✅ Created Azure Resource Group: `rg-springboot`
- ✅ Created Azure Container Registry: `springbootacr2025`
- ✅ Built and pushed Docker image to ACR
- ✅ Created Service Principal and DevOps Service Connection: `azure-service-conn-spring`
- ✅ Wrote `azure-pipelines.yml` with:
  - Maven JAR build
  - Docker image build & push to ACR
  - Deployment to Azure Container Instances (ACI)

---

### Why the Deployment Is Incomplete

Azure DevOps requires permission to use Microsoft-hosted agents for running pipelines. As this DevOps organization is newly created, **Microsoft has not yet granted free parallel job capacity**.

I have submitted a formal request using [this official form](https://aka.ms/azpipelines-parallelism-request) and is currently pending approval.

Once granted, the full CI/CD process will execute successfully and deploy the app to ACI.

---

---

**Author:** Param Yadav
