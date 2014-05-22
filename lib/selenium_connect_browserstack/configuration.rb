module SeleniumConnectBrowserstack
  module Configuration
    attr_accessor :browserstack,
                  :debug,
                  :os_version,
                  :browser_version,
                  :resolution,
                  :project,
                  :build

    def self.prepended(base)
      base.class_eval do
        define_method('browserstack.debug') do
          instance_variable_get("@browserstack_debug")
        end

        define_method('browserstack.debug=') do |val|
          instance_variable_set("@browserstack_debug", val)
        end
      end
    end
  end
end