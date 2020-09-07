require 'rails_helper'

RSpec.describe Sake, type: :model do
  before do
    @sake = FactoryBot.build(:sake)
    @sake.image = fixture_file_upload('public/images/test_image.png')
  end

  describe '日本酒投稿' do
    context '日本酒投稿がうまくいく時' do
      it '全ての項目を正しく記入していれば登録できる' do
        expect(@sake).to be_valid 
      end
      it '使用米を記入しなくても登録できる' do
        @sake.rice = nil
        expect(@sake).to be_valid
      end
      it '精米歩合の最後に%がついていると登録できる' do
        @sake.rice_rate = '25%'
        expect(@sake).to be_valid
      end
      it '日本酒度の最初に-か+がついていたら登録できる' do
        @sake.sake_degree = -20
        expect(@sake).to be_valid
      end
      it 'アルコール度数は21度以下なら登録できる' do
        @sake.degree = 20
        expect(@sake).to be_valid
      end
      it 'アルコール度数は文字列でもint型になり登録できる。' do
        @sake.degree = "19"
        expect(@sake).to be_valid
      end
    end

    context '日本酒投稿がうまくいかない時' do
      it '日本酒名が空だと登録できない' do
        @sake.name = nil
        @sake.valid?
        expect(@sake.errors.full_messages).to include("日本酒名を入力してください")
      end
      it '画像が挿入されていないと登録できない' do
        @sake.image = nil
        @sake.valid?
        expect(@sake.errors.full_messages).to include('画像を入力してください')
      end
      it '精米歩合が空だと登録できない' do
        @sake.rice_rate = nil
        @sake.valid?
        expect(@sake.errors.full_messages).to include('精米歩合を入力してください')
      end
      it '精米歩合の最後に%がつかなければ登録できない' do
        @sake.rice_rate = "20"
        @sake.valid?
        expect(@sake.errors.full_messages).to include('精米歩合は最後に%を記入してください')
      end
      it '日本酒度が空だと登録できない' do
        @sake.sake_degree = nil
        @sake.valid?
        expect(@sake.errors.full_messages).to include('日本酒度を入力してください')
      end
      it '日本酒度は最初に+か-を記入しないと登録できない' do
        @sake.sake_degree = 23
        @sake.valid?
        expect(@sake.errors.full_messages).to include('日本酒度は最初に+か-を記入してください')
      end
      it '種類を選択しないと登録できない' do
        @sake.type_id = 1
        @sake.valid?
        expect(@sake.errors.full_messages).to include('種類を選択してください')
      end
      it 'アルコール度数が空だと登録できない' do
        @sake.degree = nil
        @sake.valid?
        expect(@sake.errors.full_messages).to include('アルコール度数を入力してください')
      end
      it 'アルコール度数が22度以上だと登録できない' do
        @sake.degree = 22
        @sake.valid?
        expect(@sake.errors.full_messages).to include('アルコール度数は21以下で入力してください')
      end
      it '酒蔵が空だと登録できない' do
        @sake.company = nil
        @sake.valid?
        expect(@sake.errors.full_messages).to include('酒蔵を入力してください')
      end
    end
  end
end
