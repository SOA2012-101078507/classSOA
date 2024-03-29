require 'spec_helper'
 
describe MoviesController do
  describe 'searching TMDb' do
    it 'should call the model method that performs TMDb search' do
      fake_results = [mock('movie1'), mock('movie2')]
      Movie.should_receive(:find_in_tmdb).with('hardware').
        and_return(fake_results)
      post :search_tmdb, {:search_terms => 'hardware'}
    end
    it 'should select the Search Results template for rendering' do
      fake_results = [mock('Movie'), mock('Movie')]
      Movie.stub(:find_in_tmdb).and_return(fake_results)
      post :search_tmdb, {:search_terms => 'hardware'}
      response.should render_template('search_tmdb')
    end
    it 'should make the TMDb search results available to that template'
  end
end
