require 'rails_helper'

describe TasksController do

  describe 'GET #index' do

    it 'renders index template' do
      get :index
      expect(response).to render_template(:index)
    end

    it 'assigns @tasks' do
      task = Task.create(body: 'I am content')
      get :index
      expect(assigns(:tasks)).to eq([task])
    end

  end

  describe 'GET #new' do

    it 'renders new template' do
      get :new
      expect(response).to render_template(:new)
    end

    it 'renders form template' do
      get :new
      expect(response).to render_template(:form)
    end

    it 'assigns @task' do
      get :new
      expect(assigns(:task)).to be_a_new(Task)
    end


  end
end
