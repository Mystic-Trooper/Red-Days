# Red Days
<img src="https://user-images.githubusercontent.com/54329870/99882809-29c5dd80-2c49-11eb-8273-462daedb8a36.png" width=250> <img src="https://user-images.githubusercontent.com/54329870/99882812-2b8fa100-2c49-11eb-87d7-d508178018ef.png" width=250>  <img src="https://user-images.githubusercontent.com/54329870/99882813-2c283780-2c49-11eb-920e-fa7c7f7f3c26.png" width=250> 

<img src="https://user-images.githubusercontent.com/54329870/99882814-2d596480-2c49-11eb-9f9b-1327c026a24e.png" width=250> <img src="https://user-images.githubusercontent.com/54329870/99882815-2df1fb00-2c49-11eb-9971-d12bf53b77d8.png" width=250>  <img src="https://user-images.githubusercontent.com/54329870/99882816-2e8a9180-2c49-11eb-9461-811f35dd2406.png" width=250> 

<img src="https://user-images.githubusercontent.com/54329870/99882817-2e8a9180-2c49-11eb-895b-7e6c78fd1e4f.png" width=250> <img src="https://user-images.githubusercontent.com/54329870/99882818-2f232800-2c49-11eb-99eb-2519e9b5221d.png" width=250>  <img src="https://user-images.githubusercontent.com/54329870/99882822-30545500-2c49-11eb-8834-4cf67892b415.png" width=250> 

<img src="https://user-images.githubusercontent.com/54329870/99882823-30eceb80-2c49-11eb-8285-74faa91ae71f.png" width=250> 

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
