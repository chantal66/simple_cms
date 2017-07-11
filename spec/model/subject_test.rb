require 'rails_helper'

describe Subject do
  describe 'validations' do
    context 'valid attributes' do
      it 'is valid with a name' do
        subject = Subject.new(name: 'Software')

        expect(subject).to be_valid
      end
      end
    context 'invalid attributes' do
      it 'is invalid without a name' do
        subject = Subject.new

        expect(subject).to be_invalid
      end
    end
  end

  describe 'relationships' do
    it 'has many pages' do
      subject = Subject.new(name: 'Software')

      expect(subject).to respond_to(:pages)
    end
  end
end