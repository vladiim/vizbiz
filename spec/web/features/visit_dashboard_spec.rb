require 'features_helper'

RSpec.feature 'Visit dashboard spec' do
  describe 'from the homepage' do
    it 'renders the dashboard' do
      visit '/'
      click_link 'View Sales Dashboard'
      expect(current_path).to eq('/dashboards/sales')
      expect(page).to have_content('Sales dashboard')
    end
  end
end
