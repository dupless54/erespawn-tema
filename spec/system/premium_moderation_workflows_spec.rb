# frozen_string_literal: true

RSpec.describe "Premium moderation workflows" do
  fab!(:admin)
  fab!(:post)
  fab!(:reviewable) { Fabricate(:reviewable_flagged_post, target: post) }

  before do
    upload_theme_or_component
    sign_in(admin)
  end

  it "keeps the native review queue usable" do
    visit("/review")

    expect(page).to have_css(".reviewable-container")
    expect(page).to have_css(".reviewable-filters")
    expect(page).to have_css(".reviewable-list")
    expect(page).to have_css(".review-item[data-reviewable-id='#{reviewable.id}']")
    expect(page).to have_css(".review-item__moderator-actions")
  end
end
