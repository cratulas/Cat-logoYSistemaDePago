require 'test_helper'

class ProductFisicalsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @product_fisical = product_fisicals(:one)
  end

  test "should get index" do
    get product_fisicals_url
    assert_response :success
  end

  test "should get new" do
    get new_product_fisical_url
    assert_response :success
  end

  test "should create product_fisical" do
    assert_difference('ProductFisical.count') do
      post product_fisicals_url, params: { product_fisical: { description: @product_fisical.description, name: @product_fisical.name, price: @product_fisical.price, size: @product_fisical.size, sku: @product_fisical.sku, stock: @product_fisical.stock } }
    end

    assert_redirected_to product_fisical_url(ProductFisical.last)
  end

  test "should show product_fisical" do
    get product_fisical_url(@product_fisical)
    assert_response :success
  end

  test "should get edit" do
    get edit_product_fisical_url(@product_fisical)
    assert_response :success
  end

  test "should update product_fisical" do
    patch product_fisical_url(@product_fisical), params: { product_fisical: { description: @product_fisical.description, name: @product_fisical.name, price: @product_fisical.price, size: @product_fisical.size, sku: @product_fisical.sku, stock: @product_fisical.stock } }
    assert_redirected_to product_fisical_url(@product_fisical)
  end

  test "should destroy product_fisical" do
    assert_difference('ProductFisical.count', -1) do
      delete product_fisical_url(@product_fisical)
    end

    assert_redirected_to product_fisicals_url
  end
end
