require 'rails_helper'

RSpec.describe HomeController, type: :controller do
  before do
    user = User.create!(email: 'test@test.com', password: 'aandres321')
    sign_in user
  end

  describe '#calculate_bmi' do
    context 'get' do
      it 'should redirect to root path' do
        get :calculate_bmi
        expect(response).to redirect_to(root_path)
      end
    end

    context 'post' do
      context 'when user params is empty' do
        it 'should redirect to root path' do
          get :calculate_bmi
          expect(response).to redirect_to(root_path)
        end
      end

      context 'when invalid values for weight and height params' do
        it 'should render index with a message error' do
          post :calculate_bmi, user: { weight: 1, height: 0 }
          expect(response).to render_template('index')
          expect(flash[:message]).to eq('Invalid data')
        end
      end

      context 'when values are correct' do
        it 'should to calculate bmi' do
          post :calculate_bmi, user: { weight: 80, height: 1.80 }
          expect(assigns(:bmi).round(2)).to eq(24.69)
          expect(assigns(:category).description).to eq('Normal (healthy weight)')
        end
      end
    end
  end
end
