require 'rails_helper'

RSpec.describe Message, type: :model do
  describe "バリデーション" do
    context "データが条件を満たすとき" do
      it "保存できる" do
      end
    end

    context "name が空のとき" do
      it "エラーが発生する" do
      end
    end

    context "name が 31 文字以上の時" do
      it "エラーが発生する" do
      end
    end

    context "age が空のとき" do
      it "エラーが発生する" do
      end
    end

    context "age が文字列のとき" do
      it "エラーが発生する" do
      end
    end

    context "age が 150 以上のとき" do
      it "エラーが発生する" do
      end
    end

    context "age が負の整数のとき" do
      it "エラーが発生する" do
      end
    end

    context "email が空のとき" do
      it "エラーが発生する" do
      end
    end

    context "emai が256文字以上のとき" do
      it "エラーが発生する" do
      end
    end

    context "email が既に存在するとき" do
      it "エラーが発生する" do
      end
    end

    context "email がアルファベット・英文字のみのとき" do
      it "エラーが発生する" do
      end
    end
  end

  context "ユーザーが削除されたとき" do
    it "そのユーザーのメッセージも削除される" do
    end
  end

end
