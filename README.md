Install `docker`

`git clone ...`

`cd <Project_Directory>`

Once you get new `.ipynb` file(s) into the folder, run `sudo chmod 777 *.ipynb`.

```
docker build -t fl_ex .
```

```
docker run -e GRANT_SUDO=yes --user root -p 8888:8888 -v $(pwd):/home/jovyan fl_ex
```
you will find the link with `token` in Terminal.

In your browser open `localhost:8888/lab?token=XXXXXXXXXXXXXXXXX`
