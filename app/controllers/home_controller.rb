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
  
  def tv_popular
    require 'net/http'
    require 'json'
    @url = 'https://api.themoviedb.org/3/tv/popular?api_key=d87c00b6a00ae74e930c063e106d6b4d&language=en-US&page=1'
    @uri = URI(@url)
    @response = Net::HTTP.get(@uri)
    @tv_popular = JSON.parse(@response)
  end
  
  def tv_top_rated
    require 'net/http'
    require 'json'
    @url = 'https://api.themoviedb.org/3/tv/top_rated?api_key=d87c00b6a00ae74e930c063e106d6b4d&language=en-US&page=1'
    @uri = URI(@url)
    @response = Net::HTTP.get(@uri)
    @tv_top_rated = JSON.parse(@response)  
  end
  
  def tv_showing
    require 'net/http'
    require 'json'
    @url = 'https://api.themoviedb.org/3/tv/on_the_air?api_key=d87c00b6a00ae74e930c063e106d6b4d&language=en-US&page=1'
    @uri = URI(@url)
    @response = Net::HTTP.get(@uri)
    @tv_showing = JSON.parse(@response)  
  end
  
  def tv_today
    require 'net/http'
    require 'json'
    @url = 'https://api.themoviedb.org/3/tv/airing_today?api_key=d87c00b6a00ae74e930c063e106d6b4d&language=en-US&page=1'
    @uri = URI(@url)
    @response = Net::HTTP.get(@uri)
    @tv_today = JSON.parse(@response)  
  end
  
  def search
  end
    
  def about
  end
  
  def details
  end
  
  def tv_details
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

class Details_TV    
  
    attr_accessor :id

    def initialize(id)
        @tv_id = id
    end

    def series
        @base_url = "https://api.themoviedb.org/3/tv/"
        @api_key = "?api_key=d87c00b6a00ae74e930c063e106d6b4d"
        @lang = "&language=en-US"
        @url = @base_url + @tv_id + @api_key + @lang
        require 'net/http'
        require 'json'
        @uri = URI(@url)
        @response = Net::HTTP.get(@uri)
        @tv_details = JSON.parse(@response)
        return @tv_details
    end
end

class Search_movies
    
    attr_accessor :query

    def initialize(query)
        @query = query
    end
        
    def search_movies
        @base_url = "https://api.themoviedb.org/3/search/movie?api_key=d87c00b6a00ae74e930c063e106d6b4d&language=en-US"
        @movie_query = "&query=" + query
        @page = "&page=1"
        @adult = "&include_adult=false"
        @url = @base_url + @movie_query + @page + @adult
        require 'net/http'
        require 'json'
        @uri = URI(@url)
        @response = Net::HTTP.get(@uri)
        @movie_search = JSON.parse(@response)
        return @movie_search
    end
end

    
