# Chọn image base là Java
FROM openjdk:17-jdk-slim

# Thiết lập thư mục làm việc
WORKDIR /app

# Copy mã nguồn vào container
COPY . /app

# Build dự án Spring Boot
RUN ./mvnw clean install

# Chạy ứng dụng Spring Boot
CMD ["java", "-jar", "target/tiktok-connect-0.0.1-SNAPSHOT.jar"]