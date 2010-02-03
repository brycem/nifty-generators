  describe "EDIT" do
    it "edit action should render edit template" do
      valid_<%= singular_name %>
      get :edit, :id => @<%= singular_name %>
      response.should render_template(:edit)
    end
  end