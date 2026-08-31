# frozen_string_literal: true

RSpec.describe "Premium bulk topic management" do
  fab!(:admin)
  fab!(:topics) { Fabricate.times(3, :post).map(&:topic) }

  before do
    upload_theme_or_component
    sign_in(admin)
  end

  it "keeps the native bulk topic selection workflow usable" do
    visit("/latest")

    expect(page).to have_css("button.bulk-select")

    find("button.bulk-select").click

    expect(page).to have_css(".topic-list-item.bulk-selecting", minimum: 3)
    expect(page).to have_css(".topic-list-item input.bulk-select", minimum: 3)

    first(".topic-list-item input.bulk-select").click

    expect(page).to have_css(".topic-list-item.bulk-selected", count: 1)
    expect(page).to have_css(".topic-list-item input.bulk-select:checked", count: 1)
    expect(page).to have_css(".bulk-select-topics-dropdown")
    expect(page).to have_css(".bulk-select-topic-dropdown__count")
  end
end
