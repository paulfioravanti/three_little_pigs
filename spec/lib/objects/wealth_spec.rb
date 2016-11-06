module ThreeLittlePigs
  RSpec.describe Wealth do
    describe ".level" do
      let(:wealth_level) { described_class.level(level) }

      context "when level is :low" do
        let(:level) { :low }

        it "returns 1" do
          expect(wealth_level).to eq(1)
        end
      end

      context "when level is :medium" do
        let(:level) { :medium }

        it "returns 2" do
          expect(wealth_level).to eq(2)
        end
      end

      context "when level is :high" do
        let(:level) { :high }

        it "returns 3" do
          expect(wealth_level).to eq(3)
        end
      end

      context "when level is anything else" do
        let(:level) { :unknown }

        it "returns 0" do
          expect(wealth_level).to eq(0)
        end
      end
    end
  end
end
