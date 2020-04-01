require 'rubygems'
require 'httparty'

require_relative 'books'
require_relative 'movies'

class LordOfTheRings::CLI
  attr_accessor :books, :movies
  def call
    greeting
    menu
  end
  def greeting
    puts "Greetings, traveler! Let me tell you a bit about Lord of the Rings!"
  end

  def menu
    puts "Would you like to hear about the books, or the movies?"
    input = gets.chomp.downcase
    selection(input)
    menu
  end

  def selection(input)
    case input
    when 'books'
      titles
    when 'movies'
      movies
    when 'exit'
      exit
    else
      puts "I don't understand what you are saying please type books, movies, or exit!"
    end
  end
  def titles
    books = Books.new.get_titles
    puts books
  end

  def movies
    movies = Movies.new.get_movies
    puts movies
  end



end
