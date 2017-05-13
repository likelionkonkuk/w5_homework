namespace :db do
    
    desc "populates th database with user"
    
    task place: :environment do
        (0..9).each do |i|
            Place.create!(
                name:Faker::Name.name,
                lat: 33.450 + i,
                lng: 126.57 + i,
                description: Faker::Address.city
                    <!--faker git hub으로 들어가서 faker::Address.city-->
            )
        end
    end
end