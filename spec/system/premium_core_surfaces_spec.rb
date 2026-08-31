# frozen_string_literal: true

RSpec.describe "Premium core surfaces" do
  fab!(:current_user, :user)
  fab!(:category)
  fab!(:topic) { Fabricate(:topic_with_op, category: category) }

  let(:topic_list) { PageObjects::Components::TopicList.new }
  let(:topic_page) { PageObjects::Pages::Topic.new }

  before { upload_theme_or_component }

  it "keeps native topic discovery and reading navigation usable" do
    visit("/")

    expect(topic_list).to have_topic(topic)

    topic_list.visit_topic(topic)

    expect(topic_page).to have_topic_title(topic.title)
    expect(page).to have_css("#topic-title")
    expect(page).to have_css(".topic-post")
  end

  it "keeps the native signed-in composer reachable from a topic" do
    sign_in(current_user)

    topic_page.visit_topic_and_open_composer(topic)

    expect(page).to have_css("#reply-control")
    expect(page).to have_css(".d-editor-textarea-wrapper")
  end

  it "keeps native category discovery usable" do
    visit("/categories")

    expect(page).to have_link(category.name)
  end
end
