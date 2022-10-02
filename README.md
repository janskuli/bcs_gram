# bcs_gram

Grammar fragment for Bosnian-Croatian-Serbian for HPSG.


## Prerequisites

In order to run the grammar the TRALE system needs to installed. The following installation guide is for the standalone version of TRALE.

## Installation

Download the standalone verions and extract it:
```console
wget https://hpsg.hu-berlin.de/Software/Trale/standalone-trale.tbz
tar -xvjf standalone-trale.tbz
```
The files in ``standalone-trale`` have to be made executable:

```console
chmod +x ~/standalone-trale/gralej/gralej
chmod +x ~/standalone-trale/trale
chmod +x  ~/standalone-trale/standalone-trale.Linux
chmod +x ~/standalone-trale/standalone-trale-tsdb.Linux
```

Finaly create symbolic links:

```console
sudo ln -s ~/standalone-trale/trale \bin\trale
sudo ln -s ~/standalone-trale/gralej/gralej grisu
```
