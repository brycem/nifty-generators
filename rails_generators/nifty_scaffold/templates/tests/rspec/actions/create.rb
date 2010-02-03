  describe "CREATE" do
    it "create action should render new template when model is invalid" do
      post :create, :<%= singular_name %> => Factory.attributes_for(:<%= singular_name %>, :<%= attributes.first.name.to_sym %>   => nil)
      response.should render_template(:new)
    end
  
    it "create action should redirect when model is valid" do
      post :create, post :create, :<%= singular_name %> => Factory.attributes_for(:<%= singular_name %>)
      response.should redirect_to(<%= item_path_for_spec('url') %>)
    end
  end