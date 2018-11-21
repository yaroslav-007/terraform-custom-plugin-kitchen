# Running custom terraform plugin
Compile custom terraform plugin that shows your external IP
 
## pre-requirements

- Install **Vagrant**
    - Download and install accordingly to your OS as described here : https://www.vagrantup.com/downloads.html
	
## How to run the code
1. Open Command Line Interpreter: 

 OS system | Operation
 ------------ | -------------
| Windows | Start menu -> Run and type cmd |
| Linux  |Start terminal |
| macOS | Press Command - spacebar to launch Spotlight and type "Terminal," then double-click the search result. |

2. Run the following commands:
```
    git clone https://github.com/yaroslav-007/terraform-custom-plugin2.git
    cd terraform-custom-plugin2.git
    vagrant up
    vagrant ssh 
    go get github.com/petems/terraform-provider-extip
    cd ~/go/src/github.com/petems/terraform-provider-extip
    make build
    ls -al ~/go/bin/
    mkdir -p /vagrant/terraform.d/plugins/linux_amd64
    cp ~/go/bin/terraform-provider-extip /vagrant/terraform.d/plugins/linux_amd64/
    cd /vagrant
    bundle install
    bundle converge
    bundle exec kitchen verify
```
