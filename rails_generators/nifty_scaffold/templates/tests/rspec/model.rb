require File.dirname(__FILE__) + '/../spec_helper'

describe <%= class_name %> do
  it "should test the factory (to avoid long debugging)" do
    Factory(:<%= singular_name %>).should be_valid
  end
  
  describe "validations" do
    <% attributes.each do |attrib| %>
      it { should validate_presence_of(:<%= attrib.name %>)}
    <% end %>
  end
  
  describe "associations" do
    
  end
  
  
end
