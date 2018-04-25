# Grape Starter Kit

An Grape empty project with a structure similar to Rails.

[Grape](https://github.com/ruby-grape/grape) (*a REST-like API framework for Ruby*)

## Structure

- app
  - api/v1
    - base.rb: mount point for API V1
    - posts.rb: sample posts API methods
  - models/v1
    - post.rb: sample post model
- config
  - initializers/*: components configurations
  - application.rb, boot.rb. environment.rb: startup files
  - puma.rb: puma configuration
  - routes.rb: routes configuration
- config.ru

## Optional components

### Cors

- Decomment rack-cors in Gemfile
- Decomment and edit configuration in: config.ru
