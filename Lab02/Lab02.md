## Lab 02

- Name: John Gantner
- Email: gantner.6@wright.edu

## Part 1 Answers

The answers for this section are to help you record what steps  
are needed to create a file locally (in your cloned repo)  
and push them (sync) with GitHub

1. Add a file for tracking: git add Lab02.md
2. Commit changes: git commit -m "Added LAb02.md with LabTemplate contents"
3. Sync local commits with GitHub: git push origin main
4. Sync commits on GitHub to `clone`d repository: git pull origin main

## Part 2 Answers

For each, write the command used or answer the question posed.

1. sudo adduser jgantner
2. /home/ubuntu/ceg2350/Lab02
3. No, ubuntu can't add files to jgantner's home directory. By default, only the owner of the home directory has write access to it.
4. su jgantner
5. cd
6. Yes, jgantner can add files to jgantner's home directory. Because jgantner is the owner of the home directory, jgantner has write permissions.
7. exit
8. cd

## Part 3 Answers

For each, write the command used or answer the question posed.

1. sudo addgroup crew
2. sudo usermod -a -G crew ubuntu, sudo usermod -a -G crew jgantner
3. sudo chown -R :crew /home/ubuntu/DirA
4. su jgantner
5. touch DirA/file.txt
6. This was successful because we changed the owenership of the DirA directory to the crew group. Because both ubuntu and john are members of the crew group, meaning they have permission to modify files within DirA.

## Part 4 Answers

For each, write the command used or answer the question posed.

1. sudo touch sudowho.txt
2. The default permissions of the file are to read and write.
3. sudo vim sudowho.txt

## Part 5 Answers

1. `ssh` command before configuring `config` file: ssh -i ceg2350.pem ubuntu@44.216.84.103
2. HostName: 44.216.84.103
3. User: ubuntu
4. IdentityFile: /home/jgantner/ceg2350.pem
5. `~/.ssh/config` contents:

```
Host John
        HostName 44.216.84.103
        User ubuntu
        IdentityFile /home/jgantner/ceg2350.pem
```

6. `ssh` command after configuring `config` file:: ssh John
