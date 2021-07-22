require 'application_system_test_case'

class ArticletsTest < ApplicationSystemTestCase
  setup do
    @articlet = articlets(:one)
  end

  test 'visiting the index' do
    visit articlets_url
    assert_selector 'h1', text: 'Articlets'
  end

  test 'creating a Articlet' do
    visit articlets_url
    click_on 'New Articlet'

    fill_in 'Body', with: @articlet.body
    fill_in 'Image data', with: @articlet.image_data
    fill_in 'Title', with: @articlet.title
    click_on 'Create Articlet'

    assert_text 'Articlet was successfully created'
    click_on 'Back'
  end

  test 'updating a Articlet' do
    visit articlets_url
    click_on 'Edit', match: :first

    fill_in 'Body', with: @articlet.body
    fill_in 'Image data', with: @articlet.image_data
    fill_in 'Title', with: @articlet.title
    click_on 'Update Articlet'

    assert_text 'Articlet was successfully updated'
    click_on 'Back'
  end

  test 'destroying a Articlet' do
    visit articlets_url
    page.accept_confirm do
      click_on 'Destroy', match: :first
    end

    assert_text 'Articlet was successfully destroyed'
  end
end
