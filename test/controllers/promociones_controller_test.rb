require 'test_helper'

class PromocionesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @promocione = promociones(:one)
  end

  test "should get index" do
    get promociones_url
    assert_response :success
  end

  test "should get new" do
    get new_promocione_url
    assert_response :success
  end

  test "should create promocione" do
    assert_difference('Promocione.count') do
      post promociones_url, params: { promocione: { descripcion: @promocione.descripcion, titulo: @promocione.titulo } }
    end

    assert_redirected_to promocione_url(Promocione.last)
  end

  test "should show promocione" do
    get promocione_url(@promocione)
    assert_response :success
  end

  test "should get edit" do
    get edit_promocione_url(@promocione)
    assert_response :success
  end

  test "should update promocione" do
    patch promocione_url(@promocione), params: { promocione: { descripcion: @promocione.descripcion, titulo: @promocione.titulo } }
    assert_redirected_to promocione_url(@promocione)
  end

  test "should destroy promocione" do
    assert_difference('Promocione.count', -1) do
      delete promocione_url(@promocione)
    end

    assert_redirected_to promociones_url
  end
end
