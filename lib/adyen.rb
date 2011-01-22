# The Adyen module is the container module for all Adyen related functionality, 
# which is implemented in submodules. This module only contains some global 
# configuration methods.
#
# The most important submodules are:
# * {Adyen::Form} for generating payment form fields, generating redirect URLs 
#   to the Adyen payment system, and generating and checking of signatures.
# * {Adyen::Notification} for handling notifications sent by Adyen to your servers.
# * {Adyen::SOAP} for communicating with the Adyen SOAP services for payment
#   maintenance and issuing recurring payments.
module Adyen

  # Version constant for the Adyen plugin.
  # DO NOT CHANGE THIS VALUE BY HAND. It will be updated automatically by
  # the gem:release rake task.
  VERSION = "0.3.8.20101007"

  def self.configuration
    @configuration ||= Adyen::Configuration.new
  end
end

require 'adyen/configuration'
require 'adyen/encoding'
require 'adyen/formatter'
require 'adyen/form'
require 'adyen/notification'

require 'adyen/railtie' if defined?(::Rails) && ::Rails::VERSION::MAJOR >= 3
