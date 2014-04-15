require 'selenium_connect/job'

module SeleniumConnectBrowserstack
  class Job < ::SeleniumConnect::Job
    
    def start(opts = {})
      @job_name = opts.key?(:name) ? slugify_name(opts[:name]) : 'unnamed_job'
      browserstack_config = {}
      browserstack_config.merge!(opts.fetch(:browserstack))
      browserstack_config.merge!(job_name: @job_name)
      @config.browserstack_opts = browserstack_config
      @driver = Runner.new(@config).driver
    end
  end
end
