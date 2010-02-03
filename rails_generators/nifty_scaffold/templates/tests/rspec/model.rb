require File.dirname(__FILE__) + '/../spec_helper'

describe <%= class_name %> do
  it "should test the factory (to avoid long debugging)" do
    Factory(:<%= singular_name %>).should be_valid
  end
  
  describe "validations" do
    it "should require required fields" do
      {<%= attributes.map { |a| ":#{a.name} => 1" }.join(", ") %>}.each do |field, num_errors|
        Factory.build(:singular_name, field => nil).should have(num_errors).errors_on(field)
      end
    end
  end
  
  describe "associations" do
    
  end
  
  
end
