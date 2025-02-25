# **README**

## Overview

The **Pizza mANAGER** is a Ruby on Rails application that allows users to create, update, and manage pizzas and their associated toppings. The app supports many-to-many relationships between pizzas and toppings, meaning that each pizza can have multiple toppings, and each topping can be used on multiple pizzas. This functionality is handled using Rails' `has_and_belongs_to_many` association.

### Key Features
- Create new pizzas with toppings.
- View pizzas and their associated toppings.
- Update existing pizzas and modify toppings.
- Delete pizzas and toppings (with constraints on deleting toppings that are still associated with pizzas).

## Requirements

Before running the app locally, make sure you have the following installed:

- **Ruby**
- **Rails**
- **PostgreSQL** 
- **Bundler**

## Setup Instructions

### 1. Clone the Repository

```bash
git clone https://github.com/Thorlem/pizzaManager.git
cd pizzaManager
```

### 2. Install Dependencies

Run the following command to install the required Ruby gems and dependencies:

```bash
bundle install
```

### 3. Setup the Database

- Make sure PostgreSQL is installed and running on your local machine.
- Create the database and apply migrations:

```bash
rails db:create
rails db:migrate
```

### 4. Run the Application

Start the Rails development server:

```bash
rails server
```

The app should now be running at `http://localhost:3000`.

## Testing

### Running Tests

To run tests, you can run the default Rails tests with:

```bash
rails test
```

### Test Suite Explanation
- The test suite includes tests for creating, updating, and deleting pizzas and toppings.
- There are also validations to ensure that duplicate pizzas with the same toppings cannot be created.

## Directory Structure

Here’s a brief overview of the main directories and files in the project:

- **app/controllers**: Contains controllers for managing pizzas and toppings.
- **app/models**: Contains models for `Pizza` and `Topping`, as well as the join table for the many-to-many relationship.
- **app/views**: Contains the views for displaying pizzas and toppings.
- **config**: Contains configuration files for the Rails application, including routes, database, and environment settings.
- **db/migrate**: Contains migration files for creating and updating the database schema.
- **test**: Contains test files for the app (if you use the default Rails testing framework).
