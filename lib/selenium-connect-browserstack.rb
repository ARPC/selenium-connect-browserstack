require 'selenium_connect_browserstack/configuration'
require 'selenium_connect/configuration'
SeleniumConnect::Configuration.send(:prepend, SeleniumConnectBrowserstack::Configuration)

require 'selenium_connect/runner'
# SeleniumConnect doesn't have a way to hook your own runner in without this.
require 'selenium_connect_browserstack/runner_fix'
SeleniumConnect::Runner.send(:prepend, SeleniumConnectBrowserstack::RunnerFix)