require 'pageflow/before_after/engine'
require 'pageflow/before_after/version'

module Pageflow
  module BeforeAfter
    def self.page_type
      BeforeAfter::PageType.new
    end
  end
end
