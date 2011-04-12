require 'spec_helper'

describe Notty do

  context 'enhances an object instance so that it' do
    before do
      @o = Object.new
    end

    it 'negates respond_to?' do
      @o.not_respond_to?(:gipe).should be_true
    end

    it 'negates negated respond_to?' do
      @o.not_not_respond_to?(:gipe).should be_false
    end

    it 'negates negated negated respond_to?' do
      @o.not_not_not_respond_to?(:gipe).should be_true
    end

    it 'negates frozen?' do
      @o.not_frozen?.should be_true
    end

    it 'negates negated frozen?' do
      @o.not_not_frozen?.should be_false
    end

    it 'negates negated negated frozen?' do
      @o.not_not_not_frozen?.should be_true
    end

    it 'negates negated negated negated frozen?' do
      @o.not_not_not_not_frozen?.should be_false
    end

    it 'negates negated negated negated negated frozen?' do
      @o.not_not_not_not_not_frozen?.should be_true
    end

    it 'negates negated negated negated negated  negated frozen?' do
      @o.not_not_not_not_not_not_frozen?.should be_false
    end

    it 'responds to negated methods' do
      @o.should respond_to :not_frozen?
    end

    it 'responds to negated negated methods' do
      @o.should respond_to :not_not_frozen?
    end

    it 'does not negate a method that does not end in ?' do
      expect { @o.not_hash }.to raise_error NoMethodError
    end
  end

  context 'enhances your custom object instance so that it' do
    before do
      @o = MyObject.new
    end

    it 'negates a custom method' do
      @o.not_awesome?.should be_false
    end

    it 'negates a negated custom method' do
      @o.not_not_awesome?.should be_true
    end

    it 'negates a negated negated custom method' do
      @o.not_not_not_awesome?.should be_false
    end
  end

end