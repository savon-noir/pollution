require File.join(File.dirname(__FILE__), 'pollution', 'providers', 'providers')
require File.join(File.dirname(__FILE__), 'pollution', 'resources', 'generic', 'machine')
require File.join(File.dirname(__FILE__), 'pollution', 'resources', 'ec2', 'machine')

module Pollution
  unless const_defined?(:VERSION)
    VERSION = '0.0.1'
  end
end
