module SeleniumConnectBrowserstack
  module Runner
    
    def launch
      capabilities = config.fetch(:browserstack) do
        {}
      end
      capabilities.delete(:username)
      capabilities.delete(:password)
      capabilities
    end
    
    def match?
      config.browser =~ /i(nternet[_\s]?)?e(xplorer)?/i || super
    end
  end
end
