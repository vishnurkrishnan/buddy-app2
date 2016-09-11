require 'rails_helper'

RSpec.feature "Creating Posts"  do
	scenario "User creates a new post" do

		visit "/"

		click_link "New Post"

		fill_in "Title", with: "creating first post"
		fill_in "Body", with: "Post Body"

		click_button "Create Post"
		expect(page).to have_content("Post was successfully created")
		expect(page.current_path).to eq(posts_path)
	end	

	scenario "User fails to create a new post" do
		visit "/"

		click_link "New Post"

		fill_in "Title", with: ""
		fill_in "Body", with: ""
		click_button "Create Post"
		
		expect(page).to have_content("Title can't be blank")
		expect(page).to have_content("Body can't be blank")		
	end
end