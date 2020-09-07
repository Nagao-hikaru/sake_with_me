require 'rails_helper'

RSpec.describe Restaurant, type: :model do
  before do
    @restaurant = FactoryBot.build(:restaurant)
    @restaurant.images = fixture_file_upload('public/images/test_image.png')
  end

  describe '飲食店投稿機能' do
    context '飲食店投稿がうまくいき時' do
      it '全ての項目が記入していれば登録できる' do
        expect(@restaurant).to be_valid
      end

      it '画像が空でも保存できること' do
        @restaurant.images = nil
        expect(@restaurant).to be_valid
      end
    end

    context '飲食店投稿がうまくかない時' do
      it '飲食店名が空だと登録できない' do
        @restaurant.name = nil
        @restaurant.valid?
        expect(@restaurant.errors.full_messages).to include("飲食店名を入力してください")
      end
      it '生ビールが空だと登録できない' do
        @restaurant.beer = nil
        @restaurant.valid?
        expect(@restaurant.errors.full_messages).to include("生ビールを入力してください")
      end
      it 'ジャンルを選択しないと登録できない' do
        @restaurant.genre_id = 1
        @restaurant.valid?
        expect(@restaurant.errors.full_messages).to include('店の業態を選択してください')
      end
      it '都道府県を選択しないと登録できない' do
        @restaurant.prefecture_id = 1
        @restaurant.valid?
        expect(@restaurant.errors.full_messages).to include('都道府県を選択してください')
      end
      it '住所を入力しないと登録できない' do
        @restaurant.address = nil
        @restaurant.valid?
        expect(@restaurant.errors.full_messages).to include('住所を入力してください')
      end
    end



  end
end
