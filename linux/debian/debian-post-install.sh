# Choose the fastest debian repository
# https://askubuntu.com/questions/39922/how-do-you-select-the-fastest-mirror-from-the-command-line
sudo aptitude -y install netselect-apt
sudo netselect-apt -o /etc/apt/sources.list
sudo aptitude update

# Install source control tools
sudo aptitude -y install git mercurial subversion

# Development essentials
sudo aptitude -y install build-essential

# Install Screen Multiplexers
sudo aptitude -y install screen tmux

# Must have tools
sudo aptitude -y install vim
