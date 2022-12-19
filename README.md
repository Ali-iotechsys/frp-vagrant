# frp-vagrant
This vagrant file creates two VMs to demo [frp](https://github.com/fatedier/frp).
In this demo we want to ssh a private server (B) using a public server (A).
To do this, please follow:

- From your machine run: `$ vagrant up`
- Open two terminals one for A and another one for B.
- In the 1st terminal run: `$ vagrant ssh ServerA`
- and `vagrant@ServerA:~$ ./frp_0.46.0_linux_amd64/frps -c ./frp_0.46.0_linux_amd64/frps.ini`
- In the 2nd terminal run: `$ vagrant ssh ServerB`
- and `vagrant@ServerB:~$ ./frp_0.46.0_linux_amd64/frpc -c ./frp_0.46.0_linux_amd64/frpc.ini`
- Open a new terminal and run: `$ ssh -oPort=6000 vagrant@192.168.33.11`, `vagrant/vagarnt` is username/password and `192.168.33.11` is the public address of A.
- You should notice that you accessed ServerB from ServerA, to double check run: `vagrant@ServerB:~$ hostname`
- To stop the demo and remove the VMs, run: `$ vagrant destroy -f`

