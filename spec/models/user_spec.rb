require 'rails_helper'

RSpec.describe User, type: :model do
  describe '#create' do
    before do
      @user = FactoryBot.build(:user)
    end
  

    it "nameとemail、passwordとpassword_confirmationが存在すれば登録できること" do
      expect(@user).to be_valid
    end

    it "nicknameが空では登録できないこと" do
      @user.nickname = ''
      @user.valid?
      expect(@user.errors.full_messages).to include("Nickname can't be blank")
    end

    it"first_nameが空では登録できない"do
    @user.first_name = ''
    @user.valid?
    expect(@user.errors.full_messages).to include("First name can't be blank")
    end

    it"family_nameが空では登録できない"do
      @user.family_name = ''
      @user.valid?
      expect(@user.errors.full_messages).to include("Family name can't be blank")
    end

    it"first_name_kanaが空では登録できない"do
      @user.first_name_kana = ''
      @user.valid?
      expect(@user.errors.full_messages).to include("First name kana can't be blank")
    end

    it"family_name_kanaが空では登録できない"do
      @user.family_name_kana = ''
      @user.valid?
      expect(@user.errors.full_messages).to include("Family name kana can't be blank")
    end
    it "emailが空では登録できないこと" do
      @user.email = ""
      @user.valid?
      expect(@user.errors.full_messages).to include("Email can't be blank")
    end

    it "重複したemailが存在する場合登録できない" do
      @user.save
      another_user = FactoryBot.build(:user)
      another_user.email = @user.email
      another_user.valid?
      expect(another_user.errors.full_messages).to include("Email has already been taken")
    end

    it "passwordが空では登録できないこと" do
      @user.password = ""
      @user.valid?
      expect(@user.errors.full_messages).to include("Password can't be blank")
    end
    it "passwordが存在してもpassword_confirmationが空では登録できないこと" do
      @user.password_confirmation = ""
      @user.valid?
      expect(@user.errors.full_messages).to include("Password confirmation doesn't match Password")
    end

    it "passwordが6文字以上であれば登録できること" do
      @user.password = "a00000"
      @user.password_confirmation = "a00000"
      expect(@user).to be_valid
    end

    it "passwordが5文字以下であれば登録できないこと" do
      @user.password = "00000"
      @user.password_confirmation = "00000"
      @user.valid?
      expect(@user.errors.full_messages).to include("Password is too short (minimum is 6 characters)")
    end

    

      it"姓が全角でないと保存できないこと" do
        @user.family_name = "test"
        @user.valid?
        expect(@user.errors.full_messages).to include("Family name は全角で入力してください。")
      end

      it"名が全角でないと保存できないこと"do
        @user.first_name = "test"
        @user.valid?
        expect(@user.errors.full_messages).to include("First name は全角で入力してください。")
      end

      it"姓の振り仮名がカタカナでないと保存できないこと"do
        @user.family_name_kana = "てすと"
        @user.valid?
        expect(@user.errors.full_messages).to include("Family name kana は全角カタカナで入力して下さい。")
      end
      
      it"名の振り仮名がカタカナでないと保存できないこと"do
        @user.first_name_kana = "てすと"
        @user.valid?
        expect(@user.errors.full_messages).to include("First name kana は全角カタカナで入力して下さい。")
      end
    
  end
end