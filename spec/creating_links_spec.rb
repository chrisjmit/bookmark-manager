feature 'Creating links' do

  scenario 'I can create a new link' do
    visit '/links/new'
    fill_in 'url',   with: 'http://www.zombo.com/'
    fill_in 'title', with: 'This is Zombocom'
    click_button 'Create link'
    expect(current_path).to eq '/links'

    within 'ul#links' do
      expect(page).to have_content('This is Zombocom')
    end

  end

  scenario 'Adding tags to links' do
    visit '/links/new'
    fill_in 'url',   with: 'http://www.quietus.com/'
    fill_in 'title', with: 'Quietus'
    fill_in 'tags', with: 'Music'
    click_button 'Create link'
    link = Link.first
    expect(link.tags.map(&:name)).to include('Music')
  end

end
