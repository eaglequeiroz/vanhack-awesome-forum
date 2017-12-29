# Vanhack Awesome Forum

Vanhack Awesome Forum is a Fully functional forum created in Ruby on Rails for a study purpose and testing as well. It has a lot things to improve but can already be used for anyone (including Vanhack itself :D )

## Technologies
Core
- Ruby 2.3.3
- Rails 5.1.4

## Testing localy

Requirements
- Rails >= 5.0

Clone this repo
```console
$ git clone https://github.com/eaglequeiroz/vanhack-awesome-forum.git
```

Inside the project install the gems and libs
```console
$ bundle install
```

Config your config/database.yml for your PostgreSQL database (username and password)

```json
 username: <HERE GOES YOUR USERNAME>
 password: <HERE GOES YOUR PASSWORD>
```

Execute your migrations on the app folder
```console
$ rake db:migrate
```

Run the application
```console
$ rails s
```
