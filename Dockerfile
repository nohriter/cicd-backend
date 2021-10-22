FROM openjdk:11 AS builder

COPY . .

RUN ["./gradlew", "assemble"]

FROM openjdk:11

COPY --from=builder /build/libs/studyhalrae-0.0.1-SNAPSHOT.jar .

CMD ["java", "-jar", "studyhalrae-0.0.1-SNAPSHOT.jar"]
