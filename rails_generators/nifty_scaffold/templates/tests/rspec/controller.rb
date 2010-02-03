require File.dirname(__FILE__) + '/../spec_helper'
 
describe <%= plural_class_name %>Controller do
  integrate_views
  
  def valid_<%= singular_name %>
    @<%= singular_name %> = Factory(:<%= singular_name %>)
  end
  
  def invalid_<%= singular_name %>
    @<%= singular_name %> = Factory.build(:<%= singular_name %>, <%= attributes.first.name.to_sym %> => nil)
  end
  
  <%= controller_methods 'tests/rspec/actions' %>
end
