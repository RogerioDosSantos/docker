
# rogersantos/ubuntu-x86 image

- To execute this image please follow the steps below to create a helper script

```bash
docker run --rm rogersantos/ubuntu-x86 > rogersantos-ubuntu-x86
chmod +x ubuntu-x86
```

- Then you can use the script as following:

`ubuntu-x86 <command>` 

Examples: 
   `rogersantos-ubuntu-x86 pwd`
   `rogersantos-ubuntu-x86 ls`
   `rogersantos-ubuntu-x86 sh`

 **Note**: Your current folder will be automatically mapped the /work folder 
 on the container. The work folder is also the default folder.


