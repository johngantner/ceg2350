## Lab 08

- Name: John Gantner
- Email: 

## Part 1 Answers

1. Disks: According to lsblk the disk's attsched to my system are xvda and xvdb.
2. Unpartitioned disk: xvdb
3. `gdisk` main menu options
   - `p`: Prints the partition table.
   - `o`: Creates a new empty GUID partition table.
   - `n`: Allows user to create a new partition.
   - `i`: Displays detailed partition information.
   - `w`: Writes table to the disk and exits, saves the changes.
4. Using the `gdisk` utility on the disk: sudo gdisk /dev/xvdb
5. sudo mkfs.ext4 /dev/xvdb
6. sudo mkdir /mnt/expanse
7. sudo mount /dev/xvdb /mnt/expanse
8. Skip - trust you to do it ;)
9. sudo strings /dev/xvdb
10. sudo rm file1.txt
   - After deleting my file, it is still showing up in when I run strings.
11. 
12. 
13. 
14.
15.

## Part 2 Answers

1.
2. For `original.txt` identify:
   - Command to find the following info about `original.txt`:
   - inode number of `original.txt`:
   - number of blocks storing `original.txt`:
   - number of links to `original.txt`:
3. Command to create a hard link to `original.txt`:
   - What identifiers indicate a hard link was created?
   - Does modifying the hard linked file modify `original.txt`? Explain
4. Command to create a symbolic link to `original.txt`
   - What identifiers indicate a symbolic link was created?
   - If `original.txt` was deleted, and a new `original.txt` was created, would the sym link still work? Explain
5. Command to create a copy of `original.txt`
   - Does modifying the copied file modify `original.txt`? Explain
6. Command to move `original.txt` to another directory.
   - Does it have the same inode? Explain
   - Was the hard link you created affected? Explain
   - Was the symbolic link you created affected? Explain

## Extra Credit Answers

Line added to `/etc/fstab`:

```
Insert line here
```
