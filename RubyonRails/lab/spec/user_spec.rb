require 'rails_helper'

RSpec.describe User, type: :model do
  describe "#name" do
    context "instance_doubleを利用する場合" do
      it "スタブしたnameメソッドで指定した値を返す" do
        user = instance_double(User)
        allow(user).to receive(:name).and_return("Alice")
        expect(user.name).to eq("Alice")
      end
    end
  end
end