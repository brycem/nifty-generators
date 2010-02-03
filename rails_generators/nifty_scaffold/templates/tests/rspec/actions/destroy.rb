  describe "DESTROY" do
    
    it "destroy action should destroy model and redirect to index action" do
      valid_<%= singular_name %>
      delete :destroy, :id => @<%= singular_name %>.id
      response.should redirect_to(<%= items_path('url') %>)
      <%= class_name %>.exists?(<%= singular_name %>.id).should be_false
    end
  end