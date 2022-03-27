Install `docker`.

Clone repo:
```
git clone https://github.com/YuTian8328/IEEE_seasonal_school
```

Got to the project folder:
```
cd IEEE_seasonal_school
```

Put all your `.ipynb` file(s) into the folder.
Once new files have been added, sometimes you may need to run `sudo chmod 777 *.ipynb`.

Build the Docker image once. (NB: there is an ending `.`):
```
docker build -t fl_ex .
```

Run Docker container:
```
docker run -e GRANT_SUDO=yes --user root -p 8888:8888 -v $(pwd):/home/jovyan fl_ex
```
you will find the link with `token` in Terminal,

Copy the link and open it in your browser: `http://127.0.0.1:8888/lab?token=<YOUR_TOKEN>`

`Ctrl+C` to exit.

NOTE: Please DO NOT open two jupyter servers in your browser at the same time.

Everytime you rerun `docker run`, a new container is created.
You could remove all exited containers:
```
docker rm $(docker ps -a -f status=exited -q)
```

When you finish this project, if you want to remove all images:
```
docker rmi $(docker images -a -q)
```
