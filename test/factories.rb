FactoryGirl.define do 
	
	factory :user do
		sequence :email do |x|
			"user#{x}@me.com"
		end
		password "Password"
		password_confirmation "Password"

	end

	factory :place do
		association :user
		name "Restaurant 1"
		description "Tasty Italian Food"
		address "1 Main Street, Toledo, OH"
	end

	factory :comment do
		association :user
		association :place
		message "hi there"
		rating "1_star"
	end
end