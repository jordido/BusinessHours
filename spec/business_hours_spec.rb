require_relative '../BusinessHours'


describe "bussiness_hours" do
	it "outputs the same time if first parameter = 0" do
    expect(BusinessHours.new("","").calculate_deadline(0, "Jun 7, 2010 9:10 AM")).to eq("Jun 7, 2010 9:10 AM")
  end

  it "outputs 2 hours more if first parameter = 2*60*60" do
    expect(BusinessHours.new("","").calculate_deadline(2, "Jun 7, 2010 9:10 AM")).to eq("Mon Jun 07 11:10:00 2010")
  end

#	xit "outputs nothing if input is nothing" do
#   expect(BusinessHours.new(2*60*60, "Jun 7, 2010 9:10 AM")).to eq("Mon Jun 07 11:10:00 2010")
#  end
end
