require 'test_helper'

class PdfsControllerTest < ActionDispatch::IntegrationTest
  test "should get download_my_resume" do
    get pdfs_download_my_resume_url
    assert_response :success
  end

end
