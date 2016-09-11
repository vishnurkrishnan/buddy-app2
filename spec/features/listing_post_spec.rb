require 'rails_helper'

RSpec.feature "Listing Posts" do
	
	before do
		@post1 = Post.create(title: "title", body: "body")
	end
	scenario "list all posts" do
		visit "/"

		expect(page).to have_content(@post1.title)
		expect(page).to have_content(@post1.body)
	end	
end