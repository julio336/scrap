class ScrappingsController < ApplicationController
  # GET /scrappings
  # GET /scrappings.json
  def index
    @scrappings = Scrapping.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @scrappings }
    end
  end

  # GET /scrappings/1
  # GET /scrappings/1.json

  
  def show
    @scrapping = Scrapping.find(params[:id])
    url = "http://embed.ly/docs/explore/oembed?url=#{@scrapping.url}"
     require 'net/http'
     require 'rubygems'
     require 'nokogiri'
     require 'open-uri'

    doc = Nokogiri::HTML(open(url))
    logger.debug "#{doc}\n\n\n\n\n\n"
    @provider_url = ""
    @provider_url <<  doc.css('#provider_url').text
    @e_provider_url = ""
    @e_provider_url <<  doc.css('.e_provider_url').text
    @provider_name = ""
    @provider_name <<  doc.css('#provider_name').text
    @e_provider_name = ""
    @e_provider_name << doc.css('.e_provider_name').text
    @type = ""
    @type << doc.css('#type').text
    @e_type = ""
    @e_type << doc.css('.e_type').text
    @title = ""
    @title << doc.css('#title').text
    @e_title = ""
    @e_title << doc.css('.e_title').text
    @description = ""
    @description << doc.css('#description').text
    @e_description = ""
    @e_description = doc.css('.e_description').text
    @url = ""
    @url = doc.css('#url').text
    @e_url = ""
    @e_url = doc.css('.e_url').text
    @width = ""
    @width = doc.css('#width').text
    @e_width = ""
    @e_width = doc.css('.e_width').text
    @height = ""
    @height = doc.css('#height').text
    @e_height = ""
    @e_height = doc.css('.e_height').text
    @html = ""
    @html = doc.css('#html').text
    @e_html = ""
    @e_html = doc.css('.e_html').text
    @thumbnail = ""
    @thumbnail = doc.css('#thumbnail').text
    @e_thumbnail = ""
    @e_thumbnail = doc.css('#embedcontent img').text
    @thumbnail_url = ""
    @thumbnail_url = doc.css('#thumbnail_url').text
    @e_thumbnail_url = ""
    @e_thumbnail_url = doc.css('.e_thumbnail_url').text
    @thumbnail_width = ""
    @thumbnail_width = doc.css('#thumbnail_width').text
    @e_thumbnail_width = ""
    @e_thumbnail_width = doc.css('.e_thumbnail_width').text
    @thumbnail_height = ""
    @thumbnail_height = doc.css('#thumbnail_height').text
    @e_thumbnail_height = ""
    @e_thumbnail_height = doc.css('.e_thumbnail_height').text
    @author = ""
    @author = doc.css('#author').text
    @e_author = ""
    @e_author = doc.css('.e_author').text
    @author_url = ""
    @author_url = doc.css('#author_url').text
    @e_author_url = ""
    @e_author_url = doc.css('.e_author_url').text
    @display = ""
    @display = doc.css('#display').text
    @e_display = ""
    @e_display = doc.css('.e_display').text

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @scrapping }
    end
  end

  # GET /scrappings/new
  # GET /scrappings/new.json
  def new
    @scrapping = Scrapping.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @scrapping }
    end
  end

  # GET /scrappings/1/edit
  def edit
    @scrapping = Scrapping.find(params[:id])
  end

  # POST /scrappings
  # POST /scrappings.json
  def create
    @scrapping = Scrapping.new(params[:scrapping])
    

    respond_to do |format|
      if @scrapping.save
        format.html { redirect_to @scrapping, notice: 'Scrapping was successfully created.' }
        format.json { render json: @scrapping, status: :created, location: @scrapping }
      else
        format.html { render action: "new" }
        format.json { render json: @scrapping.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /scrappings/1
  # PUT /scrappings/1.json
  def update
    @scrapping = Scrapping.find(params[:id])

    respond_to do |format|
      if @scrapping.update_attributes(params[:scrapping])
        format.html { redirect_to @scrapping, notice: 'Scrapping was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @scrapping.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /scrappings/1
  # DELETE /scrappings/1.json
  def destroy
    @scrapping = Scrapping.find(params[:id])
    @scrapping.destroy

    respond_to do |format|
      format.html { redirect_to scrappings_url }
      format.json { head :no_content }
    end
  end
  
  def fly
      @scrapping = Scrapping.find(params[:id])
      @scrapping.url = params[:scrapping][:url]
      @scrapping.save
      logger.debug "url es:  #{params[:scrapping][:url]}"
      url = "http://embed.ly/docs/explore/oembed?url=#{@scrapping.url}"
       require 'net/http'
       require 'rubygems'
       require 'nokogiri'
       require 'open-uri'
      logger.debug "url es:  #{url}"
      doc = Nokogiri::HTML(open(url))
      logger.debug "#{doc}\n\n\n\n\n\n"
      @provider_url = ""
      @provider_url <<  doc.css('#provider_url').text
      @e_provider_url = ""
      @e_provider_url <<  doc.css('.e_provider_url').text
      @provider_name = ""
      @provider_name <<  doc.css('#provider_name').text
      @e_provider_name = ""
      @e_provider_name << doc.css('.e_provider_name').text
      @type = ""
      @type << doc.css('#type').text
      @e_type = ""
      @e_type << doc.css('.e_type').text
      @title = ""
      @title << doc.css('#title').text
      @e_title = ""
      @e_title << doc.css('.e_title').text
      @description = ""
      @description << doc.css('#description').text
      @e_description = ""
      @e_description = doc.css('.e_description').text
      @url = ""
      @url = doc.css('#url').text
      @e_url = ""
      @e_url = doc.css('.e_url').text
      @width = ""
      @width = doc.css('#width').text
      @e_width = ""
      @e_width = doc.css('.e_width').text
      @height = ""
      @height = doc.css('#height').text
      @e_height = ""
      @e_height = doc.css('.e_height').text
      @html = ""
      @html = doc.css('#html').text
      @e_html = ""
      @e_html = doc.css('.e_html').text
      @thumbnail = ""
      @thumbnail = doc.css('#thumbnail').text
      @e_thumbnail = ""
      @e_thumbnail = doc.css('#embedcontent img').text
      @thumbnail_url = ""
      @thumbnail_url = doc.css('#thumbnail_url').text
      @e_thumbnail_url = ""
      @e_thumbnail_url = doc.css('.e_thumbnail_url').text
      @thumbnail_width = ""
      @thumbnail_width = doc.css('#thumbnail_width').text
      @e_thumbnail_width = ""
      @e_thumbnail_width = doc.css('.e_thumbnail_width').text
      @thumbnail_height = ""
      @thumbnail_height = doc.css('#thumbnail_height').text
      @e_thumbnail_height = ""
      @e_thumbnail_height = doc.css('.e_thumbnail_height').text
      @author = ""
      @author = doc.css('#author').text
      @e_author = ""
      @e_author = doc.css('.e_author').text
      @author_url = ""
      @author_url = doc.css('#author_url').text
      @e_author_url = ""
      @e_author_url = doc.css('.e_author_url').text
      @display = ""
      @display = doc.css('#display').text
      @e_display = ""
      @e_display = doc.css('.e_display').text
  end
  
end
