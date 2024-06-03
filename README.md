# Week 8 IP Orchestration Using Kubernetes
Requirements:
- Use of Docker files and images from Docker Hub (https://hub.docker.com/u/marynjuguna1)
- Implement orchestration and host the project on Google Kubernetes Engine (GKE)


## Objectives
 - Choice of the Kubernetes objects used for deployment
  . Pod - This is the basic unit representing a co-located group of containers of which they share storage and network.
          This was created via deployment.

  . Deployments - They mange replicasets to ensure a desired number of pod replicas are running for the application.
                 
   
   . Services -  They expose application runningpods through a network which allows external access

   . Namespaces - Isolate resources within a cluster by creating virtual clusters.

 - Method used to expose pods to internet traffic

 - Use-of or there-lack-of of persistent storage

 - Git workflow used to achieve the task

 commit 828d1c65bddd1e200510ea924012510d27ff3906 (HEAD -> master, origin/master, origin/HEAD)
Author: Mary-softeng <marysofteng@gmail.com>
Date:   Fri May 31 10:13:40 2024 +0300

    added mongo_service object and also modified some of the other objects

commit e853c670a900a59bf3dd511a782b4fd3fdbb8931
Author: Mary-softeng <marysofteng@gmail.com>
Date:   Fri May 31 08:43:50 2024 +0300

    Created a k8s folder which contains kubernetes objects such as deployments, services,namespaces and network

commit a2d5defe7ef2e03a458ff09c853ad8079f3694f8
:...skipping...
commit 828d1c65bddd1e200510ea924012510d27ff3906 (HEAD -> master, origin/master, origin/HEAD)
Author: Mary-softeng <marysofteng@gmail.com>
Date:   Fri May 31 10:13:40 2024 +0300

    added mongo_service object and also modified some of the other objects

commit e853c670a900a59bf3dd511a782b4fd3fdbb8931
Author: Mary-softeng <marysofteng@gmail.com>
Date:   Fri May 31 08:43:50 2024 +0300

    Created a k8s folder which contains kubernetes objects such as deployments, services,namespaces and network

commit a2d5defe7ef2e03a458ff09c853ad8079f3694f8
Author: Mary-softeng <marysofteng@gmail.com>
Date:   Fri May 31 08:14:59 2024 +0300

    Describing the the kubernetes objects i used for deployment

commit 801f209682d69901e7beb0ee6432b8d21fb08035
Author: Mary-softeng <marysofteng@gmail.com>
Date:   Wed May 29 08:27:16 2024 +0300

    Added Requirements and Objectives of the project to the README.md file

commit 828d1c65bddd1e200510ea924012510d27ff3906 (HEAD -> master, origin/master, origin/HEAD)
Author: Mary-softeng <marysofteng@gmail.com>
Date:   Fri May 31 10:13:40 2024 +0300

    added mongo_service object and also modified some of the other objects

commit e853c670a900a59bf3dd511a782b4fd3fdbb8931
Author: Mary-softeng <marysofteng@gmail.com>
Date:   Fri May 31 08:43:50 2024 +0300

    Created a k8s folder which contains kubernetes objects such as deployments, services,namespaces and network

commit a2d5defe7ef2e03a458ff09c853ad8079f3694f8
Author: Mary-softeng <marysofteng@gmail.com>
Date:   Fri May 31 08:14:59 2024 +0300

    Describing the the kubernetes objects i used for deployment

commit 801f209682d69901e7beb0ee6432b8d21fb08035
Author: Mary-softeng <marysofteng@gmail.com>
Date:   Wed May 29 08:27:16 2024 +0300

    Added Requirements and Objectives of the project to the README.md file



commit d45722e06a1b7383285d224d879138c297aa68fa
Author: Mary-softeng <marysofteng@gmail.com>
:...skipping...
commit 828d1c65bddd1e200510ea924012510d27ff3906 (HEAD -> master, origin/master, origin/HEAD)
Author: Mary-softeng <marysofteng@gmail.com>
Date:   Fri May 31 10:13:40 2024 +0300

    added mongo_service object and also modified some of the other objects

commit e853c670a900a59bf3dd511a782b4fd3fdbb8931
Author: Mary-softeng <marysofteng@gmail.com>
Date:   Fri May 31 08:43:50 2024 +0300

    Created a k8s folder which contains kubernetes objects such as deployments, services,namespaces and network

commit a2d5defe7ef2e03a458ff09c853ad8079f3694f8
Author: Mary-softeng <marysofteng@gmail.com>
Date:   Fri May 31 08:14:59 2024 +0300

    Describing the the kubernetes objects i used for deployment

commit 801f209682d69901e7beb0ee6432b8d21fb08035
Author: Mary-softeng <marysofteng@gmail.com>
Date:   Wed May 29 08:27:16 2024 +0300

    Added Requirements and Objectives of the project to the README.md file

commit 9b252ca3669755b485ff8df585930dddbeb56d60
Author: Mary-softeng <marysofteng@gmail.com>
Date:   Sun May 19 19:56:03 2024 +0300

    Updated explanation.md file

commit 6c2dafba6004a79ba642cc0acd8b8a7fb640a10f
Author: Mary-softeng <marysofteng@gmail.com>
Date:   Sun May 19 19:36:58 2024 +0300

    Created README.md in the roles directory

commit d45722e06a1b7383285d224d879138c297aa68fa
Author: Mary-softeng <marysofteng@gmail.com>
Date:   Sun May 19 18:43:46 2024 +0300

:...skipping...
commit 828d1c65bddd1e200510ea924012510d27ff3906 (HEAD -> master, origin/master, origin/HEAD)
Author: Mary-softeng <marysofteng@gmail.com>
Date:   Fri May 31 10:13:40 2024 +0300

    added mongo_service object and also modified some of the other objects

commit e853c670a900a59bf3dd511a782b4fd3fdbb8931
Author: Mary-softeng <marysofteng@gmail.com>
Date:   Fri May 31 08:43:50 2024 +0300

    Created a k8s folder which contains kubernetes objects such as deployments, services,namespaces and network

commit a2d5defe7ef2e03a458ff09c853ad8079f3694f8
Author: Mary-softeng <marysofteng@gmail.com>
Date:   Fri May 31 08:14:59 2024 +0300

    Describing the the kubernetes objects i used for deployment

commit 801f209682d69901e7beb0ee6432b8d21fb08035
Author: Mary-softeng <marysofteng@gmail.com>
Date:   Wed May 29 08:27:16 2024 +0300

    Added Requirements and Objectives of the project to the README.md file

commit 9b252ca3669755b485ff8df585930dddbeb56d60
Author: Mary-softeng <marysofteng@gmail.com>
Date:   Sun May 19 19:56:03 2024 +0300

    Updated explanation.md file

commit 6c2dafba6004a79ba642cc0acd8b8a7fb640a10f
Author: Mary-softeng <marysofteng@gmail.com>
Date:   Sun May 19 19:36:58 2024 +0300

    Created README.md in the roles directory

commit d45722e06a1b7383285d224d879138c297aa68fa
Author: Mary-softeng <marysofteng@gmail.com>
Date:   Sun May 19 18:43:46 2024 +0300

    Added another task to the roles to install and ensure  that mongo db is running
:...skipping...
commit 828d1c65bddd1e200510ea924012510d27ff3906 (HEAD -> master, origin/master, origin/HEAD)
Author: Mary-softeng <marysofteng@gmail.com>
Date:   Fri May 31 10:13:40 2024 +0300

    added mongo_service object and also modified some of the other objects

commit e853c670a900a59bf3dd511a782b4fd3fdbb8931
Author: Mary-softeng <marysofteng@gmail.com>
Date:   Fri May 31 08:43:50 2024 +0300

    Created a k8s folder which contains kubernetes objects such as deployments, services,namespaces and network

commit a2d5defe7ef2e03a458ff09c853ad8079f3694f8
Author: Mary-softeng <marysofteng@gmail.com>
Date:   Fri May 31 08:14:59 2024 +0300

    Describing the the kubernetes objects i used for deployment

commit 801f209682d69901e7beb0ee6432b8d21fb08035
Author: Mary-softeng <marysofteng@gmail.com>
Date:   Wed May 29 08:27:16 2024 +0300

    Added Requirements and Objectives of the project to the README.md file
 
 
 - Succesful running the applications

 I was unable to successfully deploy the application on Google Kubernetes Engine due do insufficient CPU space.
 
 !["InsufficientCpuSpace"](Images/2insufficientcpu.png) 

 - Docker images

 I used these docker images:
  
   marynjuguna1/yolo_backend:v1.1

   marynjuguna1/yolo_client:v1.1

   mongo
