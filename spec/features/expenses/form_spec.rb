require 'rails_helper'

RSpec.describe 'Expense form' do
  subject { page }

  it 'has a form' do
    visit '/'

    is_expected.to have_field 'expense[amount]'
    is_expected.to have_select 'expense[category]', options: ['Food', 'Beauty', 'Gifts', 'Cinema']
    is_expected.to have_button 'Add'
  end
end
