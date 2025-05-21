# Spring Boot 2 REST Student Service Example

This project is a simple Spring Boot REST API for managing students, demonstrating CRUD operations using Spring Data JPA and an H2 in-memory database.

## Features

- List all students
- Get a student by ID
- Create a new student
- Update an existing student
- Delete a student

## Technologies Used

- Java 17
- Spring Boot 2.x
- Spring Data JPA
- H2 Database (in-memory)
- Maven
- Docker

## Getting Started

### Prerequisites

- Java 17+
- Maven 3.6+
- Docker (optional, for containerization)

### Build and Run Locally

1. **Clone the repository:**

   ```sh
   git clone <your-repo-url>
   cd spring-boot-2-rest-service-basic
   ```
2. **Build the project:**

   ```sh
   mvn clean package
   ```
3. **Run the application:**

   ```sh
   mvn spring-boot:run
   ```

   The app will start on [http://localhost:8080](http://localhost:8080).

### API Endpoints

| Method | Endpoint           | Description          |
| ------ | ------------------ | -------------------- |
| GET    | `/students`      | List all students    |
| GET    | `/students/{id}` | Get student by ID    |
| POST   | `/students`      | Create a new student |
| PUT    | `/students/{id}` | Update a student     |
| DELETE | `/students/{id}` | Delete a student     |

### Sample Data

Sample students are loaded at startup from `src/main/resources/data.sql`.

### Docker

1. **Build the Docker image:**

   ```sh
   docker build -t spring-boot-rest-example .
   ```
2. **Run the container:**

   ```sh
   docker run -p 8080:8080 spring-boot-rest-example
   ```

## License

This project is for educational purposes.

---

**Author:** Param
