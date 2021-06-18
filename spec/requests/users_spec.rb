require 'rails_helper'

RSpec.describe "Users", type: :request do
  describe "GET #index" do
    subject { get(users_path) }
    context "ユーザーが存在するとき" do
      before { create_list(:user, 3) }
      it "リクエストが成功する" do
        subject
        expect(response).to have_http_status(:ok)
      end
  
      it "name が表示されている" do
        subject
        expect(response.body).to include(*User.pluck(:name))
      end
    end
  end

  describe "GET #show" do
    subject { get(user_path(user_id)) }
    context "ユーザーが存在するとき" do
      let(:user) { create(:user) }
      let(:user_id) { user.id }

      it "リクエストが存在する" do
        subject
        expect(response).to have_http_status(:ok)
      end

      it "name が表示される" do
        subject
        expect(response.body).to include user.name
      end

      it "age が表示される" do
        subject
        expect(response.body).to include user.age.to_s
      end

      it "email が表示される" do
        subject
        expect(response.body).to include user.email
      end

    end

    context ":id に対するユーザーが存在しないとき" do
      let(:user_id) { 1 }
      it "エラーが発生する" do
        expect { subject }.to raise_error ActiveRecord::RecordNotFound
      end
    end
  end
end