require 'rails_helper'

RSpec.describe Post, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
  describe "Creation" do
    it 'can be created' do
      post = Post.create(date: Date.today, rationale: "Anything")
      expect(post).to be_valid
    end
  end
end
