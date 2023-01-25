# 0x0A. i18n
## Details
 By: Emmanuel Turlay, Staff Software Engineer at Cruise Weight: 1Ongoing second chance project - startedOct 20, 2022 12:00 AM, must end byOct 24, 2022 12:00 AMManual QA review must be done(request it when you are done with the project) An auto review will be launched at the deadline#### In a nutshell…
* Manual QA review:          Pending      
* Auto QA review:          0.0/48 mandatory      
* Altogether:        waiting on some reviews    
 ![](https://holbertonintranet.s3.amazonaws.com/uploads/medias/2020/1/91e1c50322b2428428f9.jpeg?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIARDDGGGOU5BHMTQX4%2F20221021%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20221021T212841Z&X-Amz-Expires=86400&X-Amz-SignedHeaders=host&X-Amz-Signature=9daa184b3d5d4d3eaf509e91816981e4bf96c46f5598e6795236afa5d2eec66d) 

## Resources
Read or watch:
* [Flask-Babel](https://intranet.hbtn.io/rltoken/Q71CxQOjqpOJrqHd_F4lXQ) 

* [Flask i18n tutorial](https://intranet.hbtn.io/rltoken/NdAnX-Td57RRaA25LX0A1Q) 

* [pytz](https://intranet.hbtn.io/rltoken/5TivvomA40J0IqZnHVZJFw) 

## Learning Objectives
* Learn how to parametrize Flask templates to display different languages
* Learn how to infer the correct locale based on URL parameters, user settings or request headers
* Learn how to localize timestamps
## Requirements
* All your files will be interpreted/compiled on Ubuntu 18.04 LTS using python3 (version 3.7)
* All your files should end with a new line
* A  ` README.md `  file, at the root of the folder of the project, is mandatory
* Your code should use the pycodestyle style (version 2.5)
* The first line of all your files should be exactly  ` #!/usr/bin/env python3 ` 
* All your  ` *.py `  files should be executable
* All your modules should have a documentation ( ` python3 -c 'print(__import__("my_module").__doc__)' ` )
* All your classes should have a documentation ( ` python3 -c 'print(__import__("my_module").MyClass.__doc__)' ` )
* All your functions and methods should have a documentation ( ` python3 -c 'print(__import__("my_module").my_function.__doc__)' `  and  ` python3 -c 'print(__import__("my_module").MyClass.my_function.__doc__)' ` )
* A documentation is not a simple word, it’s a real sentence explaining what’s the purpose of the module, class or method (the length of it will be verified)
* All your functions and coroutines must be type-annotated.
## Tasks
### 0. Basic Flask app
          mandatory         Progress vs Score           Score: 0.00% (Checks completed: 0.00%)         Task Body First you will setup a basic Flask app in   ` 0-app.py `  . Create a single   ` / `   route and an   ` index.html `   template that simply outputs “Welcome to Holberton” as page title (  ` <title> `  ) and “Hello world” as header (  ` <h1> `  ).
 Task URLs  Github information Repo:
* GitHub repository:  ` holbertonschool-web_back_end ` 
* Directory:  ` 0x0A-i18n ` 
* File:  ` 0-app.py, templates/0-index.html ` 
 Self-paced manual review  Panel footer - Controls 
### 1. Basic Babel setup
          mandatory         Progress vs Score           Score: 0.00% (Checks completed: 0.00%)         Task Body Install the Babel Flask extension:
 ` $ pip3 install flask_babel
 ` Then instantiate the   ` Babel `   object in your app. Store it in a module-level variable named   ` babel `  .
In order to configure available languages in our app, you will create a   ` Config `   class that has a   ` LANGUAGES `   class attribute equal to   ` ["en", "fr"] `  .
Use   ` Config `   to set Babel’s default locale (  ` "en" `  ) and timezone (  ` "UTC" `  ).
Use that class as config for your Flask app.
 Task URLs  Github information Repo:
* GitHub repository:  ` holbertonschool-web_back_end ` 
* Directory:  ` 0x0A-i18n ` 
* File:  ` 1-app.py, templates/1-index.html ` 
 Self-paced manual review  Panel footer - Controls 
### 2. Get locale from request
          mandatory         Progress vs Score           Score: 0.00% (Checks completed: 0.00%)         Task Body Create a   ` get_locale `   function with the   ` babel.localeselector `   decorator. Use   ` request.accept_languages `   to determine the best match with our supported languages.
 Task URLs  Github information Repo:
* GitHub repository:  ` holbertonschool-web_back_end ` 
* Directory:  ` 0x0A-i18n ` 
* File:  ` 2-app.py, templates/2-index.html ` 
 Self-paced manual review  Panel footer - Controls 
### 3. Parametrize templates
          mandatory         Progress vs Score           Score: 0.00% (Checks completed: 0.00%)         Task Body Use the   ` _ `   or   ` gettext `   function to parametrize your templates. Use the message IDs   ` home_title `   and   ` home_header `  .
Create a   ` babel.cfg `   file containing
 ` [python: **.py]
[jinja2: **/templates/**.html]
extensions=jinja2.ext.autoescape,jinja2.ext.with_
 ` Then initialize your translations with
 ` $ pybabel extract -F babel.cfg -o messages.pot .
 ` and your two dictionaries with 
```bash
$ pybabel init -i messages.pot -d translations -l en
$ pybabel init -i messages.pot -d translations -l fr

```
Then edit files   ` translations/[en|fr]/LC_MESSAGES/messages.po `   to provide the correct value for each message ID for each language. Use the following translations:
msgidEnglishFrench ` home_title `  ` "Welcome to Holberton" `  ` "Bienvenue chez Holberton" `  ` home_header `  ` "Hello world!" `  ` "Bonjour monde!" ` Then compile your dictionaries with
 ` $ pybabel compile -d translations
 ` Reload the home page of your app and make sure that the correct messages show up.
 Task URLs  Github information Repo:
* GitHub repository:  ` holbertonschool-web_back_end ` 
* Directory:  ` 0x0A-i18n ` 
* File: ```bash
3-app.py, babel.cfg, templates/3-index.html, translations/en/LC_MESSAGES/messages.po, translations/fr/LC_MESSAGES/messages.po, translations/en/LC_MESSAGES/messages.mo, translations/fr/LC_MESSAGES/messages.mo
```

 Self-paced manual review  Panel footer - Controls 
### 4. Force locale with URL parameter
          mandatory         Progress vs Score           Score: 0.00% (Checks completed: 0.00%)         Task Body In this task, you will implement a way to force a particular locale by passing the   ` locale=fr `   parameter to your app’s URLs.
In your   ` get_locale `   function, detect if the incoming request contains   ` locale `   argument and ifs value is a supported locale, return it. If not or if the parameter is not present, resort to the previous default behavior.
Now you should be able to test different translations by visiting   ` http://127.0.0.1:5000?locale=[fr|en] `  .
Visiting  ` http://127.0.0.1:5000/?locale=fr `  should display this level 1 heading:  ![](https://holbertonintranet.s3.amazonaws.com/uploads/medias/2020/3/f958f4a1529b535027ce.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIARDDGGGOU5BHMTQX4%2F20221021%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20221021T212841Z&X-Amz-Expires=86400&X-Amz-SignedHeaders=host&X-Amz-Signature=6a80a35b28e47c978153601b3b43f8ac5db6567d3135beed99609a2cfe502eea) 

 Task URLs  Github information Repo:
* GitHub repository:  ` holbertonschool-web_back_end ` 
* Directory:  ` 0x0A-i18n ` 
* File:  ` 4-app.py, templates/4-index.html ` 
 Self-paced manual review  Panel footer - Controls 
### 5. Mock logging in
          mandatory         Progress vs Score           Score: 0.00% (Checks completed: 0.00%)         Task Body Creating a user login system is outside the scope of this project. To emulate a similar behavior, copy the following user table in   ` 5-app.py `  .
```bash
users = {
    1: {"name": "Balou", "locale": "fr", "timezone": "Europe/Paris"},
    2: {"name": "Beyonce", "locale": "en", "timezone": "US/Central"},
    3: {"name": "Spock", "locale": "kg", "timezone": "Vulcan"},
    4: {"name": "Teletubby", "locale": None, "timezone": "Europe/London"},
}

```
This will mock a database user table. Logging in will be mocked by passing   ` login_as `   URL parameter containing the user ID to log in as.
Define a   ` get_user `    function that returns a user dictionary or   ` None `   if the ID cannot be found or if   ` login_as `   was not passed.
Define a   ` before_request `   function and use the   ` app.before_request `   decorator to make it be executed before all other functions.   ` before_request `   should use   ` get_user `   to find a user if any, and set it as a global on   ` flask.g.user `  .
In your HTML template, if a user is logged in, in a paragraph tag, display a welcome message otherwise display a default message as shown in the table below.
msgidEnglishFrench ` logged_in_as `  ` "You are logged in as %(username)s." `  ` "Vous êtes connecté en tant que %(username)s." `  ` not_logged_in `  ` "You are not logged in." `  ` "Vous n'êtes pas connecté." ` Visiting  ` http://127.0.0.1:5000/ `  in your browser should display this:
 ![](https://holbertonintranet.s3.amazonaws.com/uploads/medias/2020/3/2c5b2c8190f88c6b4668.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIARDDGGGOU5BHMTQX4%2F20221021%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20221021T212841Z&X-Amz-Expires=86400&X-Amz-SignedHeaders=host&X-Amz-Signature=a6598cdf32a03977cd048563ae0feb5d8c14528ef22768c72850e91c13569b49) 

Visiting  ` http://127.0.0.1:5000/?login_as=2 `  in your browser should display this:  ![](https://holbertonintranet.s3.amazonaws.com/uploads/medias/2020/3/277f24308c856a09908c.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIARDDGGGOU5BHMTQX4%2F20221021%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20221021T212841Z&X-Amz-Expires=86400&X-Amz-SignedHeaders=host&X-Amz-Signature=21c5d926378ddce7cc70fceac174f052ebe96dc4cfc4f8a5794850905170ed3e) 

 Task URLs  Github information Repo:
* GitHub repository:  ` holbertonschool-web_back_end ` 
* Directory:  ` 0x0A-i18n ` 
* File:  ` 5-app.py, templates/5-index.html ` 
 Self-paced manual review  Panel footer - Controls 
### 6. Use user locale
          mandatory         Progress vs Score           Score: 0.00% (Checks completed: 0.00%)         Task Body Change your   ` get_locale `   function to use a user’s preferred local if it is supported.
The order of priority should be
Locale from URL parametersLocale from user settingsLocale from request headerDefault localeTest by logging in as different users
 ![](https://holbertonintranet.s3.amazonaws.com/uploads/medias/2020/3/9941b480b0b9d87dc5de.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIARDDGGGOU5BHMTQX4%2F20221021%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20221021T212841Z&X-Amz-Expires=86400&X-Amz-SignedHeaders=host&X-Amz-Signature=0eeeeababd6595933c3e6f7cda78d26f0a53964229955f37807f0c91f517ef4b) 

 Task URLs  Github information Repo:
* GitHub repository:  ` holbertonschool-web_back_end ` 
* Directory:  ` 0x0A-i18n ` 
* File:  ` 6-app.py, templates/6-index.html ` 
 Self-paced manual review  Panel footer - Controls 
### 7. Infer appropriate time zone
          mandatory         Progress vs Score  Task Body Define a   ` get_timezone `   function and use the   ` babel.timezoneselector `   decorator.
The logic should be the same as   ` get_locale `  :
Find  ` timezone `  parameter in URL parametersFind time zone from user settingsDefault to UTCBefore returning a URL-provided or user time zone, you must validate that it is a valid time zone. To that, use   ` pytz.timezone `   and catch the   ` pytz.exceptions.UnknownTimeZoneError `   exception.
 Task URLs  Github information Repo:
* GitHub repository:  ` holbertonschool-web_back_end ` 
* Directory:  ` 0x0A-i18n ` 
* File:  ` 7-app.py, templates/7-index.html ` 
 Self-paced manual review  Panel footer - Controls 
### 8. Display the current time
          #advanced         Progress vs Score  Task Body Based on the inferred time zone, display the current time on the home page in the default format. For example:
 ` Jan 21, 2020, 5:55:39 AM `   or   ` 21 janv. 2020 à 05:56:28 ` 
Use the following translations
msgidEnglishFrench ` current_time_is `  ` "The current time is %(current_time)s." `  ` "Nous sommes le %(current_time)s." ` Displaying the time in French looks like this:
 ![](https://holbertonintranet.s3.amazonaws.com/uploads/medias/2020/3/bba4805d6dca0a46a0f6.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIARDDGGGOU5BHMTQX4%2F20221021%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20221021T212841Z&X-Amz-Expires=86400&X-Amz-SignedHeaders=host&X-Amz-Signature=4ede68c090477a9fe268fd94df025c5bea9f6c651dc75ea19ae4e9b7b4edd4bc) 

Displaying the time in English looks like this:
 ![](https://holbertonintranet.s3.amazonaws.com/uploads/medias/2020/3/54f3be802024dbcf06f4.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIARDDGGGOU5BHMTQX4%2F20221021%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20221021T212841Z&X-Amz-Expires=86400&X-Amz-SignedHeaders=host&X-Amz-Signature=a52da513c54c5f8843317a0b133922be2bf7c853aba72ad497f0d7715904772a) 

 Task URLs  Github information Repo:
* GitHub repository:  ` holbertonschool-web_back_end ` 
* Directory:  ` 0x0A-i18n ` 
* File: ```bash
app.py, templates/index.html, translations/en/LC_MESSAGES/messages.po, translations/fr/LC_MESSAGES/messages.po
```

 Self-paced manual review  Panel footer - Controls 
Ready for a  manual review×#### Recommended Sandbox
[Running only]() 
### 1 image(0/5 Sandboxes spawned)
### Ubuntu 18.04 - Python 3.7
Ubuntu 18.04 with Python 3.7
[Run]() 
