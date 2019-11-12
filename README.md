# pyenv && venv

Pyenv for managing python versions on your OS and venv for manageing virtual environments for your projects to avoid dependency conflicts

Assuming Pyenv is installed on your system, before a virtual environment is created for a project Python is pointing at the Pyenv shims 

```shell script
chris@BTH-02787:~/dev/src/github/python-project-essentials$ which python
/home/chris/.pyenv/shims/python

chris@BTH-02787:~/dev/src/github/python-project-essentials$ which pip
/home/chris/.pyenv/shims/pip
```

## Python Virtual Environments

### Create the virtual environment

At the root of your projects directory structure you created a virtual environment using ```ptyhon venv```.  This will use the Python enviornment
currently in use by Pyenv

```shell script
python -m venv .venv
```

### Activate the new virtual environment

```shell script
source .venv/bin/activate
```

Now the virtual environment has ben created and activated python is now using the venv we just created

```shell script
(.venv) chris@BTH-02787:~/dev/src/github/python-project-essentials$ which python
/home/chris/dev/src/github/python-project-essentials/.venv/bin/python

(.venv) chris@BTH-02787:~/dev/src/github/python-project-essentials$ which pip
/home/chris/dev/src/github/python-project-essentials/.venv/bin/pip
```

### Deactivating a virtual environment

```shell script
(.venv) chris@BTH-02787:~/dev/src/github/python-project-essentials$ which deactivate
/home/chris/.pyenv/plugins/pyenv-virtualenv/shims/deactivate
```

```shell script
deactivate
```

```shell script
chris@BTH-02787:~/dev/src/github/python-project-essentials$ which python
/home/chris/.pyenv/shims/python

chris@BTH-02787:~/dev/src/github/python-project-essentials$ which pip
/home/chris/.pyenv/shims/pip

```

Equally running ```pyenv deactivate``` does the same thing

# Python Package Management

This article was super useful.  https://hynek.me/articles/python-app-deps-2018/

## pip

Installing packages using pip

```shell script
python -m pip install Django
```

To create a requirements.txt file of the currently install dependencies use ```pip freeze```

```shell script
python -m pip freeze > requirements.txt
```

For somebody wanting to checkout the project and install it dependencies they would use ```pip install -r <requriements file>```

```shell script
(.venv) chris@BTH-02787:~/dev/src/github/python-project-essentials$ pip install -r requirements.txt
Collecting Django==2.2.7 (from -r requirements.txt (line 1))
  Using cached https://files.pythonhosted.org/packages/a0/36/463632a2e9161a7e713488d719a280e8cb0c7e3a66ed32a32e801891caae/Django-2.2.7-py3-none-any.whl
Collecting pytz==2019.3 (from -r requirements.txt (line 2))
  Using cached https://files.pythonhosted.org/packages/e7/f9/f0b53f88060247251bf481fa6ea62cd0d25bf1b11a87888e53ce5b7c8ad2/pytz-2019.3-py2.py3-none-any.whl
Collecting sqlparse==0.3.0 (from -r requirements.txt (line 3))
  Using cached https://files.pythonhosted.org/packages/ef/53/900f7d2a54557c6a37886585a91336520e5539e3ae2423ff1102daf4f3a7/sqlparse-0.3.0-py2.py3-none-any.whl
Installing collected packages: sqlparse, pytz, Django
Successfully installed Django-2.2.7 pytz-2019.3 sqlparse-0.3.0
```

## pip-tools



## Pipenv




# Project Structure


# Reference

https://www.freecodecamp.org/news/manage-multiple-python-versions-and-virtual-environments-venv-pyenv-pyvenv-a29fb00c296f/