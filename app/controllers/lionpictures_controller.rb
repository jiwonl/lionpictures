class LionpicturesController < ApplicationController
  def intro
  end

  def home
    @movies = Movieinfo.all
    
  end
  
  def create
    @movie = Movieinfo.new
    @movie.title = params[:post_title]
    @movie.director = params[:post_director]
    @movie.actor = params[:post_actor]
    @movie.team = params[:post_team]
    @movie.date = params[:post_date]
    str = params[:post_youtubelink]
    @movie.youtubelink  = str[str.length-11,str.length-1]
    @movie.image = params[:post_imagefile]
    @movie.content = params[:post_content]
    
    @movie.save
    
    redirect_to '/lionpictures/home'
  end

  def upload
    
  end


  def delete
    movie = Movieinfo.find(params[:post_id])
    movie.destroy
    redirect_to '/lionpictures/home'
  end
  
  def edit
    @movie =Movieinfo.find(params[:post_id])
    session[:return_to] ||= request.referer
  end
  
  def update
    movie = Movieinfo.find(params[:post_id])
    movie.title = params[:post_title]
    movie.director = params[:post_director]
    movie.actor = params[:post_actor]
    movie.team = params[:post_team]
    movie.date = params[:post_date]
    movie.youtubelink = params[:post_youtubelink]
    movie.image = params[:post_imagefile]
    movie.content = params[:post_content]
    movie.save
    
    redirect_to session.delete(:return_to)
  end
  
  def detail
    @movies = Movieinfo.all
    @movie = Movieinfo.find(params[:post_id])
  end


end
