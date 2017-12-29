# Vanhack Awesome Forum

Vanhack Awesome Forum is a Fully functional forum created in Ruby on Rails for a study purpose and testing as well. It has a lot of features to improve but can already be used for anyone (including Vanhack itself :D )

## Technologies
Core
- Ruby 2.3.3
- Rails 5.1.4
- PostgreSQL >= 10

## Testing localy

Requirements
- Ruby 2.3.3
- Rails >= 5.0
- PostgreSQL >= 10

Clone this repo
```console
 git clone https://github.com/eaglequeiroz/vanhack-awesome-forum.git
```

Inside the project install the gems and libs
```console
 bundle install
```

Run the following script
```console
 bundle exec figaro install
```

Config your *config/application.yml* for your PostgreSQL database adding these two lines in the end of the file, and changing the *<DATABASE_USER_NAME>* and *<DATABASE_PASSWORD>* for your own.

```json
 VH_AWESOME_FORUM_DATABASE_USER: '<DATABASE_USER_NAME>'
 VH_AWESOME_FORUM_DATABASE_PASSWORD: '<DATABASE_PASSWORD>'
```

Execute your migrations on the app folder
```console
 rake db:migrate
```

Run the application
```console
 rails s
```

PS: Sometimes for some reason the bcrypt is wrongly bundled, and the work around is to use these commands:
```console
 gem uninstall bcrypt-ruby
 gem uninstall bcrypt
 gem install bcrypt --platform=ruby
 bundle install
```
