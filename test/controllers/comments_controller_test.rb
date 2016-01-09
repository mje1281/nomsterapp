require 'test_helper'

class CommentsControllerTest < ActionController::TestCase
  test "add comments" do 
  	user = FactoryGirl.create(:user)
  	sign_in user

  	place = FactoryGirl.create(:place)
  	post :create, :place_id => place.id, :comment => {
  		:message => "This place was terrible",
  		:rating => "One Star",
  		}

  	assert_equal 1, place.comments.count
  	assert_redirected_to place_path(place)

  end
end
