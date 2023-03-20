FROM maven:3-eclipse-temurin-17-alpine as builder
RUN mkdir /build
WORKDIR /build
COPY . .
RUN mvn package

FROM eclipse-temurin:17-jre-alpine
RUN mkdir /app
WORKDIR /app
COPY --from=builder /build/target/jmx-tester-1.0.0.jar /app/jmx-test.jar
COPY entrypoint.sh /app
ENTRYPOINT [ "/app/entrypoint.sh" ]

