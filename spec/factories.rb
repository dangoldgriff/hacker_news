FactoryGirl.define do
	factory :user do
    name 'Bobby Generic'
		password 'foobar'
		password_confirmation 'foobar'
		sequence(:email) { |n| "email#{n}@factory.com" }
	end

	factory :link do
		user
		url 'www.greatsite.com'
		short_description 'wow what a great website'
		
	end

	factory :vote do
		user
		link
	end
end
