# Chitter Challenge

This is a new soccial network where user can post some messages.

## User Stories

### :white_check_mark: Implemented

```
As a Maker
So that I can let people know what I am doing  
I want to post a message (peep) to chitter
```

```
As a maker
So that I can see what others are saying  
I want to see all peeps in reverse chronological order
```

```
As a Maker
So that I can better appreciate the context of a peep
I want to see the time at which it was made
```

```
As a Maker
So that I can post messages on Chitter as me
I want to sign up for Chitter
```

```
As a Maker
So that only I can post messages on Chitter as me
I want to log in to Chitter
```

```
As a Maker
So that I can avoid others posting messages on Chitter as me
I want to log out of Chitter
```

### :warning: To implement

```
As a Maker
So that I can stay constantly tapped in to the shouty box of Chitter
I want to receive an email if I am tagged in a Peep
```


## Notes on functionality:

:white_check_mark: You don't have to be logged in to see the peeps.

:white_check_mark: Makers sign up to chitter with their username, name, lastname, email, password (e.g. sjmog, Sam, Morgan, samm@makersacademy.com, password123).

:white_check_mark: The username and email are unique.

:white_check_mark: Peeps (posts to chitter) have the name of the username.

:white_check_mark: Your README should indicate the technologies used, and give instructions on how to install and run the tests.

## Languages used

1. Ruby
2. RSpec
3. HTML
4. CSS
5. Bootstrap

## Installation

### Database Setup

1. Connect to psql
2. Create a database: `CREATE DATABASE chitter;`
3. Connect to the database: `\c chitter;`
4. Run this line to create the posts table:  `CREATE TABLE Posts (id SERIAL PRIMARY KEY, post VARCHAR(260), date VARCHAR(100));`
5. Run this line to create the users table: `CREATE TABLE users (username VARCHAR(50) PRIMARY KEY, name VARCHAR(100), lastname VARCHAR(100), email VARCHAR(100), password VARCHAR(200)
);`
6. Create a new reference column by the username:  `ALTER TABLE posts ADD COLUMN username VARCHAR(50) NOT NULL REFERENCES users(username);`
7. Create a test database using the `CREATE DATABASE chitter_test;`
8. Connect to the database: `\c chitter_test;`
9. Repeat steps 4,5 and 6.

## Database diagram

<img width="100%" src="img/tables-diagram.png" alt-text="tables diagram"/>

## Screenshot

<img width="45%" src="img/home.png" alt-text="homepage"/>  <img width="45%" src="img/user-profile.png" alt-text="user profile"/>
<img  width="45%" src="img/login.png" alt-text="login page"/>  <img  width="45%" src="img/error-login.png" alt-text="error login page"/>
<img  width="45%" src="img/signup.png" alt-text="signup page"/>  <img  width="45%" src="img/error-signup.png" alt-text="error signup page"/>

## Bonus:

### :white_check_mark: Implemented

* Work on the CSS to make it look good.

### :warning: To implement

* In order to start a conversation as a maker I want to reply to a peep from another maker.


Good luck and let the chitter begin!

## Code Review

In code review we'll be hoping to see:

### All tests passing

:white_check_mark: High [Test coverage](https://github.com/makersacademy/course/blob/master/pills/test_coverage.md) (>95% is good)

:white_check_mark: The code is elegant: every class has a clear responsibility, methods are short etc.

Reviewers will potentially be using this [code review rubric](docs/review.md).  Referring to this rubric in advance may make the challenge somewhat easier.  You should be the judge of how much challenge you want at this moment.

Automated Tests:
-----

Opening a pull request against this repository will will trigger Travis CI to perform a build of your application and run your full suite of RSpec tests. If any of your tests rely on a connection with your database - and they should - this is likely to cause a problem. The build of your application created by has no connection to the local database you will have created on your machine, so when your tests try to interact with it they'll be unable to do so and will fail.

If you want a green tick against your pull request you'll need to configure Travis' build process by adding the necessary steps for creating your database to the `.travis.yml` file.

- [Travis Basics](https://docs.travis-ci.com/user/tutorial/)
- [Travis - Setting up Databases](https://docs.travis-ci.com/user/database-setup/)

Notes on test coverage
----------------------

Please ensure you have the following **AT THE TOP** of your spec_helper.rb in order to have test coverage stats generated
on your pull request:

```ruby
require 'simplecov'
require 'simplecov-console'

SimpleCov.formatter = SimpleCov::Formatter::MultiFormatter.new([
  SimpleCov::Formatter::Console,
  # Want a nice code coverage website? Uncomment this next line!
  # SimpleCov::Formatter::HTMLFormatter
])
SimpleCov.start
```

You can see your test coverage when you run your tests. If you want this in a graphical form, uncomment the `HTMLFormatter` line and see what happens!

## Credits

This project is been provided by [Makers Academy](https://makers.tech/) and developed by the student [Javier Lopez](https://github.com/xavierloos)

## Contribute

As this is long project there is more stories to implement, feel free to add more usefull stories and/or add the features to the code

### Stories to implement

```
As a Maker
So that I can follow the conversation
I want to comment in other users post or mine
```
```
As a Maker
So that I can see the favorites posts
I want to like others posts or mine
```
```
As a Maker
So that I tell other friends
I want to share other posts or mine
```
```
As a Maker
So that I can keep a clean post
I want to be able delete my posts
```

## License
