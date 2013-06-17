# Rubygems Status Page

A simple rails app to show the status of rubygems.org infrastructure

Available at [http://status.rubygems.org](http://status.rubygems.org)

## Installation

Clone repository and install dependencies using bundler:

    bundle install

Create and migrate database:

    rake db:create
    rake db:migrate

## Usage

To start rails application:

    rails server

To start worker in a background job:

    1. Run not daemonized (terminal blocking)
        rake daemon:pinger

    2. Run as a daemon
         rake daemon:pinger:start

         Check if is runing

         rake daemon:pinger:status

