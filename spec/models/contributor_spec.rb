# == Schema Information
#
# Table name: contributors
#
#  id         :integer         not null, primary key
#  first_name :string(255)
#  last_name  :string(255)
#  role       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

require 'spec_helper'

describe Contributor do
  pending "add some examples to (or delete) #{__FILE__}"
end
