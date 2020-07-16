
class UsersPasswordEditTest < ActionDispatch::IntegrationTest

  def setup
    @user = users(:michael)
  end

  test "unsuccessful password_edit" do
    get password_edit_user_path(@user)
    assert_template 'users/password_edit'
    patch user_path(@user), params: { user: { password:              "foo",
                                              password_confirmation: "bar" } }
  end
end