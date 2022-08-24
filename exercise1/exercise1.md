# Exercise 1
## Setting up ubuntu20.04
To set up ubuntu20.04: 
1. Install virtualbox
1. Install vagrant
1. Create a vagrant folder
1. Initialise vagrant using `vagrant init ubuntu/focal64`
1. Start the virtual machine using `vagrant up `
1. Connect to the virtual machine using `vagrant ssh`

To change the network settings in the Vagrantfile:
1. Edit the Vagrantfile using Vim or Nano editor and set the `private_network` type to `"dhcp"`
1. Install `net-tools` using `sudo apt install net-tools`
1. SSH into your VM and run `ifconfig`. The output looks like the photo attached
![exercise1 screenshot](exercise1/exercise1.PNG)

