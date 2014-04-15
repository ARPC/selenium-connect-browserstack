module SeleniumConnectBrowserstack
  attr_accessor :browserstack, :debug, :os_version, :browser_version, :resolution
end

require 'selenium_connect/configuration'
SeleniumConnect::Configuration.send(:prepend, SeleniumConnectBrowserstack)