require 'rails_helper'

RSpec.describe Post, type: :model do
  describe "Creation" do
  	before do
  		user = User.create(email: 'test@test.com', password 'asdfasdf', password_confirmation: 'asdfasdf', first_name: 'Zach', last_name: 'Beecher')
			visit new_post_path
		end
	end
  	it 'can be created' do	
  		expect(@post).to be_valid
  	end

  	it 'cannot be created without a date, work_performed, and daily_hours' do
  		@post.date = nil
      @post.work_performed = nil
  		@post.daily_hours = nil
  		expect(@post).to_not be_valid
  	end

    it 'has daily hours greater than 0.0' do
      @post.daily_hours = 0.0
      expect(@post).to_not be_valid
    end
  end
end
