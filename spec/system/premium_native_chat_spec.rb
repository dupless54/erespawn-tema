# frozen_string_literal: true

RSpec.describe "Premium native chat" do
  fab!(:current_user, :user)
  fab!(:channel, :chat_channel)
  fab!(:message) do
    Fabricate(
      :chat_message,
      user: current_user,
      chat_channel: channel,
      message: "Premium chat smoke message",
    )
  end

  let(:chat_page) { PageObjects::Pages::Chat.new }
  let(:channel_page) { PageObjects::Pages::ChatChannel.new }

  before do
    chat_system_bootstrap(current_user, [channel])
    upload_theme_or_component
    sign_in(current_user)
  end

  it "keeps the native channel, message and composer workflow usable" do
    chat_page.visit_channel(channel)

    expect(page).to have_css(".chat-channel")
    expect(page).to have_css(".c-navbar-container")
    expect(page).to have_css(".chat-message-container", minimum: 1)
    expect(page).to have_css(".chat-composer__inner-container")
    expect(page).to have_css(".chat-composer__input")

    channel_page.send_message("Premium chat interaction check")

    expect(channel_page.messages).to have_message(text: "Premium chat interaction check")
  end
end
