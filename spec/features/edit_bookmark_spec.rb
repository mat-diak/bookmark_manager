#we wanna add a bookmark
#edit a bookmark
#see if it changed on the page

feature 'update bookmark' do
  scenario 'user changes the title' do
    visit '/bookmarks'
    fill_in('page_address', with: 'https://www.cloudflare.com/')
    fill_in('title', with: 'Test Title')
    click_on "Add bookmark"

    first('.bookmark').click_button 'Update'

    # not sure how to make this test see which bookmark
    # expect(current_path).to eq 'bookmarks/edit/ !ID?'

    expect(page).to have_content "Current title: Test Title"
    expect(page).to have_content "Current url: https://www.cloudflare.com/"


    # fill_in('new_url', with: 'https://www.updatedurl.com/')
    fill_in('title', with: 'Updated Title')

    click_on 'Change Title'

    # expect(current_path).to eq '/bookmarks/:id/edit'
    
    expect(page).to have_content "Current title: Updated Title"
    expect(page).not_to have_content "Test Title"
    expect(page).to have_content "Current url: https://www.cloudflare.com/"
    
    click_on 'Back to bookmarks'
    
    expect(page).not_to have_content "Test Title"
    expect(page).to have_content "Updated Title\nhttps://www.cloudflare.com/"
    expect(page).to have_link('https://www.cloudflare.com/', href: 'https://www.cloudflare.com/')


    # select what to change
    # fill_in the box with the conent
    # click_in change
    
    #we should have that element updated
    
  end
end