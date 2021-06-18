# RSpec を使ったテストの実装練習

## 環境
- Rails 6.1.3.2
- Ruby 2.7.2
- RSpec 3.1
  
## 内容
- モデルスペックを使ったテスト
describe,subject,context,let,change を使用してテスト
  
(例)
```rb
RSpec.describe User, type: :model do
  describe "バリデーションのチェック" do
    subject { user.valid? }

    context "データが条件を満たすとき" do
      let(:user) { build(:user) }
      it "保存できる" do
        expect(subject).to eq true
      end
    end
end
```
  
(例)
```rb
context "ユーザーが削除されたとき" do
    subject { user.destroy }

    let(:user) { create(:user) }
    before do
      create_list(:message, 2, user: user)
      create(:message)
    end
    it "そのユーザーのメッセージも削除される" do
      expect { subject }.to change { user.messages.count }.by(-2)
    end
  end
  ```
