class Portfolio < ApplicationRecord
    validates_presence_of :title, :body, :main_image, :thumb_image


    def self.angular
        where(body: 'Angular')
    end

    scope :ruby_on_rails_portfolio_items, -> { where(:body => 'Ruby on Rails')}
    # Ex:- scope :active, -> {where(:active => true)}

    after_initialize :set_defaults
    
      def set_defaults
        self.main_image ||= "http://placehold.it/600x400"
        self.thumb_image ||= "http://placehold.it/600x400"
     end
end
