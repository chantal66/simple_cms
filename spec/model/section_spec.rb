require 'rails_helper'
require 'pry'

describe Section do
  describe 'validations' do
    context 'valid attributes' do
      it 'is valid with a name' do
        subject = Subject.create!(name: 'Math')
        page = Page.create!(name: 'Software', subject_id: subject.id)
        section = Section.new(name: 'Software', page_id: page.id )

        expect(section).to be_valid
      end
    end
    context 'invalid attributes' do
      it 'is invalid without valid attributes' do
        section = Section.new

        expect(section).to be_invalid
      end
    end
  end

  describe 'relationships' do
    it 'belongs to subject' do
      section = Section.new(name: 'Software')

      expect(section).to respond_to(:page)
    end
  end
end