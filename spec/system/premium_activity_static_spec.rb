# frozen_string_literal: true

RSpec.describe "Premium activity and static surfaces" do
  before_all { UserActionManager.enable }

  fab!(:current_user, :admin)
  fab!(:activity_topic) do
    Fabricate(:topic, user: current_user).tap do |topic|
      Fabricate
        .times(2, :post, topic:, user: current_user)
        .each { |post| UserActionManager.post_created(post) }
    end
  end
  fab!(:notification) { Fabricate(:notification, user: current_user, read: false) }
  fab!(:guidelines_topic) { Fabricate(:topic_with_op) }

  before { upload_theme_or_component }

  it "keeps the native user activity stream usable" do
    sign_in(current_user)
    PageObjects::Pages::UserActivityStream.new.visit_replies(current_user)

    expect(page).to have_css(".new-user-content-wrapper")
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

  it "keeps the native guidelines static page usable" do
    SiteSetting.guidelines_topic_id = guidelines_topic.id
    visit("/guidelines")

    expect(page).to have_css(".static-guidelines")
    expect(page).to have_css(".body-page")
  end
end
