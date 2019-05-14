# Calcentral Front End

[![Build Status](https://travis-ci.com/XiaochenH/calcentral-front-end.svg?branch=master)](https://travis-ci.com/XiaochenH/calcentral-front-end) <a href="https://codeclimate.com/github/XiaochenH/calcentral-front-end/test_coverage"><img src="https://api.codeclimate.com/v1/badges/520d16475274ca32c622/test_coverage" /></a> <a href="https://codeclimate.com/github/XiaochenH/calcentral-front-end/maintainability"><img src="https://api.codeclimate.com/v1/badges/520d16475274ca32c622/maintainability" /></a>

Calcentral-front-end is a lightweight mock data api service for Calcentral developers. You can view a demo version of the Heroku app [here](https://calcentral-frontend-cs169.herokuapp.com).

To run the app locally:
```
bundle install
```
Then start the server:
```
rails s
```
## Features
After starting the app, the static data are available at the same path as most of Calcentral's apis. The full list of apis are documented [here](https://docs.google.com/spreadsheets/d/1RVehxhPnhdH8qHjYJXty8w1Q66qEGADZwVhIRpM63x0) (You would need a Berkeley email to access the spread sheet). You can also try a few sample endpoints with the following links:

* http://localhost:3000/api/academics/degree_progress/ugrd
* http://localhost:3000/api/academics/degree_progress/grad

## Usage
**Using Provided Endpoints** To use the provided endpoints, list `[\'api']` as one of Calcentral front-end's proxy options and set the proxy to `http://localhost:3000` (local) or `https://calcentral-frontend-cs169.herokuapp.com` (remote). [Some](https://github.com/developish/calcentral/commits/dev-server) specific implementations may allow the hostname to be configured as an environment variable when launching the front end. For example:
`API_HOSTNAME="https://calcentral-frontend-cs169.herokuapp.com npm run start"`

**Adding/Changing Endpoints** We provide a minimal CRUD interface for adding/changing api paths mappings to static data at `/dev/apis`, where the static data can be found at `/public/dummy/json/`. You can also change the mappings manually at `db/seeds.rb`.

