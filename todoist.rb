#!/usr/bin/ruby1.8
require 'rubygems'
require 'json'
require 'net/http'

class Todoist
  def initialize(token)
    @token = token
  end

  def projects
    get_action('getProjects')
  end 
  def labels
    get_action('getLabels')
  end 

  private
  def get_action(action)
    JSON.parse(Net::HTTP.get(base_uri(action)))
  end

  def base_uri(action, params = nil)
    URI.parse("http://todoist.com/API/#{action}?token=#{@token}")
  end
end
