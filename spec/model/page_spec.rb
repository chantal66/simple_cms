require 'rails_helper'
require 'pry'

describe Page do
  describe 'validations' do
    context 'valid attributes' do
      it 'is valid with a name and page id' do
        subject = Subject.create!(name: 'Software')
        page = Page.new(name: 'Software', subject_id: subject.id )

        expect(page).to be_valid
      end
    end
    context 'invalid attributes' do
      it 'is invalid without valid attributes' do
        page = Page.new

        expect(page).to be_invalid
      end
    end
  end

  describe 'relationships' do
    it 'belongs to subject' do
      page = Page.new(name: 'Software')

      expect(page).to respond_to(:subject)
    end
  end
end