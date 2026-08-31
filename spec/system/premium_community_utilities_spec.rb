# frozen_string_literal: true

RSpec.describe "Premium community utility surfaces" do
  fab!(:current_user) { Fabricate(:admin, refresh_auto_groups: true) }
  fab!(:post) { Fabricate(:post) }
  fab!(:group) { Fabricate(:group, name: "premium-community") }

  let(:topic_page) { PageObjects::Pages::Topic.new }

  before { upload_theme_or_component }

  it "keeps the native bookmarks list usable" do
    sign_in(current_user)
    topic_page.visit_topic(post.topic)
    topic_page.expand_post_actions(post)
    topic_page.click_post_action_button(post, :bookmark)

    expect(topic_page).to have_post_bookmarked(post, with_reminder: false)

    visit("/u/#{current_user.username}/activity/bookmarks")

    expect(page).to have_css(".user-activity-bookmarks-page")
    expect(page).to have_css(".bookmark-search-form")
    expect(page).to have_css(".bookmark-list-wrapper")
    expect(page).to have_css(".bookmark-list-item")
  end

  it "keeps the native private-message navigation usable" do
    sign_in(current_user)
    visit("/u/#{current_user.username}/messages")

    expect(page).to have_css(".user-messages-page")
    expect(page).to have_css(".user-navigation-secondary")
    expect(page).to have_css(".messages-nav")
    expect(page).to have_css(".navigation-controls")
  end

  it "keeps the native group detail surface usable" do
    sign_in(current_user)
    PageObjects::Pages::Group.new.visit(group)

    expect(page).to have_css(".container.group")
    expect(page).to have_css(".group-details-container")
    expect(page).to have_css(".group-info")
    expect(page).to have_css(".user-primary-navigation")
  end

  it "keeps the native tags index usable" do
    sign_in(current_user)
    visit("/tags")

    expect(page).to have_css(".tags-index")
    expect(page).to have_css(".tags-controls")
    expect(page).to have_css(".tag-sort-options")
    expect(page).to have_css(".all-tag-lists")
  end
end
