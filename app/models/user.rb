class User < ActiveRecord::Base
  USER_TYPES = %w(Venue Dj Artist).freeze
  validates_presence_of :email, :name
  validate :correct_type

  def self.types
    USER_TYPES
  end

  def self.localized_types
    result = []
    USER_TYPES.each do |type|
      result << I18n.t("user_types.#{type.downcase}")
    end
    result
  end

  def correct_type
    errors.add(:type, "Geen juist type geselecteerd.") unless USER_TYPES.include? type
  end
end
