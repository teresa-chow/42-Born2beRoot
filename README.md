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
    <td>:heavy_check_mark: <b>Lowered downtime:</b> ifackup and redundancy mechanisms are in place, since VMs are portable and easy to move from one hypervisor to another on a different machine</td>
    <td>:x: <b>Single point of failure:</b>  unless backup and redundancy mechanisms are in place, if the host computer fails, all VMs running on that machine will also fail</td>
  </tr>
  <tr>
    <td>:heavy_check_mark: Scalability</td>
    <td>:x: Hardware limitations</td>
  </tr>
  <tr>
    <td>:heavy_check_mark: <b>Securityenefits:</b> ability to run apps of questionable security, study computer viruses, while protecting host OS</td>
    <td>:x: <b>Security risks:</b> if VMs are not properly isolated from each other or/and from the host machine, virtualization can introduce additional security risks</td>
  </tr>
    <tr>
    <td>:heavy_check_mark: <b>Cost savings:</b> reduced physical infrastructure footprint</td>
    <td>:x: <b>License cost:</b> some software licenses may not allow installation on VMs or require an additional license fee per VM</td>
  </tr>
</table>
</details>

</br>

<h3>:warning: Pre-requisites</h3>
<ul>
  <li>have [VirtualBox](https://www.virtualbox.org/) installed;</li>
  <li>have [the ISO (Optical Disc Image) installer file for the Debian GNU/Linux OS](https://cdimage.debian.org/debian-cd/current/amd64/iso-cd/) downloaded.</li>
</ul>

___

<h3>Steps</h3>
<ol>
  <li>Open <code>VirtualBox</code></li>
  <li>Click <code>New</code></li>
  <li>Name the VM</li>
  <li>
    Choose destination folder for the VM
    <ul>
      <li><code>/sgoinfre/</code> in this case</li>
    </ul>
  </li>
  <li>Type: <code>Linux</code></li>
  <li>Version: <code>Debian (64-bit)</code></li>
  <li>
    Select the amount of memory (RAM) toe allocated to the VM
    <ul>
      <li>set as default – the recommended memory size is <code>1024 MB</code></li>
    </ul>
  </li>
  <li>Create a virtual hard disk now</li>
  <li>Choose <code>VDI</code> (VirtualBox Disk Image) as the type of file to use for the new virtual hard disk</li>
  <li>Choose storage on physical hard disk as being <code>dynamically allocated</code></li>
  <li>
    Select the size of the virtual hard disk
    <ul>
      <li>
        <code>30.8 GB</code> to account for subject bonus requirements</br>
      </li>
    </ul>
  </li>
  <li>Click <code>Create</code></li>
  <li>Head to <code>Settings</code> > <code>Storage</code> > <code>Empty</code> > 💿 icon (<i>Attributes: Optical Drive</i>) > <code>Choose a disk file</code> > <code>Debian ISO</code> > <code>Ok</code></li>
  <li><code>Start</code> the VM</li>
</ol>

</br>

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
    - Keymap: `American English`
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

<details>
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
      <li>
        Enter new partition size in Bytes: <code>525336576 B</code>﹡</br>
        <blockquote>
          1 B × 1024 = <b>1 KB</b></br>
          1 KB × 1024 = <b>1 MB</b> (1024 × 1024)</br>
          1 MB × 1024 = <b>1 GB</b> (1024 × 1024 × 1024)</br>
          </br></br>
          500 MB = 524 288 000 B</br>
          + 2048 × 512 (1 048 576B)<sup>a</sup></br>
          <sup>a</sup> – <i>note to future self: check boot sector size, disk sector size,... (?)</i>
        </blockquote>
      </li>
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
      <li>Set new partition size to <code>max</code></li>
      <li>New partition type: <code>Logical</code></li>
      <li>Mount point for this partition: <code>Do not mount it</code></li>
      <li>Partition settings: <code>Done setting up the partition</code></li>
    </ol>
</details>
</details>
<details>
  <summary><h3>3.2. Encrypting Volumes</h3></summary>
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
  <summary><h3>3.3. Logical Volume Manager (LVM) · configuration</h3></summary>
<ol>
  <li><code>Configure Logical Volume Manager</code></li>
  <li>(Confirmation message:) <code>Yes</code></li>
</ol>

</br>

<div>
  <p><b>Create Volume Group</b></p>
<ol start = "3">
  <li><code>Create volume group</code></li>
  <li>Enter volume group name: <code>LVMGroup</code></li>
  <li>Select partition to store the group: <code>/dev/mapper/sda5_crypt</code></li>
</ol>

</br>

  <p><b>Create Logical Partitions</b></p>
<ol start = "7">
  <li>LVM configuration action: <code>Create logical volume</code></li>
  <li>Select the volume group where the new logical volume should be created: <code>LVMGroup</code></li>
  <li>Enter logical volume name</li>
  <li>Enter the size of the new logical volume</li>
  <li>Repeat the steps above for each of the following volumes:</br>
<table>
<tr>
  <th><b>Logical volume name</b></th>
  <th><b>Logical volume size</b></th>
  <th><b>Conversion / Calculation</b></th>
  <th><b>Logical volume size in Bytes</b></th>
</tr>
<tr>
  <td><code>root</code></td>
  <td>10G</td>
  <td>10 × 1024 × 1024 × 1024</td>
  <td>10737418240 B</td>
</tr>
<tr>
  <td><code>swap</code></td>
  <td>2.3G</td>
  <td>2.3 × 1024 × 1024 × 1024 (2469606195.2 B)</br></br>512 → 2469606400 (?)</br>2048 → 2469607424 (?)</td>
  <td>2465607424 B</td>
</tr>
<tr>
  <td><code>home</code></td>
  <td>5G</td>
  <td>5 × 1024 × 1024 × 1024</td>
  <td>5368709120 B</td>
</tr>
<tr>
  <td><code>var</code></td>
  <td>3G</td>
  <td>3 × 1024 × 1024 × 1024</td>
  <td>3221225472 B</td>
</tr>
<tr>
  <td><code>srv</code></td>
  <td>3G</td>
  <td>3 × 1024 × 1024 × 1024</td>
  <td>3221225472 B</td>
</tr>
<tr>
  <td><code>tmp</code></td>
  <td>3G</td>
  <td>3 × 1024 × 1024 × 1024</td>
  <td>3221225472 B</td>
</tr>
<tr>
  <td><code>var-log</code></td>
  <td>4G</td>
  <td>4 × 1024 × 1024 × 1024</td>
  <td>4294967296 B</td>
</tr>
</table>
</li>
  <li>LVM configuration action: <code>Finish</code></li>
</ol>

</br>

<div><p><b>Setting Mount Points</b></p></div>
<ol start = "13">
  <li>Select volume</li>
  <li>Partition settings > set Use as:</li>
  <li>Set mount point</li>
  <li><code>Done setting up the partition</code></li>
  <li>Repeat the steps above for each of the following volumes:</br>
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
<blockquote><b>Ext4</b> (fourth extended file system) is arguably the most stable and well tested file system supported in Linux.</blockquote></li>
 <li><code>Finish partitioning and write changes to disk</code></li>
 <li>(Confirmation message:) <code>Yes</code></li>
</ol>

</details>
<details>
  <summary><h3>3.4. Additional packages & bootloader · setup & installation</h3></summary>
  <ol>
    <li>Additional packages: <code>No</code></li>
    <li>Country: <code>Portugal</code></li>
    <li>Set Debian archive mirror package manager: <code>deb.debian.org</code></li>
    <li>HTTP proxy: <code>(blank)</code></li>
    <li><code>Continue</code></li>
    <li>Popularity contest: <code>No</code></li>
    <li>Remove all software options and <code>Continue</code></li>
    <li>Installation of GRUB bootloader: <code>Yes</code></li>
    <li>Select device to install the bootloader: <code>/dev/sda (ata_VBOX_HARDDISK)</code></li>
    <li><code>Continue</code></li>
  </ol>
</details>

<details>
  <summary><h3>3.5. Login into the System</h3></summary>
  <ol>
    <li>Enter encryption password</li>
    <li>Enter user</li>
    <li>Enter user password</li>
  </ol>
</details>

<details>
  <summary><h3>3.6. sudo · installation & configuration</h3></summary>
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
    <li>Add <code>&ltusername&gt ALL=(ALL) ALL</code> under <code>#User Privilege</code> section</li>
    <li>Save and close</li>
    <li><code>reboot</code></li>
  </ol>
</details>

<details>
  <summary><h3>3.7. Vim · installation</h3></summary>
  <blockquote><i>Vi Improved (Vim) is a highly configurable text editor built to make creating and changing any kind of text very efficient; it is upwards compatible to Vi</i></blockquote>
  <code>sudo apt install vim</code>
</details>

<details>
  <summary><h3>3.8. Groups and Users · creation & configuration</h3></summary>
<ul>
  <li><code>sudo groupadd &ltgroup-name&gt</code> create a group with specified &ltgroup-name&gt</li>
  <li><code>sudo usermod -aG &ltgroup-name&gt &ltusername&gt</code> add user to group</li>
  <li>
    <code>getent group &ltgroup-name&gt</code>check group users
    <ul>
      <li><code>getent group</code> check groups</li>
    </ul>
  </li>
</ul>
</details>

<details>
  <summary><h3>3.9. Secure Shell (SSH) · installation & configuration</h3></summary>
  <ol>
    <li><code>sudo apt install openssh-server</code></li>
    <li><code>sudo vim /etc/ssh/sshd_config</code></li>
    <li>edit the text, replacing
      <ul>
        <li><code># Port 22</code> with <code>Port 4242</code> ﹡</li>
        <li>and <code>#PermitRootLogin prohibit-password</code> with <code>PermitRootLogin no</code> to prohibit SSH login as root, regardless of authentication mechanism</li>
      </ul>
    </li>
    <li><code>sudo vim /etc/ssh/ssh_config</code></li>
    <li>edit the text, replacing <code># Port 22</code> by <code>Port 4242</code> ﹡</li>
    <li><code>sudo service ssh restart</code></li>
  </ol>

﹡ :warning: <i>see subject requirements</i>

</details>

<details>
  <summary><h3>3.10. Uncomplicated Firewall (UFW) · installation & configuration</h3></summary>
    <ol>
      <li><code>sudo apt-get install ufw</code></li>
      <li><code>sudo ufw enable</code></li>
      <li><code>sudo ufw status numbered</code></li>
      <li><code>sudo ufw allow &ltservice/port&gt</code></li>
      <li><code>sudo ufw status numbered</code></li>
    </ol>
</details>
    
<details>
  <summary><h3>3.11. SSH · connection to a physical machine</h3></summary>
</br><div><p><b>VirtualBox interface</b></p></div>
<ol>
  <li>Go to <code>VirtualBox</code></li>
  <li>Select chosen VM</li>
  <li>Go to <code>Settings</code> > <code>Network</code></li>
  <li>Attached to <code>Bridged Adapter</code></li>
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
      <li><code>-I</code>, <code>--all-ip-addresses</code> display the IP address(es) of the host</li>
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
      <div><code>address &ltip-address&gt</code></br><code>netmask 255.255.0.0</code></br><code>gateway 10.11.254.254</code></br><code>dns 10.11.254.254</code></div>
    </li>
    </ul>
  </li>
</ol>
  
</br>
  
<div><p><b>Physical machine</b></p></div>
<ol start="10">
  <li>
    Open terminal on physical machine and execute
    <div><code>ssh &ltVM-username&gt@&ltVM-ip-address&gt -p 4242</code></div>
  </li>
  <li>
    <code>logout</code> to terminate an SSH session, or, alternatively, <code>exit</code> to close the connection
  </li>
</ol>
</details>

<details>
  <summary><h3>3.12. sudo policy & log · configuration</h3></summary>
  <ol>
    <li>
      <code>sudo visudo</code>
      <ul>
        <li><code>visudo</code> edit the sudoers file</li>
      </ul>
    </li>
    <li>
      Add the following <code>Defaults</code> to the file
      <ul>
        <li>
          <code>Defaults  passwd_tries=3</code>
          <ul>
            <li><code>passwd_tries</code> total ammount of tries for entering 'sudo' password</li>
          </ul>
        </li>
        <li>
          <code>Defaults  badpass_message="Wrong password. Try again:"</code>
          <ul>
            <li><code>badpass_message</code> message to be printed on wrong password scenario</li>
          </ul>
        </li>
        <li>
          <code>Defaults  logfile="/var/log/sudo/sudo.log"</code>
          <ul>
            <li><code>logfile</code> set custom log file for 'sudo'</li>
          </ul>
        </li>
        <li>
          <code>Defaults  log_input, log_output</code>
          <ul>
            <li><code>log_input, log_output</code> what will be logged</li>
          </ul>
        </li>
        <li>
          <code>Defaults  requiretty</code>
          <ul>
            <li><code>requiretty</code> enables 'sudo' invocation from a real TTY but not through methods such as 'cron' or 'cgi-bin'</li>
          </ul>
        </li>
        <li>
          <code>Defaults  secure_path="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/snap/bin"</code>
          <ul>
            <li><code>secure_path</code> the path used for every command run with 'sudo'</li>
          </ul>
        </li>
      </ul>
    </li>
  </ol>
</details>

<details>
  <summary><h3>3.13. Password policy · setup & configuration</h3></summary>
    <div><p><b>Configure shadow password suite</b></p></div>
  <ol>
    <li><code>sudo vim /etc/login.defs</code></li>
    <li>Set</br>
      <code>PASS_MAX_DAYS</code> to <code>30</code>﹡</br>
      <code>PASS_MIN_DAYS</code> to <code>2</code>﹡</br>
      <code>PASS_WARN_AGE</code> to <code>7</code>﹡
    </li>
    <li>Save and close</li>
  </ol>
<p>﹡ :warning: <i>see subject requirements</i></p>

</br>

<div><p><b>Update password policy for already created user</b></p></div>
    <ul>
     <li>
        <code>chage -M 30 -m 2 -W 7</code>
      <ul>
        <li><code>chage</code> change user password expiry information</li>
        <li><code>-M</code>, <code>--maxdays</code> set the maximum number of days during which a password is valid</li>
        <li><code>-m</code>, <code>--mindays</code> set the minimum number of days between password changes</li>
        <li><code>-W</code>, <code>--warndays</code> set the number of days of warning before a password change is required</li>
      </ul>
     </li></br>
     <li>
        or, alternatively, <code>passwd -x 30 -n 2 -w 7</code>
       <ul>
          <li><code>passwd</code> change user password</li>
          <li><code>-x</code>, <code>--maxdays</code> set the maximum number of days a password remains valid</li>
          <li><code>-n</code>, <code>--mindays</code> set the minimum number of days between password changes</li>
          <li><code>-w</code>, <code>--warndays</code> set the number of days of warning before a password change is required</li>
        </ul>
    </li>
  </ul>
  
</br>
  
<div><p><b>Install pwquality</b></p></div>
<blockquote><i>pwquality is a PAM module to perform password quality checking</i></blockquote>
<p><code>sudo apt-get install libpam-pwquality</code></p>
</br>

<div><p><b>Configure pwquality</b></p></div>
<ol>
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
<hr></br>
</details>
</details>

<details>
  <summary><h2>4. Monitoring script</h2></summary>
  <div><p><b>Crontab</b></p></div>
  <blockquote><i>Crontab stands for crontable, and consists of a list of commands that are to be run on a regular schedule</i></blockquote>
  <ol>
    <li>
      Check whether Crontab is installed
      <ul>
        <li><code>ls /var/spool/cron/</code> should display <code>crontabs</code>, since that is where crontab files are stored</li>
      </ul>
    </li>
  </ol>
</br>
<div><p><b>monitoring.sh & sleep.sh</b></p></div>
    <ol start="2">
    <li><code>cd /usr/local/bin/</code> this is the default installation location when a user builds and installs an executable application independently</li>
    <li>
      <code>sudo vim monitoring.sh</code> create and edit 'monitoring.sh' file
      <ul>
        <li><a href="./monitoring_scripts/monitoring.sh">monitoring.sh</a></li>
      </ul>
    </li>
    <li>
      <code>sudo vim sleep.sh</code> create and edit 'sleep.sh' file
      <ul>
        <li><a href="./monitoring_scripts/sleep.sh">sleep.sh</a></li>
      </ul>
    </li>
    <li><code>sudo chmod 744 monitoring.sh sleep.sh</code></li>
    <li><code>sudo visudo</code> open sudoers config file</li>
    <li>Add the following lines, that will allow corresponding scripts to run when the user's session starts:</br>
      <code>&ltusername&gt        ALL=(ALL) NOPASSWD: /usr/local/bin/sleep.sh</code></br>
      <code>&ltusername&gt        ALL=(ALL) NOPASSWD: /usr/local/bin/monitoring.sh</code></li>
    <li>Save and exit</li>
    <li><code>sudo reboot</code></li>
    <li><code>sudo /usr/local/bin/monitoring.sh</code></li>
  </ol>
</br>
  <div><p><b>Crontab</b></p></div>
  <ol start="11">
    <li><code>sudo crontab -u root -e</code> open crontab config file</li>
    <li>Add the following line to the end of the file: </br><code>*/10 * * * * /usr/local/bin/sleep.sh; /usr/local/bin/monitoring.sh</code>,</br>to sequencially run  'sleep.sh' and 'monitoring.sh' every 10 minutes</li>
    <li><code>sudo crontab -u root -l</code> view the list of scheduled cron jobs for the root user</li>
  </ol>
<hr></br>
</details>

<details open>
  <summary><h2>5. WordPress · website setup</h2></summary>
  <details>
    <summary><h3>5.1. Lighttpd · installation and setup</h3></summary>
    <blockquote><i>Lighttpd (pronounced /lighty/) is a web server that has been optimized for high-performance environments</i></blockquote>
    <ol>
      <li><code>sudo apt install lighttpd</code></li>
      <li><code>dpkg -l | grep lighttpd</code></li>
      <li>
        <code>sudo ufw allow 80</code>
        <ul>
          <li><code>port 80</code> is the port number assigned to commonly used internet communication protocol, Hypertext Transfer Protocol (HTTP); it is the default network port used to send and receive unencrypted web pages</li>
        </ul>
      </li>
      <li><code>sudo ufw status</code></li>
    </ol>
  </details>

  <details>
    <summary><h3>5.2. MariaDB · installation and configuration</h3></summary>
    <blockquote><i>MariaDB is an open-source relational database</i></blockquote>
    <ol>
      <li><code>sudo apt install mariadb-server</code></li>
      <li><code>dpkg -l | grep mariadb-server</code></li>
      <li>
        <code>sudo mysql_secure_installation</code> launch the interactive script for removing insecure default settings
        <ul>
          <li>Enter current password for root (enter for none): <code>Enter</code> – :warning: <i>do not confuse database root with system root</i></li>
          <li>Switch to unix_socket authentification [Y/n] <code>n</code></li>
          <li>Change root password? [Y/n] <code>n</code></li>
          <li>Remove anonymous users? [Y/n] <code>Y</code></li>
          <li>Disallow root login remotely? [Y/n] <code>Y</code></li>
          <li>Remove test database and access to it? [Y/n] <code>Y</code></li>
          <li>Reload privilege tables now? [Y/n] <code>Y</code></li>
        </ul>
      </li>
      <li><code>sudo mariadb</code> access the MariaDB console</li>
      <li><code>CREATE DATABASE &ltdatabase-name&gt ;</code></li>
      <li><code>GRANT ALL ON &ltdatabase-name&gt.* TO '&ltusername-2&gt'@'localhost' IDENTIFIED BY '&ltpassword-2&gt' WITH GRANT OPTION;</code> create a new database user and grant them full privileges on the database</li>
      <li><code>FLUSH PRIVILEGES;</code> apply changes and reload privileges</li>
      <li><code>exit</code> exit MariaDB shell</li>
    </ol>
  </br>
  <div><p><b>Check</b></p></div>
  <ul>
    <li>
      <code>mariadb -u &ltusername-2&gt -p</code> confirm whether the database user was successfully created
      <ul>
        <li>Enter password: <code>&ltpassword-2&gt</code></li>
      </ul>
    </li>
    <li><code>SHOW DATABASES;</code> check whether the database user has access to the database</li>
    <li><code>exit</code></li>
  </ul>
  </details>

  <details open>
    <summary><h3>5.3. PHP · installation</h3></summary>
    <blockquote><i>PHP is a general-purpose scripting language that is especially suited to web development</i></blockquote>
    <ol>
      <li><code>sudo apt install php-cgi php-mysql</code></li>
      <li><code>dpkg -l | grep php</code></li>
    </ol>
  </details>

  <details open>
    <summary><h3>5.4. WordPress · installation and configuration</h3></summary>
    <blockquote><i>WordPress is an open-source content management system</i></blockquote>
    <ol>
      <li></li>
    </ol>
  </details>

  <details open>
    <summary><h3>5.5. Lighttpd · configuration</h3></summary>
    <ol>
      <li></li>
    </ol>
  </details>
  
</details>

</br>

___

</br>

## References

Linux man pages

[debian website](https://www.debian.org/) accessed 23 Jan. 2024

[Rocky Linux website](https://rockylinux.org/) accessed 23 Jan. 2024

[@PedroZappa](https://github.com/PedroZappa)'s [Born2beRoot](https://github.com/PedroZappa/Born2beRoot) accessed 25 Jan. 2024

[@mota494](https://github.com/mota494)'s [Born2beRoot](https://github.com/mota494/42_Born2BeRoot) accessed 25 Jan. 2024

[@rphlr](https://github.com/rphlr)'s [42-born2beroot](https://github.com/rphlr/42-born2beroot/) accessed 25 Jan. 2024

[sudo](sudo.ws) accessed 25 Jan. 2024

</br>

___

</br>

### License
This work is published under the terms of [42 Unlicense](./LICENSE).

</br>

[⬆ back to top](#born2beroot)
