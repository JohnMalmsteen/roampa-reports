# RoamPA Reports
JAVA / Spring / JSP implementation of the Reports Writer webapp, converting from javascript/php

Contents:
---------
1. About
2. Architecture
3. Tools & Environment used

1 - About
---
This repo contains the Java/Spring implementation of the RoamPA Reports Writer Webapp which was initially done in PHP backend / HTML&CSS&Javascript frontend.

The original PHP repo was taken down as the host didn't have enough private repos to maintain it.

This code is an exact replication of the old codes functionality.

2 - Architecture
---
The code relies upon a MySql database (the schema of which was supplied by RoamPA in the original project) to mitigate any changes in this schema we added three views (users_view, users_addresses, and users_events) and then coded to those views.

Those views can be located in the view_creator.sql file in the sql folder at the top level of the project. The schema and test data supplied by RoamPA is also there and is named rpa.mysql.sql.

The Java source code is located in src/main/java with the package prefix being com.roampa.reports with the following packages:

### com.roampa.reports.config
This package contains the AppConfig class which extents the WebMVCConfigurerAdapter from org.springframework.web.servlet.config.annotation, this class initialises the ViewResolver bean, adds the resource handlers for retrieving local files from the /resources/ folder and sets up the static variables for the Database access

It also contains the servlet initializer.

### com.roampa.reports.controller
Here are the Spring controllers RootController (which just redirects request to / to the /index route) and IndexController which deals with the actual webapp requests for the index page.

The Routes here are:

##### /process
This route accepts POST requests and builds the html table version of the report (it is called with ajax on the front end so there isn't a page load)

##### /genQuery
This route is a POST route that takes the JSON body generated from the form and creates the query required, which is then returned to the front end, 
the advantage of this is that the URLs used fo pdf/excel generation are reusable by the user, the queries are encoded in base64 but perhaps should be encoded usiing md5 with a salt to ensure the user can't gain manual access to the database.

##### /pdf
Returns the pdf version of the report for download/viewing

##### /xls
Returns the excel version of the report for download/viewing (this is the only functionality change I made, I decided to actualy create an XLS file instead of CSV since that choice was made because of limitations in our php implementation)

### com.roampa.reports.data
Contains the SQLData class which just connects to the DB, perfoms the query and cleans up after itself.

### com.roampa.reports.service
Contains the service class that do the donkey work of converting the model data into HTML/Excel/PDF

## src/main/webapp
Contins the WEB-INF/jsp views and the resources/ folder which contains the css and javascript files. Views are structured in the same manner as their URLs.

## pom.xml
Contains the maven build/dependency instructions.

Run: 

```sh
$ mvn clean install 
```

from command line in the directory with pom.xml in it to install the software (it generates classes and a war file in the target/ directory.


