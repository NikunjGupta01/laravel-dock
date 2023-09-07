# Docker Laravel 

This is template for setting up docker with laravel.

## Installation

1.Clone this git

2.To Build And Start the Container Run


```bash
docker-composer up -d --build
```
(Here the -d flag will run the container in background and --build will build the container)

#### After Doing it one Time You May Run The Container Just By

```bash
docker-composer up -d 
```
### Now to run any commands you may run it in two ways

```bash
docker-composer exec php --followed-by-the-command
```
#### or (get into container bash by runnng)
```bash
docker-composer exec php bash
```
## Then you may run the commands normally
