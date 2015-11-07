
Constituency.create(name: "Southwark", government: (FactoryGirl::create :government))
Constituency.create(name: "Lambeth", government: (FactoryGirl::create :government))
Constituency.create(name: "Tower Hamlets", government: (FactoryGirl::create :government))

10.times do
  con = FactoryGirl::create :constituent
  con.constituency = Constituency.all.sample
  con.save
end

Government.all.each do |gov|
  @motion_list = MotionList.create(government: gov)
  10.times { @motion_list.motions << (FactoryGirl::create :motion) }
end