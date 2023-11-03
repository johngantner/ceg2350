## Lab 08

- Name: John Gantner
- Email: gantner.6@wright.edu

## Part 1 Answers

1. Disks: `According to lsblk the disk's attached to my system are xvda and xvdb.`
2. Unpartitioned disk: `xvdb`
3. `gdisk` main menu options
   - `p`: `Prints the partition table.`
   - `o`: `Creates a new empty GUID partition table.`
   - `n`: `Allows user to create a new partition.`
   - `i`: `Displays detailed partition information.`
   - `w`: `Writes table to the disk and exits, saves the changes.`
4. Using the `gdisk` utility on the disk: `sudo gdisk /dev/xvdb`
5. `sudo mkfs.ext4 /dev/xvdb1`
6. `sudo mkdir /mnt/expanse`
7. `sudo mount /dev/xvdb1 /mnt/expanse`
8. Skip - trust you to do it ;)
9. `sudo strings /dev/xvdb1`
10. `sudo rm file1.txt`
   - `After deleting my file, it is still showing up when I run strings.`
11. `To truly delete a file, you can run the command shred. An example of this command is: shred -u -z -n 35 example.txt. -u removes the file after overwriting, -z adds a final overwrite with zeros to hide shredding, and -n specifies the number of times to overwrite the file content. After using shred to delete a file you can confirm it's deleted by using the command 'photorec'. If the file was deleted, this tool should not be able to recover it.`
12. `When you unmount a partition its no longer accessible, so trying to interact with the files and folders on an unmounted partition will not work.`
## Part 2 Answers

1. `echo "Hello world this is John." > original.txt`
2. For `original.txt` identify: 
   - Command to find the following info about `original.txt`: `stat -c '%i' original.txt`
   - inode number of `original.txt`: `1070`
   - number of blocks storing `original.txt`: `8`
   - number of links to `original.txt`: `1`
3. Command to create a hard link to `original.txt`: `ln original.txt hardlink.txt`
   - What identifiers indicate a hard link was created? `I ran the ls -i command to confirm that both `original.txt` and `hardlink.txt` had the same inode number.`
   - Does modifying the hard linked file modify `original.txt`? Explain. `Yes, modifying the hard-linked file does modify `original.txt`. Hard links arent distinguishable from the original file, they're simply multiple directory entries pointing to the same data on disk.`
4. Command to create a symbolic link to `original.txt`: `ln -s original.txt symlink.txt`
   - What identifiers indicate a symbolic link was created? `I ran the ls-l command to confrim  that symlink.txt points to `original.txt`.`
   - If `original.txt` was deleted, and a new `original.txt` was created, would the sym link still work? `If `original.txt` is deleted and a new one created, the symbolic link won't work because it's linked to the original file by its filename. It doesn't follow the same inode-based reference as hard links.`
5. Command to create a copy of `original.txt`: `cp original.txt copied.txt`
   - Does modifying the copied file modify `original.txt`? `Modifying the copied file won't affect original.txt. Copies are separate files with different inodes and storage.`
6. Command to move `original.txt` to another directory: `mv original.txt throwaway/`
   - Does it have the same inode? `Moving the file does not change the inode number.`
   - Was the hard link you created affected? `Hard links created earlier will not be affected because they refer to the inode itself.`
   - Was the symbolic link you created affected? `The symbolic links is broken. This is because it is pointing to the old path of original.txt`.

## Extra Credit Answers

Line added to `/etc/fstab`:

```
/dev/xvdb1 /mnt/expanse ext4 defaults 0 0
```
