require 'test_helper'

class VestimentaControllerTest < ActionDispatch::IntegrationTest
  setup do
    @vestimentum = vestimenta(:one)
  end

  test "should get index" do
    get vestimenta_url
    assert_response :success
  end

  test "should get new" do
    get new_vestimentum_url
    assert_response :success
  end

  test "should create vestimentum" do
    assert_difference('Vestimentum.count') do
      post vestimenta_url, params: { vestimentum: { descripcion: @vestimentum.descripcion, dia: @vestimentum.dia, foto: @vestimentum.foto, tema: @vestimentum.tema } }
    end

    assert_redirected_to vestimentum_url(Vestimentum.last)
  end

  test "should show vestimentum" do
    get vestimentum_url(@vestimentum)
    assert_response :success
  end

  test "should get edit" do
    get edit_vestimentum_url(@vestimentum)
    assert_response :success
  end

  test "should update vestimentum" do
    patch vestimentum_url(@vestimentum), params: { vestimentum: { descripcion: @vestimentum.descripcion, dia: @vestimentum.dia, foto: @vestimentum.foto, tema: @vestimentum.tema } }
    assert_redirected_to vestimentum_url(@vestimentum)
  end

  test "should destroy vestimentum" do
    assert_difference('Vestimentum.count', -1) do
      delete vestimentum_url(@vestimentum)
    end

    assert_redirected_to vestimenta_url
  end
end
