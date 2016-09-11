require 'rails_helper'

RSpec.feature "Listing Posts" do
	
	before do
		@post1 = Post.create(title: "title", body: "body")
	end
	scenario "Individual post" do
		visit "/"

		click_link "Show"
		expect(page).to have_content(@post1.title)
		expect(page).to have_content(@post1.body)
		expect(current_path).to eq(post_path(@post1))
	end	
end 