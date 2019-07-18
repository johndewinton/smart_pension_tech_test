# frozen_string_literal: true

require 'pry'
require_relative 'parse'

class TotalViews
  def sorted_pages
    binding.pry
    sorted_array.map { |x| x.join(' ') }.join(' visits ')
  end

  def sorted_array
    total_views_per_file_path.sort { |a, b| b[1] <=> a[1] }
  end

  def total_views_per_file_path
    iterate_over_file_paths.group_by { |x| x }.map { |k, v| [k, v.count] }
  end

  def iterate_over_file_paths
    parsed_file.each do |hit|
      file_path_array << hit[0]
    end
    file_path_array
  end
end
