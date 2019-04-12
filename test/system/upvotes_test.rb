require "application_system_test_case"

class UpvotesTest < ApplicationSystemTestCase
  setup do
    @upvote = upvotes(:one)
  end

  test "visiting the index" do
    visit upvotes_url
    assert_selector "h1", text: "Upvotes"
  end

  test "creating a Upvote" do
    visit upvotes_url
    click_on "New Upvote"

    fill_in "Post", with: @upvote.post_id
    fill_in "User", with: @upvote.user_id
    click_on "Create Upvote"

    assert_text "Upvote was successfully created"
    click_on "Back"
  end

  test "updating a Upvote" do
    visit upvotes_url
    click_on "Edit", match: :first

    fill_in "Post", with: @upvote.post_id
    fill_in "User", with: @upvote.user_id
    click_on "Update Upvote"

    assert_text "Upvote was successfully updated"
    click_on "Back"
  end

  test "destroying a Upvote" do
    visit upvotes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Upvote was successfully destroyed"
  end
end
