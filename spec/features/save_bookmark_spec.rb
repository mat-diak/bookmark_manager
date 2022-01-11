feature 'saving bookmark' do
  scenario 'it appears on the list' do
    # we wanna test saving a bookmark
    # in this test when we save a bookmark we want to see the bookmark in the bookmarks list
    visit '/bookmarks'
    fill_in('page_address', with: 'https://www.cloudflare.com/') #put down the address
    click_on "Add bookmark" #click some add button
    expect(page).to have_content 'https://www.cloudflare.com/'
  end
end