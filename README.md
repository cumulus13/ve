

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
  this will create new virtual environment in 'c:\VENV' to be 'c:\VENV\test-env' then activate immediately 
  
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

[![Buy Me a Coffee](https://www.buymeacoffee.com/assets/img/custom_images/orange_img.png)](https://www.buymeacoffee.com/cumulus13)

[![Donate via Ko-fi](https://ko-fi.com/img/githubbutton_sm.svg)](https://ko-fi.com/cumulus13)
 [Support me on Patreon](https://www.patreon.com/cumulus13)