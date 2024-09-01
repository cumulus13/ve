

# ve

Python Virtual Environment Wrapper made simple (Windows Only)

## Installing

```bash
ve.bat install

```
this will create 'C:\VENV' directory

## Example

- create new virtual environment
```bash
ve test
```
  this will create new virtual environment in 'c:\VENV' to be 'c:\VENV\test-env'
- list virtual environment created
```bash
ve -l
```
or 
```bash
ve l
```
or
```bash
ve list
```
- remove virtual environment
```bash
ve remove test
```
or
```bash
ve uninstall test
```

- deactive virtual environment
```bash
ve deactivate
```
or just
```bash
deactivate
```

## Command line usage
```bash
usage: ve [remove/uninstall/deactivate/-l/l/list] [NAME]
```
## Support

- Windows (only), for Linux just googling

## Requirements

you must install `virtualenv` first (`pip install virtualenv`)

## Author
[Hadi Cahyadi](mailto:cumulus13@gmail.com)