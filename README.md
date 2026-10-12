## CSCE 41333: Exam 2: Practical (SPA)

### Instructions

Create a **Single Page Application(SPA)** using *HTML/JavaScript/BootStrap CSS* that interface with NodeJS/Express/MySQL2 Web API.  Your main page, **index.html** and *all of your JavaScript and CSS files* should be in the **public** directory.  Your application will provide a **Course Management page** that calls the Web API to **display the list of courses*, and a **form that allows you to add a new course** using the Web API.  Test your application in the browser to ensure it works correctly.

### REST API Endpoints

| HTTP Method | Endpoint | Description | Payload Body (JSON) |
| ----------- | -------- | ----------- | ------------------- |
| GET | /api/courses | Retrieve all courses | None |
| GET | /api/courses/:id | Retrieve single course | None |
| POST | /api/courses | Create new order | JSON Data | 

#### Create MySQL Database
```
sudo mysql < exam1.sql
```

#### Run the WEB API
```
node server.js
```
