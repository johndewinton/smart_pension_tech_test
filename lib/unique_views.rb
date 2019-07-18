# frozen_string_literal: true

require 'pry'
require_relative 'parse'

class UniqueViews
  attr_reader :unique_file_path_array

  def initialize
    @unique_file_path_array = []
  end

  def identify_unique_views_parsed_file
    parsed_file.select { |v| parsed_file.count(v) > 1 }.uniq
  end

  def iterate_unique_views
    identify_unique_views_parsed_file.each do |u|
      unique_file_path_array << u[0]
    end
    unique_file_path_array
  end

  def total_unique_views_per_file_path
    iterate_unique_views.group_by { |x| x }.map { |k, v| [k, v.count] }
  end

  def sorted_array_unique_views
    total_unique_views_per_file_path.sort { |a, b| b[1] <=> a[1] }
  end

  def sorted_pages_unique_views
    sorted_array_unique_views.map { |x| x.join(' ') }.join(' unique visits ')
  end
end
