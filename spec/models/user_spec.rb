require 'rails_helper'

RSpec.describe User, type: :model do

  subject { User.create(email: "example@exmaple.com", password: "password") }

  it 'email should be present' do
    subject.email = nil
    expect(subject).to_not be be_valid
  end

  it 'password should be present' do
    subject.password = nil
    expect(subject).to_not be be_valid
  end

  it 'User email' do
    email_pass = subject.email
    expect(email_pass).to match /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  end

end
