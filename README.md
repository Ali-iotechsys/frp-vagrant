# frp-vagrant
This vagrant file creates two VMs to demo [frp](https://github.com/fatedier/frp).
In this demo we want to ssh a private server (B) using a public server (A).
To do this, please follow:

- from your machine run: `$ vagrant up`
- open two terminals one for A and another one for B.
- in the 1st terminal run: `$ vagrant ssh SeverA`
- `ServerA$ ./frps -c ./frps.ini`
- in the 2nd terminal run: `$ vagrant ssh SeverB`
- `ServerB$ ./frpc -c ./frpc.ini`
- open a new terminal and run: `$ ssh -oPort=6000 vagrant@192.168.33.11`, vagrant/vagarnt is username/password and 192.168.33.11 is the public address of A.
- you should notice that you accessed ServerB from ServerA, ro double check run: `ServerB$ hostname`

