class ElementdataModel < ActiveRecord::Base
    self.abstract_class = true
    establish_connection :elementdata_development

    before_save :disallow
    before_create :disallow
    before_update :disallow
    before_destroy :disallow

    def disallow
        false
    end
end