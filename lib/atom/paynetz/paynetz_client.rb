module Atom
 
  module Paynetz
    
    class Client
 
      attr_accessor *Configuration::VALID_CONFIG_KEYS
 
      def initialize(options={})
        merged_options = Atom::Paynetz.options.merge(options)
        Configuration::VALID_CONFIG_KEYS.each do |key|
          send("#{key}=", merged_options[key])
        end
      end
           
      def get_token options
        
      end
 
    end # Client
 
  end
end