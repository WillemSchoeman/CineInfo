class HomeController < ApplicationController
  def index
  end

  def popular
    require 'net/http'
    require 'json'
    @url = 'https://api.themoviedb.org/3/movie/popular?api_key=d87c00b6a00ae74e930c063e106d6b4d&language=en-US&page=1'
    @uri = URI(@url)
    @response = Net::HTTP.get(@uri)
    @popular = JSON.parse(@response)
  end

  def now_showing
    require 'net/http'
    require 'json'
    @url = 'https://api.themoviedb.org/3/movie/now_playing?api_key=d87c00b6a00ae74e930c063e106d6b4d&language=en-US&page=1'
    @uri = URI(@url)
    @response = Net::HTTP.get(@uri)
    @now_showing = JSON.parse(@response)
  end

  def top_rated
    require 'net/http'
    require 'json'
    @url = 'https://api.themoviedb.org/3/movie/top_rated?api_key=d87c00b6a00ae74e930c063e106d6b4d&language=en-US&page=1'
    @uri = URI(@url)
    @response = Net::HTTP.get(@uri)
    @top_rated = JSON.parse(@response)
  end

  def upcoming
    require 'net/http'
    require 'json'
    @url = 'https://api.themoviedb.org/3/movie/upcoming?api_key=d87c00b6a00ae74e930c063e106d6b4d&language=en-US&page=1'
    @uri = URI(@url)
    @response = Net::HTTP.get(@uri)
    @upcoming = JSON.parse(@response)
  end
  
  def details
  end 
  
    
    
  def about
  end
end

class Details    
  
    attr_accessor :id

    def initialize(id)
        @movie_id = id
    end

    def movie
        @base_url = "https://api.themoviedb.org/3/movie/"
        @api_key = "?api_key=d87c00b6a00ae74e930c063e106d6b4d"
        @lang = "&language=en-US"
        @url = @base_url + @movie_id + @api_key + @lang
        require 'net/http'
        require 'json'
        @uri = URI(@url)
        @response = Net::HTTP.get(@uri)
        @details = JSON.parse(@response)
        return @details
    end
  end


