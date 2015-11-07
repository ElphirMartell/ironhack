require_relative "../spamfilter"

describe CommentList do

  describe "#CommentList" do
  let(:list) {CommentList.new}

    describe "#add_comments" do
      it "add a comment to an array of comments" do
        expect(list.add_comments("New comment")).to include("New comment")
      end
    end

    describe "is_this_spam?" do
      it "find out if the new comment is spam or not" do
        expect(list.)

  end


end