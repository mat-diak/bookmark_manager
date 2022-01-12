feature 'saving bookmark' do
  scenario 'it appears on the list' do
    # we wanna test saving a bookmark
    # in this test when we save a bookmark we want to see the bookmark in the bookmarks list
    visit '/bookmarks'
    fill_in('page_address', with: 'https://www.cloudflare.com/') #put down the address
    fill_in('title', with: 'Test Title')
    click_on "Add bookmark" #click some add button
    expect(page).to have_content 'Test Title: https://www.cloudflare.com/'
  end

  # scenario 'a title column appears within the table' do
  #   visit '/bookmarks'
  #   fill_in('page_address', with: 'https://www.cloudflare.com/')
  #   fill_in('title', with: 'Test Title')
  #   click_on "Add bookmark"
  #   expect(page).to have_content 'Test Title'
  # end
end
