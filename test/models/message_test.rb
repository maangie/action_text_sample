require 'test_helper'

class MessageTest < ActiveSupport::TestCase
  test "Messageを保存できること" do
    message = Message.new
    message.content = "<p>こんにちは</p>"
    assert message.save
  end

  test "has_rich_text が設定されていること" do
    message = messages(:one)
    assert_respond_to message, :content
  end

  test "contentにリッチテキストを設定できること" do
    message = Message.new
    message.content = "<p><strong>太字</strong>のテキスト</p>"
    message.save!
    assert_equal "<p><strong>太字</strong>のテキスト</p>", message.content.body.to_html
  end
end
