---
title: "Database Server"
date: 2025-01-01
categories: [Programming Projects, Java]
tags: [Java, Maven, SQL, JUnit, Database]
image:
  path: /assets/img/posts/db-thumbnail.png
  lqip: /assets/img/posts/db-thumbnail-lqip.png # Or base64 URI
---

# Database Server

A custom database server project implementing a simplified version of SQL from scratch. This project showcases my advanced programming skills and understanding of database internals and query processing.

<!-- ![Database Server Thumbnail](/assets/img/db-thumbnail.png) -->

## Project Description

This project involves the development of a custom database server that provides users with a simplified SQL interface. The server was built entirely from scratch, including core components such as the parser and interpreter. It was developed using Java, Maven, and JUnit, ensuring robust functionality and thorough testing.

This project deepened my understanding of database internals, query processing, and efficient storage techniques, while also demonstrating my ability to handle complex software engineering challenges.

## Features

- **Implements Specified BNF**: A formal specification for the SQL syntax is followed, allowing for parsing of user commands.
- **Filesystem-Based Storage**: Data is stored locally using tab-separated files.
- **Server-Client Communication**: Scripts enable interaction between the server and clients.

## Tools and Languages Used

- **Java**: Core programming language for implementing the server and its features.
- **Maven**: Used for project management and build automation.
- **JUnit**: Ensures thorough testing of individual components.
- **JSON**: Handles database metadata efficiently.
- **IntelliJ IDEA**: Development environment for the project.
- **GitHub**: Used for version control and collaborative development.

## Key Concepts and Learning

- **Custom Parser and Interpreter**: Built a parser to generate a parse tree and implemented the Visitor design pattern for interpreting commands.
- **Composite Data Structures**: Designed efficient data structures for storage and retrieval.
- **Singleton Pattern**: Ensured single instances of critical server components.
- **Exception Handling**: Implemented robust strategies to manage errors and unexpected inputs.

## Source Code

The full source code for this project is available on [GitHub](https://github.com/alexandermfisher/database-server).

---

This project represents a significant milestone in my programming journey, demonstrating a deep understanding of both software engineering and database design principles. I invite you to explore the source code and learn more about the inner workings of this database server.