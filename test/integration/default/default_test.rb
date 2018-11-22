external_ip = attribute(
  "external_ip",
  description: "The output of terraform",
)


control "inspec_attributes" do

  desc "Check if the output is real ip"

  describe external_ip do
    it { should_not eq "127.0.0.1" }
    it { should_not eq "0.0.0.0" }
  end


end