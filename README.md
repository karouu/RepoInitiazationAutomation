### Install: 
```bash
git clone "https://github.com/KalleHallden/ProjectInitializationAutomation.git"
cd ProjectInitializationAutomation
pip install -r requirements.txt
source ~/.my_commands.sh
Then go to create.py and set the username and password to be your username and password.
Also make sure to change all directories to your directories so it should be '/Users/<your username>/path/to/your/project'
```

### Usage:
```bash
To run the script type in 'create <name of your folder>'
```

### suggestion
1. use a simple bash script with cURL commands - this gets rid of the overhead of having to use python and selenium. 
2. use application specific keys don't mess around with passwords. 
3. add in an optional config file to store - project_name, add_readme toggle, priv_pub repo toggle, editor_selector toggle
4. use the tree utility to append the dir listing on your README automatically each time you git add a new file. 
5. create a keyboard shortcut on your mac that brings up a terminal screen where you just enter the project_name.
6. add in an auto error logger - to log all new error codes + err_msg's with timestamps.
7. add in an importance_toggle - that checks if the local and remote HEADS match + prevents accidental deletes.# easy_spider
