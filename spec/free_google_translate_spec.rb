require "spec_helper"

RSpec.describe FreeGoogleTranslate do
  it "has a version number" do
    expect(FreeGoogleTranslate::VERSION).not_to be nil
  end

  describe ".translate" do
    context "good params" do
      it "should returns string" do
        expect(GoogleTranslate.translate from: "en", to: "vi", text: "zzz").to be_a String
      end
    end

    context "blank :from" do
      it "should returns string" do
        expect(GoogleTranslate.translate to: "vi", text: "zzz").to be_a String
      end
    end

    context "invalid :from" do
      it "should raise exception" do
        expect{GoogleTranslate.translate from: "enx", to: "vi", text: "zzz"}.to raise_error("Source language is invalid")
      end
    end

    context "empty :to" do
      it "should raise exception" do
        expect{GoogleTranslate.translate from: "en", text: "zzz"}.to raise_error("Target language is invalid")
      end
    end

    context "invalid :to" do
      it "should raise exception" do
        expect{GoogleTranslate.translate from: "en", to: "vix", text: "zzz"}.to raise_error("Target language is invalid")
      end
    end

    context "blank :text" do
      it "should raise exception" do
        expect{GoogleTranslate.translate from: "en", to: "vi"}.to raise_error("Text can not empty")
      end
    end

    context "empty :text" do
      it "should raise exception" do
        expect(GoogleTranslate.translate from: "en", to: "vi", text: "").to be_a String
      end
    end
  end
end
