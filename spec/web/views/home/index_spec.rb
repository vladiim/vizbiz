require_relative '../../../../apps/web/views/home/index'

RSpec.describe Web::Views::Home::Index do
  let(:exposures) { Hash[foo: 'bar'] }
  let(:template)  { Hanami::View::Template.new('apps/web/templates/home/index.html.haml') }
  let(:view)      { described_class.new(template, exposures) }
  let(:rendered)  { view.render }

  it 'displays the dashboards' do
    expect(rendered).to include('Sales Dashboard')
  end
end
