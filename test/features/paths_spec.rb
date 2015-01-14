require './test/test_helper'

class Paths < ActionDispatch::IntegrationTest
  def can_visit_the_root_path_without_authentication
    visit '/'
    assert page_has_content? "Login with GitHub"
  end
end
