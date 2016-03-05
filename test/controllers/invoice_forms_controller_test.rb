require 'test_helper'

class InvoiceFormsControllerTest < ActionController::TestCase
  setup do
    @invoice_form = invoice_forms(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:invoice_forms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create invoice_form" do
    assert_difference('InvoiceForm.count') do
      post :create, invoice_form: { name: @invoice_form.name }
    end

    assert_redirected_to invoice_form_path(assigns(:invoice_form))
  end

  test "should show invoice_form" do
    get :show, id: @invoice_form
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @invoice_form
    assert_response :success
  end

  test "should update invoice_form" do
    patch :update, id: @invoice_form, invoice_form: { name: @invoice_form.name }
    assert_redirected_to invoice_form_path(assigns(:invoice_form))
  end

  test "should destroy invoice_form" do
    assert_difference('InvoiceForm.count', -1) do
      delete :destroy, id: @invoice_form
    end

    assert_redirected_to invoice_forms_path
  end
end
