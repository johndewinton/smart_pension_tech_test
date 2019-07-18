# frozen_string_literal: true

require './lib/parse'

 describe 'Parse' do
   context '#create' do
    context 'when no path is supplied' do
     it 'should not run' do
       expect { Parse.new }.to raise_error(ArgumentError)
     end
   end
   context 'when a path is supplied' do
     it 'should run' do
       work_file = 'webserver.log'
       expect { Parse.new(filename: work_file) }.to_not raise_error(ArgumentError)
     end
   end
  end
 end
