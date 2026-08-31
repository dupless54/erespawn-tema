# frozen_string_literal: true

RSpec.describe "Premium identity and discovery surfaces" do
  fab!(:current_user, :admin)
  fab!(:topic) { Fabricate(:post).topic }

  let(:topic_page) { PageObjects::Pages::Topic.new }
  let(:user_card) { PageObjects::Components::UserCard.new }

  before do
    upload_theme_or_component
    sign_in(current_user)
  end

  it "keeps the native user card usable" do
    topic_page.visit_topic(topic)
    topic_page.click_post_author_avatar(topic.posts.first)

    expect(user_card).to be_visible
    expect(user_card).to be_showing_user(topic.posts.first.user.username)
  end

  it "keeps the revamped user menu usable" do
    visit("/")
    find("#toggle-current-user").click

    expect(page).to have_css(".user-menu.revamped")
  end

  it "keeps the full search surface usable" do
    visit("/search")

    expect(page).to have_css(".search-container")
    expect(page).to have_css("input.search-query")
  end
end
