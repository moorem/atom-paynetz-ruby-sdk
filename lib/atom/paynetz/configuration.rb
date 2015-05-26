module Atom
  module Paynetz
    module Configuration
      VALID_CONNECTION_KEYS = [:endpoint, :login, :prodid, :pass, :method].freeze
      VALID_OPTIONS_KEYS    = [:format].freeze
      VALID_CONFIG_KEYS     = VALID_CONNECTION_KEYS + VALID_OPTIONS_KEYS
 
      DEFAULT_ENDPOINT    = 'http://203.114.240.183'
      DEFAULT_METHOD      = :post
      DEFAULT_FORMAT      = :xml
      DEFAULT_PRODID      = "NSE"
      
      
      # Build accessor methods for every config options so we can do this, for example:
      #   Awesome.format = :xml
      attr_accessor *VALID_CONFIG_KEYS
 
      # Make sure we have the default values set when we get 'extended'
      def self.extended(base)
        base.reset
      end
 
      def reset
        self.endpoint   = DEFAULT_ENDPOINT
        self.method     = DEFAULT_METHOD
        self.prodid     = DEFAULT_PRODID
        #self.user_agent = DEFAULT_USER_AGENT
 
        #self.api_key    = DEFAULT_API_KEY
        self.format     = DEFAULT_FORMAT
      end
      
      def configure
        yield self
      end
      
      def options
        Hash[ * VALID_CONFIG_KEYS.map { |key| [key, send(key)] }.flatten ]
      end
 
    end # Configuration
  end  
end