class User < ApplicationRecord
    validates :name, presence: true, uniqueness: true
    has_many :hairstyles

    before_create :slugify
    
    def slugify
        self.slug = name.parametrize
    end

end
