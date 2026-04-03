require 'test_helper'

class MessagesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @message = messages(:one)
  end

  test "一覧ページが表示されること" do
    get messages_url
    assert_response :success
  end

  test "新規作成ページが表示されること" do
    get new_message_url
    assert_response :success
  end

  test "メッセージを作成できること" do
    assert_difference("Message.count") do
      post messages_url, params: { message: { content: "<p>新しいメッセージ</p>" } }
    end
    assert_redirected_to message_url(Message.last)
  end

  test "詳細ページが表示されること" do
    get message_url(@message)
    assert_response :success
  end

  test "編集ページが表示されること" do
    get edit_message_url(@message)
    assert_response :success
  end

  test "メッセージを更新できること" do
    patch message_url(@message), params: { message: { content: "<p>更新されたメッセージ</p>" } }
    assert_redirected_to message_url(@message)
  end

  test "メッセージを削除できること" do
    assert_difference("Message.count", -1) do
      delete message_url(@message)
    end
    assert_redirected_to messages_url
  end
end
