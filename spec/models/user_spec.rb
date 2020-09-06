require 'rails_helper'

RSpec.describe User, type: :model do
  describe '#create' do
    before do
      @user = FactoryBot.build(:user)
    end

    describe 'ユーザー新規登録' do
      context '新規登録がうまくいき時' do
        it '全ての項目を記入していれば登録できる' do
          expect(@user).to be_valid
        end
        it 'passwordが6文字以上かつ英数字混合で登録できる' do
          @user.password = 'tarou44884'
          @user.password_confirmation = 'tarou44884'
          expect(@user).to be_valid
        end
      end

      context '新規登録がうまくいかない時' do
        it 'nameが空だと登録できない' do
          @user.name = nil
          @user.valid?
          expect(@user.errors.full_messages).to include("名前を入力してください")
        end
        it 'emailが空だと登録できない' do
          @user.email = nil
          @user.valid?
          expect(@user.errors.full_messages).to include("メールアドレスを入力してください")
        end
        it 'passwordが空だと登録できない' do
          @user.password = nil
          @user.valid?
          expect(@user.errors.full_messages).to include("パスワードを入力してください")
        end
        it 'passwordが6文字以下であれば登録できない' do
          @user.password = 'r4re'
          @user.valid?
          expect(@user.errors.full_messages).to include('パスワードは6文字以上で入力してください')
        end
        it "passwordが半角英数字でなければ登録できない" do
          @user.password = '4444444'
          @user.valid?
          expect(@user.errors.full_messages).to include("パスワード半角英数字混合で記入してください")
        end
        it "password_confirmationが空では登録できない" do
          @user.password_confirmation = ''
          @user.valid?
          expect(@user.errors.full_messages).to include("確認用パスワードとパスワードの入力が一致しません")
        end
      end
    end
  end
end
