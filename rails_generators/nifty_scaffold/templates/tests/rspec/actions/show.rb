  describe "SHOW" do
    it "show action should render show template" do
      valid_<%= singular_name %>
      get :show, :id => @<%= singular_name %>.id
      response.should render_template(:show)
    end
  end