# Ticket tracking App
Master branch: ![Travis CI Build Master](https://api.travis-ci.org/ishouvik/tickets-tracking.svg?branch=master) | Develop branch: ![Travis CI Build Develop](https://api.travis-ci.org/ishouvik/tickets-tracking.svg?branch=develop)
This is a simple Ticket tracking app. I created this just for fun. So, feel free to clone the repo and play around.

## Dependencies
- Ruby 2.3.1
- Rails 4.2.5.1

## Front-end libraries
- Bootstrap
- Semantic UI

## Installation
- Clone this repo
- Run the bundler `bundle install`
- Setup database `bundle exec rake db:setup`

## Setup instructions
### User accounts
| Name  | Email | Password | Roles |
|:------|:------|:---------|:-----:|
| Admin User | admin@example.com | password | `admin`, `user` |
| John Doe | johndoe@example.com | password | `user` |

### Mail Delivery
Mail delivery is disabled for development environment. You can change this behavior by setting the config flag for `config.action_mailer.perform_deliveries` to `true` on `config/environments/development.rb`

### Web services
This app allows developers to expose functionality to other web sites and desktop applications along with doing integrations with third-party web applications.
For further API reference please check out our [API Wiki](https://github.com/ishouvik/tickets-tracking/wiki/API:-Intoduction)

## Questions/Ideas?
Please post them under the [issues](https://github.com/ishouvik/tickets-tracking/issues) tab


## Credits
- Created using [RailsComposer](https://github.com/RailsApps/rails-composer)

## Known Issues
- DeviseTokenAuth should be kept under Doorkeeper oauth2 firewall

## License
Copyright (c) 2016 Shouvik Mukherjee

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
"Software"), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
