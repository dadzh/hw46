class Product < ActiveRecord::Base
	mount_uploader :image, ProductUploader
  belongs_to :category

  validates :title_en, :title_ru, presence: true,
            length: { maximum: 250 }

  validates :price, presence: true,
            numericality: { greater_than_or_equal_to: 0.01 }

  def self.title_locale
    return "title_" + "#{I18n.locale}"
  end
  def self.description_locale
    return "description_" + "#{I18n.locale}"
  end

end
