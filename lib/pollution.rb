require File.join(File.dirname(__FILE__), 'pollution', 'config')
require File.join(File.dirname(__FILE__), 'pollution', 'driver')

module Pollution
  unless const_defined?(:VERSION)
    VERSION = '0.0.1'
  end
end
