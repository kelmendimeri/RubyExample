require 'rails_helper'

RSpec.describe Article, type: :model do

    subject { Article.new(title: "Harry Potter", description: "Harry Potter is a series of seven fantasy novels written by British author J. K. Rowling. The novels chronicle the lives of a young wizard, Harry Potter, and his friends Hermione Granger and Ron Weasley, all of whom are students at Hogwarts School of Witchcraft and Wizardry. The main story arc concerns Harry's struggle against Lord Voldemort, a dark wizard who intends to become immortal, overthrow the wizard governing body known as the Ministry of Magic and subjugate all wizards and Muggles (non-magical people).") }

  before { subject.save }

  it 'title should be present' do
    subject.title = nil
    expect(subject).to_not be be_valid
  end

  it 'description should be present' do
    subject.title = nil
    expect(subject).to_not be be_valid
  end

  it 'title should be not to long' do
    subject.title = 'a' * 51
    expect(subject).to_not be be_valid
  end

  it 'title should be not to short' do
    subject.title = 'a' * 7
    expect(subject).to_not be be_valid
  end

  it 'description should be not to short' do
    subject.title = 'a' * 24
    expect(subject).to_not be be_valid
  end

end

