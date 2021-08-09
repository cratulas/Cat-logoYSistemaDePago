require "application_system_test_case"

class ProductFisicalsTest < ApplicationSystemTestCase
  setup do
    @product_fisical = product_fisicals(:one)
  end

  test "visiting the index" do
    visit product_fisicals_url
    assert_selector "h1", text: "Product Fisicals"
  end

  test "creating a Product fisical" do
    visit product_fisicals_url
    click_on "New Product Fisical"

    fill_in "Description", with: @product_fisical.description
    fill_in "Name", with: @product_fisical.name
    fill_in "Price", with: @product_fisical.price
    fill_in "Size", with: @product_fisical.size
    fill_in "Sku", with: @product_fisical.sku
    fill_in "Stock", with: @product_fisical.stock
    click_on "Create Product fisical"

    assert_text "Product fisical was successfully created"
    click_on "Back"
  end

  test "updating a Product fisical" do
    visit product_fisicals_url
    click_on "Edit", match: :first

    fill_in "Description", with: @product_fisical.description
    fill_in "Name", with: @product_fisical.name
    fill_in "Price", with: @product_fisical.price
    fill_in "Size", with: @product_fisical.size
    fill_in "Sku", with: @product_fisical.sku
    fill_in "Stock", with: @product_fisical.stock
    click_on "Update Product fisical"

    assert_text "Product fisical was successfully updated"
    click_on "Back"
  end

  test "destroying a Product fisical" do
    visit product_fisicals_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Product fisical was successfully destroyed"
  end
end
