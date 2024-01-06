module LocalizableName
  extend ActiveSupport::Concern

  included do
    serialize :name, Hash, coder: JSON

    alias_attribute :name, :name_in_locale
    alias_attribute :name=, :name_in_locale=
  end

  def name
    locale = I18n.locale.to_s.downcase
    self.name_in_locale ||= {}
    self.name_in_locale[locale] ||= ""
  end

  def name=(name)
    self.name_in_locale = name
  end

end
