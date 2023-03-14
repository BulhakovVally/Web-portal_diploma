require 'test_helper'

class EventsControllerTest < ActionController::TestCase
  test "should get name:string" do
    get :name:string
    assert_response :success
  end

  test "should get describtion:text" do
    get :describtion:text
    assert_response :success
  end

  test "should get start_finish:date_time" do
    get :start_finish:date_time
    assert_response :success
  end

end
