require 'selenium_connect_browserstack/configuration'
require 'selenium_connect/configuration'
SeleniumConnect::Configuration.send(:prepend, SeleniumConnectBrowserstack::Configuration)

require 'selenium_connect_browserstack/runner'
require 'selenium_connect/runner'
SeleniumConnect::Runner.send(:prepend, SeleniumConnectBrowserstack::Runner)