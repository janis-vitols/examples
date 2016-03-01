require_relative "../../app/models/post"

describe Post do
  describe "association" do
    context "with Comments" do
      let(:association) { described_class.reflect_on_association(:comments) }

      describe "macro" do
        subject { association.macro }

        it { is_expected.to eq(:has_many) }
      end

      describe "options" do
        subject(:options) { association.options }

        it { expect(options).to include(:dependent) }

        describe ":dependent" do
          subject { options[:dependent] }

          it { is_expected.to eq(:destroy) }
        end
      end
    end
  end
end
