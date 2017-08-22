require 'test_helper'

class OfrecesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ofrece = ofreces(:one)
  end

  test "should get index" do
    get ofreces_url
    assert_response :success
  end

  test "should get new" do
    get new_ofrece_url
    assert_response :success
  end

  test "should create ofrece" do
    assert_difference('Ofrece.count') do
      post ofreces_url, params: { ofrece: { calificasion: @ofrece.calificasion, descripcion: @ofrece.descripcion, dia: @ofrece.dia, nombre: @ofrece.nombre, precio: @ofrece.precio, tipo: @ofrece.tipo } }
    end

    assert_redirected_to ofrece_url(Ofrece.last)
  end

  test "should show ofrece" do
    get ofrece_url(@ofrece)
    assert_response :success
  end

  test "should get edit" do
    get edit_ofrece_url(@ofrece)
    assert_response :success
  end

  test "should update ofrece" do
    patch ofrece_url(@ofrece), params: { ofrece: { calificasion: @ofrece.calificasion, descripcion: @ofrece.descripcion, dia: @ofrece.dia, nombre: @ofrece.nombre, precio: @ofrece.precio, tipo: @ofrece.tipo } }
    assert_redirected_to ofrece_url(@ofrece)
  end

  test "should destroy ofrece" do
    assert_difference('Ofrece.count', -1) do
      delete ofrece_url(@ofrece)
    end

    assert_redirected_to ofreces_url
  end
end
