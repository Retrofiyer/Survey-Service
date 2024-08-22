<div>
    <h1>Survey Microservice</h1>
</div>

## About The Project
The Survey Service is a microservice designed for managing and handling surveys within a larger application ecosystem. It allows for the creation, distribution, and analysis of surveys, making it easier to 
collect and process feedback from users. This microservice interacts with other services in the application to ensure a seamless user experience.

## Table of Contents

<ol>
    <li>
      <a href="#about-the-project">About The Project</a>
      <ul>
        <li><a href="#overview">Overview</a></li>
        <li><a href="#features">Features</a></li>
        <li><a href="#built-with">Built With</a></li>
      </ul>
    </li>
    <li>
      <a href="#getting-started">Getting Started</a>
      <ul>
        <li><a href="#prerequisites">Prerequisites</a></li>
        <li><a href="#installation">Installation</a></li>
        <li><a href="#running-the-service">Running the service</a></li>
      </ul>
    </li>
    <li>
      <a href="#contributing">Contributing</a>
    </li>
 </ol>

## Overview
The Survey Service is responsible for all operations related to surveys. It provides a comprehensive API for creating, managing, and distributing surveys, as well as collecting and analyzing responses. 
The service integrates with other microservices to handle authentication, notifications, and data storage.

## Features
<div>
  <ul>
      <li> <b>Survey Creation:</b> Allows users to create custom surveys with various question types </li>
      <li> <b>Survey Distribution:</b> Supports distribution of surveys via email, SMS, or within the application.</li>
      <li> <b>Response Collection:</b> Collects and stores survey responses securely.</li>
      <li> <b>Analysis and Reporting:</b> Provides tools for analyzing survey results and generating reports.</li>
  </ul>
</div>

## Built With

[![Ruby][ruby.com]][ruby-url]
[![SQLite][sqlite.com]][sqlite-url]
[![Docker][docker.com]][docker-url]

<!-- GETTING STARTED -->
## Getting Started

## Prerequisites

Before you begin, make sure you have the following tools installed on your machine:

- **Ruby 3.3.4** - [Download Ruby](https://www.ruby-lang.org/es/downloads/)

If you don't have any of these tools installed, follow the provided links to install them.


## Installation

1.- Clone the repository
   ```sh
   git clone https://github.com/Retrofiyer/Survey-Service.git
   cd Survey-Service
   ```
2.- Build project using bundle
 ```sh
   bundle install
   ```

## Running the service

  ```sh
    ruby app.rb
   ```

## Contributing

I would like you to contribute to this project. Whether it's fixing a bug, adding a new feature or improving the documentation, your help is always welcome. Please email me at `sebitas5225@gmail.com` with all the details for improvement.

<!-- LINKS & IMAGES -->

[docker.com]: https://img.shields.io/badge/Docker-black?style=for-the-badge&logo=docker&logoColor=white
[docker-url]: https://www.docker.com/
[sqlite.com]: https://img.shields.io/badge/SQLite-black?style=for-the-badge&logo=sqlite&logoColor=white
[sqlite-url]: https://www.sqlite.org/
[ruby.com]: https://img.shields.io/badge/Ruby-black?style=for-the-badge&logo=ruby&logoColor=white
[ruby-url]: https://www.ruby-lang.org/
