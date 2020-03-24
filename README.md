# Price-Monitor
Price Monitor app to monitor Fabelio products:
https://price-monitor-scrapy.herokuapp.com/

## Dependencies:
- Postgresql
- Ruby on Rails
## Improvements Note:
**Things to improve going forward**
- Website beautification
- Handling known bugs: 
  - non fabelio product link will post product with 0 as values,
  - invalid links will throw and error and stop the application,
  - duplicated links will throw and error dupplicate not allowed
- Error handling: give proper error message when application stop running
- Docker compose for development purpose

## To Start the App:

## Clone the files:
```sh
  $ git clone git@github.com:William-Fritz/price-monitor.git
```
## Install Ruby ver 2.6.5 from official web
**https://www.ruby-lang.org/en/downloads/**

## Install Bundler
```sh
  $ gem install bundler
```
## Run bundle install
```sh
  $ bundle install
```
## Create database
```sh
  $ rails db:create
```
## Run database migration
```sh
  $ rails db:migrate
```
## Run rails server
```sh
  $ rails s
```
