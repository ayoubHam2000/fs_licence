
touch producer_cem
touch consumer_cem
touch shmfile

gcc -pthread semaphore.c memory.c producer.c -o producer
gcc -pthread semaphore.c memory.c consumer.c -o consumer