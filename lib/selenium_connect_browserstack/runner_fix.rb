module SeleniumConnectBrowserstack
  module RunnerFix

    def init_driver
      require 'selenium_connect/runners/' + config.host
      runner_class = self.class.const_get("SeleniumConnect::Runner::#{config.host.capitalize}")
      runner_class.new(config).launch
    rescue NameError, LoadError
      super
    end
    
  end
end
