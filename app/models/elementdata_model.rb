class ElementdataModel < ActiveRecord::Base
    self.abstract_class = true
    if Rails.env.production? then
        establish_connection :elementdata_production
    elsif Rails.env.test? then
        establish_connection :elementdata_test
    else
        establish_connection :elementdata_development
    end

    before_save :disallow
    before_create :disallow
    before_update :disallow
    before_destroy :disallow

    def disallow
        false
    end
end