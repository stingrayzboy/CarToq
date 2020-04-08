FactoryBot.define do
  factory :vehicle do
    vin { 'MyString' }
    grade { '9.99' }
    stocknumber { 1 }
    make { 'MyString' }
    model { 'MyString' }
    series { 'MyString' }
    year { 1 }
    price { '9.99' }
    body { 'MyString' }
    cylinders { 1 }
    displacement { 1.5 }
    exterior { 'MyString' }
    interior { 'MyString' }
    mileage { 1.5 }
    transmission { 'MyString' }
    upholstery { 'MyString' }
    enddate { '2020-04-08' }
    abglocation { 'MyString' }
    buydate { '2020-04-08' }
    buyername { 'MyString' }
    watchedby { 'MyString' }
    dealershipname { 'MyString' }
    drive_train { 'MyString' }
    condition_report { 'MyText' }
    sales_rep { 'MyString' }
  end
end
