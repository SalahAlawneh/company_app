FactoryBot.define do
  factory :branch do
    name { generate_hstore_name }
    association :company
  end
end

def generate_hstore_name
  {
    'en' => "Jordan Branch",
    'ar' => "فرع الأردن"
  }
end