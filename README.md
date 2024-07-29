# ims

![Ruby](https://img.shields.io/badge/ruby-3.3.3-red.svg)
![Rails](https://img.shields.io/badge/rails-7.1.3.4-blue.svg)
![License](https://img.shields.io/badge/license-MIT-green.svg)
![Build Status](https://img.shields.io/badge/build-passing-brightgreen.svg)

## Table of Contents
- [Introduction](#introduction)
- [Features](#features)
- [Installation](#installation)
- [Usage](#usage)
- [Testing](#testing)
- [Contributing](#contributing)
- [License](#license)
- [Contact](#contact)

## Introduction
ims (Inventory Management System) is a robust and efficient system designed to streamline the management of inventory. It leverages the power of Ruby on Rails to provide a seamless and scalable solution for inventory tracking and management.

## Features
- **Real-time inventory tracking**: Keep track of stock levels in real-time.
- **User-friendly interface**: Intuitive and easy to navigate.
- **Reports and analytics**: Generate detailed reports and insights.
- **Extensible**: Easily extend functionality with plugins and modules.
- **Secure**: Implements strong security practices to protect your data.

## Installation

### Prerequisites
- Ruby 3.3.3
- Node.js and Yarn
- PostgreSQL

### Steps
1. Clone the repository:
    ```sh
    git clone https://github.com/yourusername/ims.git
    ```
2. Navigate to the project directory:
    ```sh
    cd ims
    ```
3. Install the required gems:
    ```sh
    bundle install
    ```
4. Install JavaScript dependencies:
    ```sh
    yarn install
    ```
5. Set up the database:
    ```sh
    rails db:setup
    ```
6. Create and configure `.env` file for environment variables:
    ```sh
    cp .env.example .env
    ```

## Usage
To start the Rails server, run:
```sh
rails server

