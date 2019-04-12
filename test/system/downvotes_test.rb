require "application_system_test_case"

class DownvotesTest < ApplicationSystemTestCase
  setup do
    @downvote = downvotes(:one)
  end

  test "visiting the index" do
    visit downvotes_url
    assert_selector "h1", text: "Downvotes"
  end

  test "creating a Downvote" do
    visit downvotes_url
    click_on "New Downvote"

    fill_in "Post", with: @downvote.post_id
    fill_in "User", with: @downvote.user_id
    click_on "Create Downvote"

    assert_text "Downvote was successfully created"
    click_on "Back"
  end

  test "updating a Downvote" do
    visit downvotes_url
    click_on "Edit", match: :first

    fill_in "Post", with: @downvote.post_id
    fill_in "User", with: @downvote.user_id
    click_on "Update Downvote"

    assert_text "Downvote was successfully updated"
    click_on "Back"
  end

  test "destroying a Downvote" do
    visit downvotes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Downvote was successfully destroyed"
  end
end
