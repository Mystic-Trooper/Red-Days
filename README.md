# Womenism

Time: EEE (DD MM HH:MM)-EEE (DD MM HH:MM)

---
### Walkthrough github [help](git_help.md)

---

## Getting Started

The Boilerplate contains the minimal implementation required to create a basic flutter project.

## Features:

* Login
* Sign Up
* Home Screen (Feed)
* Profile (Manage Users Profile)


### Libraries & Tools Used

* [Provider](https://github.com/rrousselGit/provider) (State Management)

### Folder Structure
Here is the core folder structure which flutter provides.

```git
/
|- android
|- build
|- ios
|- lib
|- test
```

Here is the folder structure we have been using in this project

```git
assets/
|-fonts/
|-images/
lib/
|- Model/
|- Provider/
|- Screen/
|- widgets/
|- main_properties/
|- main.dart
```

Now, lets dive into the lib folder which has the main code for the application.

```git
1- Model - Basic structure of objects used in application

2- Provider - Contains the State management for the project to connect the reactive data of your application with the UI, also includes functionality for CRUD operations from the backend.

3- screen — Contains all the ui of your project, contains sub directory for each screen.

  Naming Convention:  screens/Screen_name.dart

4- widgets — Contains the common widgets for your applications. For example, Button, TextField etc. By refactoring split widgets from screen.dart file

  Naming Convention:  widgets/Screen_name/widget_name.dart

5- main_properties
    5.1- routes.dart — This file contains all the routes for your application.
    5.2- theme.dart - This file contains basic theme for your application.

6- main.dart - This is the starting point of the application. All the application level configurations are defined in this file i.e, theme, routes, title, orientation etc.
```

## Stuck while building?

- Create issue with error logs and code having that error
- Share the code using [gist](https://gist.github.com/)

## Backend

```git
1. Firebase Storgae: For storing images.
2. Firebase auth service: For email authentication.
```

Show Some Love by staring the repo!