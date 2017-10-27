class Category < ActiveRecord::Base
  has_many :products

  validates :name_en, :name_ru, presence: true, length: {maximum: 250}

  def name_locale
    return self.send("name_" + "#{I18n.locale}")
  end
end
