# Grape Starter Kit

An Grape empty project with a structure similar to Rails.

[Grape](https://github.com/ruby-grape/grape) (*a REST-like API framework for Ruby*)

Features:
- simple structure ready to use
- locale routes
- command line tool (grape)

## Usage

- Clone this project:
`git clone https://github.com/blocknotes/grape-starter-kit`
- Edit the API Base controller and the sample Posts controller
- Example route: `/api/v1/en/posts`

## Structure

### Command line

`bin/grape`

Options available: console, server

### Files

- app
  - controllers
    - v1
      - base.rb: mount point for API V1
      - posts.rb: sample posts API methods
    - base.rb: mount point for API
  - models/v1
    - post.rb: sample post model
- config
  - initializers/*: components configurations
  - locales/*: locales files
  - application.rb, boot.rb. environment.rb: startup files
  - puma.rb: puma configuration
  - routes.rb: routes configuration
- config.ru

### Optional components

#### Cors (default: enabled)

- To disable: remove rack-cors from *Gemfile* and the CORS lines in *config.ru*

#### Reload (default: enabled)

- Note: with Rack::Reloader not all changes are applied after a reload
- To disable: remove Rack::Reloader line in *config.ru*
