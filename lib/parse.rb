# frozen_string_literal: true

# :nodoc:
class Parse
  attr_reader :data, :data_collection, :file_path_array

  def initialize(filename = 'webserver.log')
    @data = File.read(filename)
    @data_collection = []
    @file_path_array = []
  end

  def to_array_of_arrays
    @data.each_line do |line|
      @data_collection << line.split(' ')
    end
    @data_collection
  end

  def iterate_over_file_paths
    @data_collection.each do |hit|
      @file_path_array << hit[0]
    end
    @file_path_array
  end
end
