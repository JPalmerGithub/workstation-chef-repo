homebrew_go = "#{Chef::Config[:file_cache_path]}/homebrew_go"

remote_file homebrew_go do
  source "https://raw.github.com/Homebrew/homebrew/go/install"
  mode 00755
end

execute homebrew_go do
  not_if { File.exist? '/usr/local/bin/brew' }
end

package 'git' do
  not_if "which git"
end

execute "update homebrew from github" do
  command "/usr/local/bin/brew update || true"
end

execute "update homebrew casks" do
	command "/usr/local/bin/brew cask update || true"
	only_if "/usr/local/bin/brew tap | egrep -q '^phinze/cask$'"
end
