require 'rubygems'
require 'terminal-notifier'
require 'octokit'

client = Octokit::Client.new :netrc => true
client.notifications.each do |n|
   p n.inspect
   TerminalNotifier.notify(n.subject.title, :title => 'New github notifications', :subtitle => n.repository.name, :open => 'http://github.com')
end

#:sender => 'com.github.GitHubw