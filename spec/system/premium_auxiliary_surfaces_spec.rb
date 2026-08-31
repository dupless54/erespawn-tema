# frozen_string_literal: true

RSpec.describe "Premium auxiliary surfaces" do
  fab!(:current_user, :admin)
  fab!(:member, :user)

  before { upload_theme_or_component }

  it "keeps the full-page login flow usable" do
    visit("/login")

    expect(page).to have_css(".login-fullpage")
    expect(page).to have_css("#login-form")
    expect(page).to have_css("#login-account-name")
  end

  it "keeps the responsive users directory usable" do
    DirectoryItem.refresh!
    sign_in(current_user)
    visit("/u")

    expect(page).to have_css(".users-directory")
    expect(page).to have_css(".directory-table")
    expect(page).to have_css(".directory-table__row")
  end

  it "keeps user preferences usable" do
    sign_in(current_user)
    visit("/u/#{current_user.username}/preferences/account")

    expect(page).to have_css(".user-preferences-page")
    expect(page).to have_css(".user-preferences")
    expect(page).to have_css(".form-vertical")
  end

  it "keeps the badges catalog usable" do
    sign_in(current_user)
    visit("/badges")

    expect(page).to have_css(".container.badges")
    expect(page).to have_css(".badge-card")
  end
end
