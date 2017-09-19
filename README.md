# README

# Project details:
Overtime app

Allows employees to enter their hours worked, admins can edit, stores values in databse (postgres)


# Planning:

[] Schema setup
[] bootstrap


## Installation
------------


 * git clone https://github.com/ziggity/rails_overtime

 ``
 cd rails_overtime
``

* You must install gems:

``
 bundle install
``

* Start postgres in another terminal tab (Cmd + T):

``
 postgres
``

* Create databases:

``
 rails db:create db:migrate db:seed

``
* Start the webserver:

``
 rails s
``

Navigate to `localhost:3000`

# routes:

``
Get & post:
http://localhost:3000/posts/new
``
``
Get by ID:
http://localhost:3000/posts/1
``



## Known Bugs
none

## Technologies Used

Ruby on Rails, bootstrap, twilio api, 

### License

MIT

Copyright (c) 2017 **Zach Beecher**
