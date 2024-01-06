FactoryBot.define do
  factory :company do
    name { generate_hstore_name }
    branches_number { Faker::Number.between(from: 1, to: 100) }
  end
end

def generate_hstore_name
  {
    'en' => "ZenHR",
    'ar' => "شركة القيادة الدولية لصناعة البرمجيات"
  }
end