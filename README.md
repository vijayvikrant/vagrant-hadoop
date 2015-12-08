vagrant-hadoop
==========================================================

Introduction
============

Vagrant project to spin up a cluster of 5 virtual machines with Hadoop v2.6.0

1.	node1 : HDFS NameNode
2.	node2 : HDFS Data Node + YARN ResourceManager + JobHistoryServer + ProxyServer + Spark slave
3.	node3 : HDFS DataNode + YARN NodeManager
4.	node4 : HDFS DataNode + YARN NodeManager
5.	node5 : HDFS DataNode + YARN NodeManager

Getting Started
===============

1.	[Download and install VirtualBox](https://www.virtualbox.org/wiki/Downloads)
2.	[Download and install Vagrant](http://www.vagrantup.com/downloads.html).
3.	Git clone this project, and change directory (cd) into this project (directory).
4.	Run `vagrant up` to create the VM.
5.	Run `vagrant ssh` to get into your VM.
6.	Run `vagrant destroy` when you want to destroy and get rid of the VM.

### Test YARN

Run the following command to make sure you can run a MapReduce job.

```
yarn jar /usr/local/hadoop/share/hadoop/mapreduce/hadoop-mapreduce-examples-2.6.0.jar pi 2 100
```

Web UI
======

You can check the following URLs to monitor the Hadoop daemons.

1.	[NameNode](http://10.211.55.101:50070/dfshealth.html)
2.	[ResourceManager](http://10.211.55.102:8088/cluster)
3.	[JobHistory](http://10.211.55.102:19888/jobhistory)

References
==========

This project was kludge together with great pointers from all around the internet. All references made inside the files themselves. Special thanks to [vangj](https://github.com/vangj/vagrant-hadoop-2.4.1-spark-1.0.1) from where I cloned this project for further development.

Copyright Stuff
===============

Licensed under the Apache License, Version 2.0 (the "License"); you may not use this file except in compliance with the License. You may obtain a copy of the License at

```
http://www.apache.org/licenses/LICENSE-2.0
```

Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License.
