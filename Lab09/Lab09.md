## Lab 09

- Name: John Gantner
- Email: 

## Part 1 Answers

- Make sure infinity is in your Lab09 folder in GitHub

## Part 2 Answers

1. Getting started
   - Command to find the PID: ps -o pid,ppid,cmd -p $$
   - PID of "Terminal A": 828
   - PID of "Terminal B": 951
2. Using `./` to run `infinity` in Terminal B
   - PID of script: 967
   - Command to kill script: kill 967
   - Effects of running the script: No, you cannt use Terminal B with infinity running. However, once I ran the kill command, I was able to use Terminal B.
3. Using `source` to run `infinity` in Terminal B
   - PID of script:
   - Command to kill the script:
   - Effects of killing the script:
4. Running `infinity` as a background job in Terminal B
   - Command to run script in background:
   - Job ID of script: 1
   - PID of script: 827
   - Command to kill script via job id: kill %1
   - Effects of exiting terminal: If you close Terminal B the job will not continue running. Closing the terminal will end the session, which will also terminate the background job, which in this case is the infinity script.
5. Run `infinity` in a `screen` or `tmux` session
   - Command(s) to run `infinity` in a screen session: ./infinity.sh
   - Detach from `screen` / `tmux` session: I clicked Ctrl+A followed by Ctrl+D
   - Command to show `screen` / `tmux` sessions: tmux new-session -s Lab09
   - Effects of exiting terminal: If you close Terminal B, the screen session will continue running. The session continues even if the terminal is closed because the sessions will run independently of the terminal that started them. 
   - Command / steps to kill the `screen` / `tmux` session: tmux kill-session -t Lab09

## Part 3 Answers

1. git branch updates
2. git checkout updates
3. nano Infinity.sh. I wrote the comment "Hi this is John".
4. git add infinity, git commit -m "Added comments to infinity.sh", git push origin updates
5. Confirmed?
6.
7.
8.
9. Confirmed?
10.
