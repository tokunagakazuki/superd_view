require 'rails_helper'

describe User do
  describe '#create' do
    it "is valid with a name, email, password, password_confirmation" do
      user = build(:user)
      expect(user).to be_valid
    end
    it "is invalid without a name" do
      user = build(:user, name: "")
      user.valid?
      expect(user.errors[:name]).to include("を入力してください")
    end
    it "is invalid without a email" do
      user = build(:user, email: "")
      user.valid?
      expect(user.errors[:email]).to include("を入力してください")
    end
    it "is invalid without a password" do
      user = build(:user, password: "")
      user.valid?
      expect(user.errors[:password]).to include("を入力してください")
    end
    it "11文字以上の名前" do
      user = build(:user, name: "abcdefghijk")
      user.valid?
      expect(user.errors[:name]).to include("は10文字以内で入力してください")
    end
    it "10文字の名前" do
      user = build(:user, name: "abcdefghij")
      expect(user).to be_valid
    end
    it "is invalid with a duplicate email address" do
      #はじめにユーザーを登録
      user = create(:user)
      #先に登録したユーザーと同じemailの値を持つユーザーのインスタンスを作成
      another_user = build(:user)
      another_user.valid?
      expect(another_user.errors[:email]).to include("はすでに存在します")
    end
    it "パスワード6文字以上" do
      user = build(:user, password: "aaaaaa")
      expect(user).to be_valid
    end
    it "パスワード5文字以上" do
      user = build(:user, password: "aaaaa")
      user.valid?
      expect(user.errors[:password]).to include("は6文字以上で入力してください")
    end
  end
end