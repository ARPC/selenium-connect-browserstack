# Encoding: utf-8

require 'browserstack'

# selenium connect
class SeleniumConnect
  # Runner
  class Runner
    # Sauce runner
    class Browserstack
      attr_reader :config

      def initialize(config)
        @config = config
      end

      def launch
        init_browser
      end

      private
      
      def set_server_url
        url
      end
      
      def get_browser
        capabilities
      end
      
      def browserstack_config
        config.browserstack
      end

      def url
        "http://#{hostname}/wd/hub"
      end
      
      def hostname
        %{#{credential}@hub.browserstack.com}
      end
      
      def credential
        [browserstack_config.fetch(:username), browserstack_config.fetch(:password)].join(':')
      end
      
      def capabilities
        caps = browserstack_config.dup
        caps.delete(:username)
        caps.delete(:password)
        caps[:build] = Time.now.to_i.to_s
        caps
      end

      def init_browser
        Selenium::WebDriver.for(
          :remote,
          url: url,
          desired_capabilities: capabilities
        )
      end

    end # Browserstack
  end # Runner
end # SeleniumConnect
