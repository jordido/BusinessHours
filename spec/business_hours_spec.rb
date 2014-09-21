require_relative '../BusinessHours'


describe "bussiness_hours" do
	it "outputs the same time if first parameter = 0" do
    expect(BusinessHours.new("","").calculate_deadline(0, "Jun 7, 2010 9:10 AM")).to eq("Jun 7, 2010 9:10 AM")
  end


 it "adds first parameter (as seconds) to second parameter (date string) and outputs" do
    expect(BusinessHours.new("","").calculate_deadline(2*60*60, "Jun 7, 2010 9:10 AM")).to eq("Mon Jun 07 11:10:00 2010")
  end

end
