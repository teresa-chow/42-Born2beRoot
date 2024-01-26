# Born2beRoot
![42 School: Rank 1](https://img.shields.io/badge/42%20School-Rank%201-%2315bbbb)

_Born2beRoot is a System Administration exercise from 42 School core curriculum. The task at hand is to create a machine using VirtualBox, complying with strict rules._
___

<details>
  <summary><h2>1. Virtual Machine · creation</h2></summary>

> _A Virtual Machine (VM) is a computer file, commonly referred to as an image, that behaves like an actual computer: that is, a virtual computer within a computer._

</br>

<details>
  <summary>:bulb: <b>Advantages and disadvantages of using VMs</b></summary>

</br>

<table>
  <tr>
    <th>Advantages</th>
    <th>Disadvantages</th>
  </tr>
  <tr>
    <td>:heavy_check_mark: Agility and speed</td>
    <td>:x: Unintended server sprawl</td>
  </tr>
  <tr>
    <td>:heavy_check_mark: <b>Lowered downtime:</b> if backup and redundancy mechanisms are in place, since VMs are portable and easy to move from one hypervisor to another on a different machine</td>
    <td>:x: <b>Single point of failure:</b>  unless backup and redundancy mechanisms are in place, if the host computer fails, all VMs running on that machine will also fail</td>
  </tr>
  <tr>
    <td>:heavy_check_mark: Scalability</td>
    <td>:x: Hardware limitations</td>
  </tr>
  <tr>
    <td>:heavy_check_mark: <b>Security benefits:</b> ability to run apps of questionable security, study computer viruses, while protecting host OS</td>
    <td>:x: <b>Security risks:</b> if VMs are not properly isolated from each other or/and from the host machine, virtualization can introduce additional security risks</td>
  </tr>
    <tr>
    <td>:heavy_check_mark: <b>Cost savings:</b> reduced physical infrastructure footprint</td>
    <td>:x: <b>License cost:</b> some software licenses may not allow installation on VMs or require an additional license fee per VM</td>
  </tr>
</table>
</details>

</br>

### :warning: Pre-requisites

- have [VirtualBox](https://www.virtualbox.org/) installed;
- have [the ISO (Optical Disc Image) installer file for the Debian GNU/Linux OS](https://cdimage.debian.org/debian-cd/current/amd64/iso-cd/) downloaded.

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
    - `33079636992 B` – to account for subject bonus requirements
10. Click `Create`
11. Head to `Settings` > `Storage` > `Empty` > 💿 icon (_Attributes: Optical Drive_) > `Choose a disk file` > `Debian ISO` > `Open` > `Ok`
12. `Start` the VM

___

</br>

</details>


<details>
  <summary><h2>2. Operating System (Debian) · installation</h2></summary>

</br>

<details>
  <summary>:bulb: <b>Debian vs. Rocky Linux</b></summary>

</br>

<table>
  <tr>
    <th></th>
    <th>Debian</th>
    <th>Rocky Linux</th>
  </tr>
  <tr>
    <td><b>Developer</b></td>
    <td>The Debian Project</td>
    <td>Rocky Enterprise Software Foundation</td>
  </tr>
  <tr>
    <td><b>OS Family</b></td>
    <td>Linux (Unix-like)</td>
    <td>Linux (Unix-like)</td>
  </tr>
  <tr>
    <td><b>Source model</b></td>
    <td>Open source</td>
    <td>Open source</td>
  </tr>
  <tr>
    <td><b>Repository</b></td>
    <td><a href = "https://deb.debian.org">deb.debian.org</a></td>
    <td><a href = "https://git.rockylinux.org">git.rockylinux.org</a></td>
  </tr>
  <tr>
    <td><b>Package manager</b></td>
    <td>Advanced Package Tool (APT)</td>
    <td>Dandified YUM / DNF</td>
  </tr>
  <tr>
    <td><b>Release cycle</b></td>
    <td>2 years</td>
    <td>1 year</td>
  </tr>
  <tr>
    <td><b>Long Term Support (LTS)</b></td>
    <td>5 years</td>
    <td>10 years</td>
  </tr>
  <tr>
    <td><b>Comments</b></td>
    <td></td>
    <td>Red Hat Enterprise Linux (RHEL) compatibility</td>
  </tr>
</table>

</br>

<p><b>note:</b> <i>Here, the choice for Debian over Rocky Linux was based on the first being generally regarded as a more user-friendly and accessible OS, especially for beginners.</i></p>

</details>

</br>

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
  <summary><h2>3. VM · setup</h2></summary>

<details>
  <summary><h3>3.1. Partitioning the Disk</h3></summary>
    <ol>
      <li>Partioning method: <code>Manual</code></li>
      <li>Select the available volume</li>
      <li>Create new empty partition on the selected device: <code>Yes</code></li>
    </ol>
  
<details>
  <summary><h4>3.1.1. Create Primary Partition</h4></summary>
<blockquote><i>One has to create at least one primary partition on the disk.</i></blockquote>
    <ol>
      <li>Select a partition to modify its settings: <code>FREE SPACE</code></li>
      <li>How to use this free space: <code>Create a new partition</code></li>
      <li>Enter new partition size in Bytes: <code>525336576 B</code>﹡</li>
      <li>New partition type: <code>Primary</code></li>
      <li>Location for the new partition: <code>Beginning</code></li>
      <li>Mount point for this partition: <code>/boot</code></li>
      <li>Partition settings: <code>Done setting up the partition</code></li>
    </ol>

﹡ :warning: _see subject bonus requirements_
</details>
<details>
  <summary><h4>3.1.2. Create Logical Partition</h4></summary>
<blockquote><i>One can create an unlimited number of logical partitions on the disk.</i></blockquote>
    <ol>
      <li>Select a partition to modify its settings: <code>FREE SPACE</code></li>
      <li>How to use this free space: <code>Create a new partition</code></li>
      <li>Set new partition size to <code>max</code>, in Bytes: <code>32554300416 B</code>﹡</li>
      <li>New partition type: <code>Logical</code></li>
      <li>Mount point for this partition: <code>Do not mount it</code></li>
      <li>Partition settings: <code>Done setting up the partition</code></li>
    </ol>

﹡ :warning: _see subject bonus requirements_
</details>
</details>
<details>
  <summary><h3>3.2. Encrypt Volumes</h3></summary>
  <ol>
    <li><code>Configure encrypted volumes</code></li>
    <li>Write the changes to disk and configure encrypted volumes? <code>Yes</code></li>
    <li><code>Create encrypted volumes</code></li>
    <li>Select the devices to be encrypted:<code>/dev/sda5</code></li>
    <li>Partition settings: <code>Done setting up the partition</code></li>
    <li>Encryption configuration actions: <code>Finish</code></li>
    <li>(Confirmation message to encryption:) <code>Yes</code></li>
    <li>(Optional) <code>Cancel</code> – <i>since there is nothing to actually encrypt</i></li>
    <li>Set encryption passphrase ﹡</li>
  </ol>
  
﹡ :warning: _see subject bonus requirements_
</details>
<details>
  <summary><h3>3.3. Configure Logical Volume Manager (LVM)</h3></summary>
<p>Write the changes to disks and configure LVM? <code>Yes</code></p>

</br>

<div>
  <p><b>Create Volume Group</b></p>
<ol>
  <li><code>Create volume group</code></li>
  <li>Enter volume group name: <code>LVMGroup</code></li>
</ol>

</br>

  <p><b>Create Logical Partitions</b></p>
<ol>
  <li>LVM configuration action: <code>Create logical volume</code></li>
  <li>Select the volume group where the new logical volume should be created: <code>LVMGroup</code></li>
  <li>Enter logical volume name</li>
  <li>Enter the size of the new logical volume</li>
  <li>Repeat the steps above for each of the following volumes:</li>
</ol>

<table>
<tr>
  <th><b>Logical volume name</b></th>
  <th><b>Logical volume size</b></th>
</tr>
<tr>
  <td><code>root</code></td>
  <td>10737418240 B</td>
</tr>
<tr>
  <td><code>swap</code></td>
  <td>2465607424 B</td>
</tr>
<tr>
  <td><code>home</code></td>
  <td>5368709120 B</td>
</tr>
<tr>
  <td><code>var</code></td>
  <td>3221225472 B</td>
</tr>
<tr>
  <td><code>srv</code></td>
  <td>3221225472 B</td>
</tr>
<tr>
  <td><code>tmp</code></td>
  <td>3221225472 B</td>
</tr>
<tr>
  <td><code>var-log</code></td>
  <td>4294967296 B</td>
</tr>
</table>

<ol start="6">
  <li>LVM configuration action: <code>Finish</code></li>
</ol>

</br>

<div><p><b>Setting Mount Points</b></p></div>
<ol>
  <li>Select volume</li>
  <li>Set Use as</li>
  <li>Set mount point</li>
  <li><code>Done setting up the partition</code></li>
  <li>Repeat the steps above for each of the following volumes:</li>
</ol>
<table>
  <tr>
    <th><b>Partition</b></th>
    <th><b>Volume name</b></th>
    <th><b>Use</b></th>
    <th><b>Mount point</b></th>
    <th><b>Enter</b></th>
  </tr>
  <tr>
    <td>#1</td>
    <td><code>home</code></td>
    <td>Ext4</td>
    <td><code>/home</code></td>
    <td></td>
  </tr>
  <tr>
    <td>#1</td>
    <td><code>root</code></td>
    <td>Ext4</td>
    <td><code>/</code></td>
    <td></td>
  </tr>
  <tr>
    <td>#1</td>
    <td><code>srv</code></td>
    <td>Ext4</td>
    <td><code>/srv</code></td>
    <td></td>
  </tr>
  <tr>
    <td>#1</td>
    <td><code>swap</code></td>
    <td>swap area</td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td>#1</td>
    <td><code>tmp</code></td>
    <td>Ext4</td>
    <td><code>/tmp</code></td>
    <td></td>
  </tr>
  <tr>
    <td>#1</td>
    <td><code>var</code></td>
    <td>Ext4</td>
    <td><code>/var</code></td>
    <td></td>
  </tr>
  <tr>
    <td>#1</td>
    <td><code>var-log</code></td>
    <td>Ext4</td>
    <td><code>Enter manually</code></td>
    <td><code>/var/log</code></td>
  </tr>
</table>

<ol start="6">
 <li><code>Finish partitioning and write changes to disk</code></li>
</ol>

</br>

</details>

<--! TO DO: FRAME THE FOLLOWING STEPS
 Accept confirmation message;
 Say NO to additional packages;
 Select country;
 Set Debian archive mirror package manager: deb.debian.org;
 Leave HTTP proxy empty and click Continue;
 Say NO to the popularity contest;
 Remove all software options and press Continue;
 Say Yes to the installation of GRUB boot loader;
 Select device to install the bootloader: /dev/sda (ata_VBOX_HARDDISK);
 Select Continue;
-->

<details>
  <summary><h3>3.4. Login into the System</h3></summary>
  <ol>
    <li>Enter encryption password</li>
    <li>Enter user</li>
    <li>Enter user password</li>
  </ol>
</details>
<details>
  <summary><h3>3.5. sudo · installation & configuration</h3></summary>
  <blockquote><i>sudo allows a permitted user to execute a command as the superuser or another user, as specified by the security policy</i></blockquote>

  </br>
  
  <div><p><b>Installation</b></p></div>
  <ol>
    <li>
      <code>su --login</code>
      <ul>
        <li><code>su</code> execute a command with substitute user and group ID</li>
        <li><code>-</code>, <code>-l</code>, <code>--login</code> start the shell as a login shell with an environment similar to a real login</li>
      </ul>
    </li>
    <li>
      <code>apt-get update -y</code>
      <ul>
        <li><code>apt-get</code> APT package handling utility -- command-line interface</li>
        <li><code>update</code> update is used to resynchronize the package index files from their sources</li>
        <li><code>-y</code> automatic yes to prompts</li>
      </ul>
    </li>
    <li>
      <code>apt-get upgrade -y</code>
      <ul>
        <li><code>upgrade</code> upgrade is used to install the newest versions of all packages currently installed on the system from the sources enumerated in /etc/apt/sources.list</li>
      </ul>
    </li>
    <li>
      <code>apt install sudo</code>
      <ul>
        <li><code>apt</code> command-line interface</li>
        <li><code>install</code> performs the requested action on one or more packages</li>
      </ul>
    </li>
    <li>
      <code>dpkg -l | grep sudo</code> verify whether the sudo package was installed successfully
      <ul>
        <li><code>dpkg -l</code> list packages matching given pattern ('dpkg', package manager for Debian)</li>
        <li><code>grep</code> print lines that match patterns</li>
      </ul>
    </li>
  </ol>

  </br>

  <div><p><b>Configuration</b></p></div>
  <ol>
    <li>
      <code>usermod -aG sudo &ltusername&gt</code>
      <ul><code>usermod</code> modify a user account</ul>
      <ul><code>-a</code>, <code>--append</code> add the user to the supplementary group(s); use only with the -G option</ul>
      <ul><code>-G</code>, <code>--groups</code> a list of supplementary groups which the user is also a member of</ul>
    </li>
    <li><code>visudo</code> edit the sudoers file</li>
    <li> Add <code>&ltusername&gt ALL=(ALL) ALL</code> under <code>#User Privilege</code> section</li>
    <li><code>reboot</code></li>
  </ol>
</details>

<details>
  <summary><h3>3.6. Vim · installation</h3></summary>
  <blockquote><i>Vi Improved (Vim) is a highly configurable text editor built to make creating and changing any kind of text very efficient; it is upwards compatible to Vi</i></blockquote>
  <code>sudo apt install vim</code>
</details>

<details>
  <summary><h3>3.7. Groups and Users · creation & configuration</h3></summary>
<ul>
  <li><code>sudo groupadd &ltgroupname&gt</code> create a group with specified &ltgroupname&gt</li>
  <li><code>vim /etc/passwd</code> open the file where one can check existing users (if not 'sudo', this file is read-only)</li>
  <li><code>sudo adduser &ltusername&gt</code> create a user with specified &ltusername&gt</li>
  <li><code>sudo usermod -aG &ltgroupname&gt &ltusername&gt</code> add user to group</li>
  <li><code>getent group</code>check groups</li>
  <li><code>getent group &ltgroupname&gt</code>check group users</li>
</ul>

</br>

:warning: <code>reboot</code> and verify 'sudo' powers:
<ul>
  <li>
    <code>sudo -v</code>
    <ul>
      <li><code>-v</code>, <code>--validate</code> update the user's cached credentials, authenticating the user if necessary</li>
    </ul>
  </li>
</ul>
</details>

<details>
  <summary><h3>3.8. Secure Shell (SSH) · installation & configuration</h3></summary>
  <ol>
    <li><code>sudo apt install openssh-server</code></li>
    <li><code>sudo vim /etc/ssh/sshd_config</code></li>
    <li>edit the text, replacing <code># Port 22</code> by <code>Port 4242</code> ﹡</li>
    <li><code>sudo vim /etc/ssh/ssh_config</code></li>
    <li>edit the text, replacing <code># Port 22</code> by <code>Port 4242</code> ﹡</li>
    <li><code>sudo service ssh restart</code></li>
  </ol>

﹡ :warning: <i>see subject requirements</i>

</details>

<details>
  <summary><h3>3.9. Uncomplicated Firewall (UFW) · installation & configuration</h3></summary>
    <ol>
      <li><code>sudo apt-get install ufw</code></li>
      <li><code>sudo ufw enable</code></li>
      <li><code>sudo ufw status numbered</code></li>
      <li><code>sudo ufw allow &ltservice/port&gt</code></li>
      <li><code>sudo ufw status numbered</code></li>
    </ol>
</details>
    
<details>
  <summary><h3>3.10. SSH · connection to a physical machine</h3></summary>
</br><div><p><b>VirtualBox interface</b></p></div>
<ol>
  <li>Go to <code>VirtualBox</code></li>
  <li>Select chosen VM</li>
  <li>Go to <code>Settings</code> > <code>Network</code></li>
  <li>Attach to <code>Bridge adapter</code></li>
</ol>
  
</br>
  
<div><p><b>VM</b></p></div>
<ol start="5">
  <li>Start VM</li>
  <li>Login into the system</li>
  <li>
    <code>hostname -I</code> check IP address
    <ul>
      <li><code>hostname</code> show or set the system's host name</li>
      <li><code>-I</code>, <code>--ip-address</code> display the IP address(es) of the host</li>
    </ul>
  </li>
  <li>Execute <code>sudo vim /etc/network/interfaces</code></li>
  <li>
    Edit text
    <ul>
      <li>
        Change <code>allow-hotplug enp0s3</code> to <code>auto enp0s3</code>
        <ul>
          <li><code>allow-hotplug</code> manage interface on various condition changes</li>
          <li><code>auto</code> bring up interface with provided configuration during boot time or interface link up event</li>
        </ul>
      </li>
      <li>
        Change <code>iface enp0s3 inet dhcp</code> to <code>iface enp0s3 inet static</code>
        <ul>
          <li><code>dhcp</code> Dynamic Host Configuration Protocol</li>
        </ul>
      </li>
      <li>
      Add
      <div><code>address &ltipaddress&gt</code></br><code>netmask 255.255.0.0</code></br><code>gateway 10.11.254.254</code></br><code>dns 10.11.254.254</code></div>
    </li>
    </ul>
  </li>
</ol>
  
</br>
  
<div><p><b>Physical machine</b></p></div>
<ol start="10">
  <li>
    Open terminal on physical machine and execute
    <div><code>ssh &ltVMusername&gt@&ltVM_ipaddress&gt -p 4242</code></div>
  </li>
  <li>
    <code>exit</code> to close the connection
  </li>
</ol>
</details>

<details open>
  <summary><h3>3.11. Password policy · setup & configuration</h3></summary>
    <div><p><b>Configure shadow password suite</b></p></div>
  <ol>
    <li><code>sudo vim /etc/login.defs</code></li>
    <li>Set</br>
      <code>PASS_MAX_DAYS</code> to <code>30</code></br>
      <code>PASS_MIN_DAYS</code> to <code>2</code></br>
      <code>PASS_WARN_AGE</code> to <code>7</code>
    </li>
  </ol>
  
  </br>
  
  <div><p><b>Install pwquality</b></p></div>
  <blockquote><i>What is pwquality?</i></blockquote>
  <ol start="">
    <li><code>sudo apt-get install libpam-pwquality</code></li>
  </ol>

  </br>

  <div><p><b>Configure pwquality</b></p></div>
  <ol start="">
    <li><code>sudo vim /etc/pam.d/common-password</code></li>
    <li>
      Edit the <code>pam_pwquality.so</code> line, by adding</br><code>retry=3 minlen=10 ucredit=-1 dcredit=-1 lcredit=-1 maxrepeat=3 reject_username difok=7 enforce_for_root</code> next to it
      <ul>
        <li><code>retry</code> number of retries</li>
        <li><code>minlen</code> minimum number of characters a password must contain</li>
        <li>
          <code>ucredit</code> (upper credit) password must contain at least/at most 'n' uppercase characters
          <ul>
            <li><code>-</code> defines the lower bound</li>
            <li><code>+</code> defines the upper bound</li>
          </ul>
        </li>
        <li><code>dcredit</code> (digit credit) password must contain at least/at most 'n' digits</li>
        <li><code>lcredit</code> (lower credit) password must contain at least/at most 'n' lowercase characters</li>
        <li><code>maxrepeat</code> password must not repeat same character consecutively more than 'n' number of times</li>
        <li><code>reject_username</code> password must not contain username</li>
        <li><code>difok</code> the minimum number of characters that must be different from the old password</li>
        <li><code>enforce_for_root</code> implement password policy to root</li>
      </ul>
    </li>
    <li>Save and exit</li>
  </ol>
</details>

___

</br>

</details>

<details open>
  <summary><h2>4. Monitoring script</h2></summary>
</details>

</br>

___

</br>

## References

[debian website](https://www.debian.org/) accessed 23 Jan. 2024

[Rocky Linux website](https://rockylinux.org/) accessed 23 Jan. 2024

[@PedroZappa](https://github.com/PedroZappa)'s [Born2beRoot](https://github.com/PedroZappa/Born2beRoot) accessed 25 Jan. 2024

[@mota494](https://github.com/mota494)'s [Born2beRoot](https://github.com/mota494/42_Born2BeRoot) accessed 25 Jan. 2024

[@rphlr](https://github.com/rphlr)'s [42-born2beroot](https://github.com/rphlr/42-born2beroot/) accessed 25 Jan. 2024

[sudo](sudo.ws) accessed 25 Jan. 2024

Linux man pages

</br>

___

</br>

### License
This work is published under the terms of [42 Unlicense](./LICENSE).

</br>

[⬆ back to top](#born2beroot)
