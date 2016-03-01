require_relative "../../app/models/comment"

describe Comment do
  describe "association" do
    context "with Post" do
      let(:association) { described_class.reflect_on_association(:post) }

      describe "macro" do
        subject { association.macro }

        it { is_expected.to eq(:belongs_to) }
      end
    end
  end
end
