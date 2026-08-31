# frozen_string_literal: true

RSpec.describe "Premium activity and static surfaces" do
  before_all { UserActionManager.enable }

  fab!(:current_user, :admin)
  fab!(:topic)
  fab!(:activity_post) { Fabricate(:post, topic:, user: current_user) }
  fab!(:notification) { Fabricate(:notification, user: current_user, read: false) }

  before do
    UserActionManager.post_created(activity_post)
    upload_theme_or_component
  end

  it "keeps the native user activity stream usable" do
    sign_in(current_user)
    PageObjects::Pages::UserActivityStream.new.visit_replies(current_user)

    expect(page).to have_css(".user-content-wrapper")
    expect(page).to have_css(".user-stream")
    expect(page).to have_css(".user-stream-item")
  end

  it "keeps the native full notifications page usable" do
    sign_in(current_user)
    PageObjects::Pages::UserNotifications.new.visit(current_user)

    expect(page).to have_css(".user-notifications-filter")
    expect(page).to have_css(".notifications-filter")
    expect(page).to have_css(".user-notifications-list")
    expect(page).to have_css(".notification")
  end

  it "keeps the native about page usable" do
    visit("/about")

    expect(page).to have_css(".about-page")
    expect(page).to have_css(".body-page")
    expect(page).to have_css(".about__header")
    expect(page).to have_css(".about__main-content")
  end

  it "keeps the native faq static page usable" do
    visit("/faq")

    expect(page).to have_css(".static-faq")
    expect(page).to have_css(".body-page")
  end
end
