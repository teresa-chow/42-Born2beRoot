# Born2beRoot
![42 School: Rank 1](https://img.shields.io/badge/42%20School-Rank%201-%2315bbbb)

_Born2beRoot is a System Administration exercise from 42 School core curriculum. The task at hand is to create a machine using VirtualBox, complying with strict rules._
___

<details>
  <summary><h2>1. Virtual Machine: creation</h2></summary>

> _A Virtual Machine (VM) is a computer file, commonly referred to as an image, that behaves like an actual computer: that is, a virtual computer within a computer._

___

### :warning: Pre-requisites

- have [VirtualBox](https://www.virtualbox.org/) installed;
- have [the installer file for the Debian GNU/Linux OS](https://cdimage.debian.org/debian-cd/current/amd64/iso-cd/) downloaded.

___

### Steps

1. Open `VirtualBox`
2. Click `New`
3. Name the VM
4. Choose destination folder for the VM
    - `/sgoinfre/` in this case
5. Select the amount of memory (RAM) to be allocated to the VM
    - set as default – the recommended memory size is `1024 MB`
6. Create a virtual hard disk
7. Choose `VDI` (VirtualBox Disk Image) as the type of file to use for the new virtual hard disk
8. Choose storage on physical hard disk as being `dynamically allocated`
9. Select the size of the virtual hard disk
    - `30GB` in this case, to account for bonus requirements
10. Click `Create`
11. Head to `Settings` > `Storage` > `Empty` > 💿 icon (_Attributes: Optical Drive_) > `Choose a disk file` > `Debian ISO` > `Open` > `Ok`
12. `Start` the VM

___

</br>

</details>


<details>
  <summary><h2>2. Operating System (OS), Debian: installation</h2></summary>

</br>

<details>
  <summary>:bulb: <strong>Debian vs. Rocky Linux</strong></summary>

</br>

<table>
  <tr>
    <th></th>
    <th>Debian</th>
    <th>Rocky Linux</th>
  </tr>
  <tr>
    <td><strong>Developer</strong></td>
    <td>The Debian Project</td>
    <td>Rocky Enterprise Software Foundation</td>
  </tr>
  <tr>
    <td><strong>OS Family</strong></td>
    <td>Linux (Unix-like)</td>
    <td>Linux (Unix-like)</td>
  </tr>
  <tr>
    <td><strong>Source model</strong></td>
    <td>Open source</td>
    <td>Open source</td>
  </tr>
  <tr>
    <td><strong>Repository</strong></td>
    <td><a href = "https://deb.debian.org">deb.debian.org</a></td>
    <td><a href = "https://git.rockylinux.org">git.rockylinux.org</a></td>
  </tr>
  <tr>
    <td><strong>Package manager</strong></td>
    <td>Avanced Package Tool (APT)</td>
    <td>Dandified YUM / DNF</td>
  </tr>
  <tr>
    <td><strong>Long Term Support (LTS)</strong></td>
    <td>5 years</td>
    <td>10 years</td>
  </tr>
  <tr>
    <td><strong>Comments</strong></td>
    <td></td>
    <td>Red Hat Enterprise Linux (RHEL) compatibility</td>
  </tr>
</table>

</br>

</details>

### Steps

1. Select `Install` from the Debian GNU/Linux installer menu;
2. Settings
    - Language: `English`
    - Location: `other`
    - Continent: `Europe`
    - Country: `Portugal`
    - Locale: `United States`
    - Keyboard: `American English`
    - Hostname: `tchow-so42` ﹡
    - Domain name: `(blank)`
    - Set up root password ﹡
    - User full name: `tchow-so` ﹡
    - Username: `tchow-so` ﹡
    - Set up user password ﹡
    - Clock: `Lisbon`

﹡ :warning: _see subject requirements_
___

</br>

</details>

<details open>
  <summary><h2>3. VM: setup</h2></summary>

### 3.1. Partitioning the Disk
#### 3.1.1. Create Primary Partition
#### 3.1.2. Create Logical Partition
#### 3.1.3. Encrypt Volumes
#### 3.1.4. Configure Logical Volume Manager
#### 3.1.5. Create Logical Partitions
#### 3.1.6. Setting Mount Points

___

### 3.2. Login into the System
### 3.3. Sudo: installation
### 3.4. Configure Groups and Users
### 3.5. Vim: installation
### 3.7. Uncomplicated Firewall (UFW): installation & configuration
### 3.8. SSH: connection

___

</br>

</details>




</br>

___

</br>

## 4. 

</br>

___

</br>

## References

[debian website](https://www.debian.org/) accessed 23 Jan. 2024

[Rocky Linux website](https://rockylinux.org/) accessed 23 Jan. 2024

[@PedroZappa](https://github.com/PedroZappa)'s [Born2beRoot](https://github.com/PedroZappa/Born2beRoot) accessed 23 Jan. 2024

[@mota494](https://github.com/mota494)'s [Born2beRoot](https://github.com/mota494/42_Born2BeRoot) accessed 23 Jan. 2024

</br>

___

</br>

### License
This work is published under the terms of [42 Unlicense](./LICENSE).

</br>

[⬆ back to top](#born2beroot)
