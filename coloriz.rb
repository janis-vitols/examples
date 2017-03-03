#!/usr/bin/env ruby

require 'bundler/inline'

gemfile do
  source 'https://rubygems.org'
  gem 'rainbow', '~> 2.2.1'
end

puts Rainbow("hola!").red.bright.underline
