  describe "UPDATE" do
    it "update action should render edit template when model is invalid" do
      valid_<%= singular_name %>
      put :update, :id => @<%= singular_name %>.id,  :<%= singular_name %> => Factory.attributes_for(:<%= singular_name %>, :<%= attributes.first.name.to_sym %>   => nil)
      response.should render_template(:edit)
    end
  
    it "update action should redirect when model is valid" do
      valid_<%= class_name %>
      put :update, :id => @<%= singular_name %>.id,  :<%= singular_name %> => Factory.attributes_for(:<%= singular_name %>)
      response.should redirect_to(<%= item_path_for_spec('url') %>)
    end
  end