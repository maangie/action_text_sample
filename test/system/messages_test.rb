require "application_system_test_case"

class MessagesTest < ApplicationSystemTestCase
  setup do
    @message = messages(:one)
  end

  test "visiting the index" do
    visit messages_url
    assert_selector "h2", text: "メッセージ一覧"
  end

  test "creating a Message" do
    visit messages_url
    click_on "＋ 新規作成"

    click_on "保存する"

    assert_text "Message was successfully created."
    click_on "← 一覧へ"
  end

  test "updating a Message" do
    visit messages_url
    click_on "✏️ 編集", match: :first

    click_on "保存する"

    assert_text "Message was successfully updated."
    click_on "← 一覧へ"
  end

  test "destroying a Message" do
    visit messages_url
    click_on "🗑 削除", match: :first

    assert_text "Message was successfully destroyed."
  end
end
