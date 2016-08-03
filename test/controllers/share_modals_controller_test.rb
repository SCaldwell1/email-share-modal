require 'test_helper'

class ShareModalsControllerTest < ActionController::TestCase
  setup do
    @share_modal = share_modals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:share_modals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create share_modal" do
    assert_difference('ShareModal.count') do
      post :create, share_modal: { content: @share_modal.content, slug: @share_modal.slug, title: @share_modal.title }
    end

    assert_redirected_to share_modal_path(assigns(:share_modal))
  end

  test "should show share_modal" do
    get :show, id: @share_modal
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @share_modal
    assert_response :success
  end

  test "should update share_modal" do
    patch :update, id: @share_modal, share_modal: { content: @share_modal.content, slug: @share_modal.slug, title: @share_modal.title }
    assert_redirected_to share_modal_path(assigns(:share_modal))
  end

  test "should destroy share_modal" do
    assert_difference('ShareModal.count', -1) do
      delete :destroy, id: @share_modal
    end

    assert_redirected_to share_modals_path
  end
end
