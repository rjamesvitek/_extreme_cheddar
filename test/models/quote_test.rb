require 'test_helper'

class QuoteTest < ActiveSupport::TestCase

	test "unique_tag" do
		quote = Quote.create(:author => 'Ryne Vitek', :saying => 'Gooble Gob, Gobble Goob!')
		expected = 'RV#' + quote.id.to_s
		actual = quote.unique_tag
		assert_equal expected, actual
	end
end
