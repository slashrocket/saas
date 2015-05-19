# Slackbot as a Service
##Manage your Slack with ease

[![slashrocket - Slack](https://slashrocket-slackin.herokuapp.com/badge.svg)](https://slashrocket.github.io)

*Note: SaaS requires PostgreSQL in development and production. Be sure to configure PostgreSQL before running SaaS.*

Getting Started:
* Run `bundle install`
* Run `figaro install`
* Generate a [Slack Web API token](https://api.slack.com/web)
* Add `slack_token: "<Your API Token Here>"` to `config/application.yml`
* Run `rake db:setup` to setup a new database
* Run `rake slack_users:import_all` to pull in current users

After running `rake db:setup`, you'll have a default user you can log in with. The email address for this user is `foo@bar.com` and the password is `foobar`. If this will be a publicly accessible service, be sure to remove this account from the Rails console and create your own.

To remove the initial user and create a new one:
* `rails c`
* `User.delete(1)`
* `myNewUser = User.new`
* `myNewUser.email = "your.email@address.com"`
* `myNewUser.password = "your_password"`
* `myNewUser.password_confirmation = "your_password"`
* `myNewUser.save`
