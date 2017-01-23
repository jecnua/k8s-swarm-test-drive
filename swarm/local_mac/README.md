# Once you create the local swarm

    docker service create --replicas 1 --name helloworld alpine ping docker.com
    docker service ls
    docker service inspect --pretty helloworld
