class Tattoo < ActiveRecord::Base
  acts_as_voteable
  attr_accessible :picture, :description, :gender, :body_location, :studio, :artist_name, :hashtags, :location, :twitter_photo
  attr_accessible :picture, :description, :gender, :body_location, :studio, :artist_name, :hashtags, :location, :artist_id
  mount_uploader :picture, PictureUploader
  has_one :tweet
  has_many :comments
  belongs_to :user
  belongs_to :artist

  # if Rails.env.production?
  #   searchable do 
  #     text :description, :gender, :body_location, :studio, :artist_name, :hashtags, :location, :artist, :user
  #   end

  #   def self.search(query, params={})
  #     solr_search do

  #       fulltext query do
  #         minimum_match 1
  #       end

  #       paginate :page => params[:page], :per_page => params[:per_page]
  #     end
  #   end
  # end

end
