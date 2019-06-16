module Kite
  module Command
    class Root
      desc 'Handle Git-related operations'
      arg_name 'Git arguments here'
      command :git do |c|
        c.command :log do |log|
          log.desc 'Show commit logs'
          log.action do |global_options,options,args|
            system('git log')
          end
        end
      end
    end
  end
end
