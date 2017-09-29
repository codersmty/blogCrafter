require 'rails_helper'

RSpec.describe Schedule, type: :model do
  context "validate" do
    it { is_expected.to validate_presence_of(:titile) }
    it {is_expected.to validate_presence_of(:content)}
  end
end
