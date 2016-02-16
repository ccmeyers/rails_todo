require 'rails_helper'

describe Task do

  before(:each) do
    @task = Task.create(body: "I am content")
  end

  it 'is valid with body' do
    expect(@task).to be_valid
  end

  it 'is not valid without body' do
    @task.body = nil
    @task.save
    expect(@task).to_not be_valid
  end

  it 'is not valid with empty string as body' do
    @task.body = " "
    @task.save
    expect(@task).to_not be_valid
  end

  it 'saves with completed attribute set to false' do
    expect(@task.completed).to eq(false)
  end

  it 'makes priority 1 more than amount of tasks' do
    expect(@task.priority).to eq(1)
  end

end
