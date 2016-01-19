class ElementdataModel < ActiveRecord::Base
    self.abstract_class = true
    self.table_name_prefix = 'ed_'

    before_save :disallow
    before_create :disallow
    before_update :disallow
    before_destroy :disallow

    def disallow
        false
    end
end