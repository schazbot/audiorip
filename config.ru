# This file is used by Rack-based servers to start the application.
require_all "./app"
require_relative "config/environment"

run Rails.application
