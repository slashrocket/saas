# saas
Slackbot as a Service - Manage your Slack with ease

[![Learn Web Dev - Slack](https://learnwebdev-slackin.herokuapp.com/badge.svg)](https://learnwebdev.github.io)

* Run `bundle install`
* Run `figaro install`
* Add `slack_token: "<Your API Token Here>"` to `config/application.yml`
* Run `rake slack_users:import_all` to pull in current users
* Call Slack API functions like so: `Slack.users_list`

*Note: SaaS requires PostgreSQL in development and production. Be sure to configure PostgreSQL before running.*
