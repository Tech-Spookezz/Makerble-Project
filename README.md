![MediPortal Logo](https://your-image-hosting-url.com/medical_logo.png)

# MediPortal - Advanced Medical Management System

## Table of Contents
1. [Introduction](#introduction)
2. [Features](#features)
3. [Technologies Used](#technologies-used)
4. [Installation](#installation)
5. [Configuration](#configuration)
6. [Usage](#usage)
7. [API Documentation](#api-documentation)
8. [Testing](#testing)
9. [Deployment](#deployment)
10. [Contributing](#contributing)
11. [License](#license)
12. [Contact](#contact)

---

## Introduction

MediPortal is a cutting-edge medical management system designed to streamline patient registration, appointment scheduling, and data visualization for healthcare professionals. This web application provides a user-friendly interface for receptionists and doctors, enhancing efficiency in medical practices.

## Features

- **User Authentication**: Secure login system for receptionists and doctors.
- **Role-Based Access Control**: Different functionalities for receptionists and doctors.
- **Patient Management**: 
  - Register new patients
  - View and edit patient information
  - Delete patient records (with proper authorization)
- **Appointment Scheduling**: Create and manage patient appointments.
- **Dashboard**: 
  - Visual representation of patient registration trends
  - Quick overview of recent patients
- **Responsive Design**: Fully responsive web design for seamless use on various devices.
- **Dark Mode**: Toggle between light and dark themes for comfortable viewing.

## Technologies Used

- **Backend**: Ruby on Rails 7.0
- **Database**: PostgreSQL
- **Frontend**: 
  - HTML5
  - CSS3 (with SCSS)
  - JavaScript (ES6+)
- **Authentication**: Devise
- **Authorization**: CanCanCan
- **Charting**: Chart.js with Chartkick
- **CSS Framework**: Bootstrap 5
- **Icons**: Font Awesome 6
- **Testing**: RSpec, Capybara
- **Version Control**: Git

## Installation

1. Clone the repository:
    ```bash
    git clone https://github.com/your-username/mediportal.git
    cd mediportal
    ```

2. Install dependencies:
    ```bash
    bundle install
    yarn install
    ```

3. Setup the database:
    ```bash
    rails db:create
    rails db:migrate
    rails db:seed
    ```

## Configuration

1. Configure the database in `config/database.yml`.
2. Set up environment variables in `.env` file (use `.env.example` as a template).
3. Configure ActionMailer for your development environment in `config/environments/development.rb`.

## Usage

1. Start the Rails server:
    ```bash
    rails server
    ```

2. Visit `http://localhost:3000` in your web browser.

3. Log in using the following demo credentials:
    - Receptionist: `receptionist@example.com` / password: `password`
    - Doctor: `doctor@example.com` / password: `password`

## API Documentation

MediPortal provides a RESTful API for integration with other systems. API endpoints include:

- `GET /api/v1/patients`: List all patients
- `POST /api/v1/patients`: Create a new patient
- `GET /api/v1/patients/:id`: Get details of a specific patient
- `PUT /api/v1/patients/:id`: Update a patient's information
- `DELETE /api/v1/patients/:id`: Delete a patient record

For full API documentation, please refer to the [API Guide](API_GUIDE.md).

## Testing

Run the test suite with:
```bash
rspec
