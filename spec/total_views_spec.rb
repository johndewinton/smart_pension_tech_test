# frozen_string_literal: true

require './lib/parse'

describe 'TotalViews' do
  context 'when sorting logfile based on total views' do
    it 'returns an array of file paths' do
      work_file = './lib/webserver.log'
      parser = Parse.new(filename: work_file)
      expect(parser.iterate_over_file_paths).to include("/help_page/1","/contact","/home")
    end
    it 'returns the total views per file path' do
      work_file = './lib/webserver.log'
      parser = Parse.new(filename: work_file)
      expect(parser.total_views_per_file_path).to eq([["/help_page/1", 80], ["/contact", 89], ["/home", 78], ["/about/2", 90], ["/index", 82], ["/about", 81]])
    end
    it 'returns the sorted result in array form' do
      work_file = './lib/webserver.log'
      parser = Parse.new(filename: work_file)
      expect(parser.sorted_array).to eq([["/about/2", 90], ["/contact", 89], ["/index", 82], ["/about", 81], ["/help_page/1", 80], ["/home", 78]])
    end
    it 'returns the sorted result in a string' do
      work_file = './lib/webserver.log'
      parser = Parse.new(filename: work_file)
      expect(parser.sorted_pages).to eq("/about/2 90 visits /contact 89 visits /index 82 visits /about 81 visits /help_page/1 80 visits /home 78")
    end
  end
end
