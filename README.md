# All_of_Us

## To Run run_predixcan_islet_sequential.sh

##### Installing pipeline in All of Us:
````
git clone https://github.com/ckrueger2/aou_sc_predixcan
````
````
git clone https://github.com/Toobarizwan/All_of_Us
````

#### Changing file permissions:
````
chmod +x run_predixcan_islet_sequential.sh
````

#### Executing the script:
````
./run_predixcan_islet_sequential.sh <Phecode> <pop>
````
Example:
````
./run_predixcan_islet_sequential.sh 172 META
````
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
## Running Jobs on a Linux Screen

This is a guide on how to use `screen` to run jobs on All Of Us. This will allow you to run jobs without keeping your laptop or browser open.

### Step 1: Start a Screen Session

```bash
screen -S screen_name
```

Use a descriptive name, for example:

```bash
screen -S pwas_run
```

---

### Step 2: Run Your Command Inside the Screen

Once inside the screen session, run your script or command:

```bash
bash your_script.sh
```

Example:

```bash
bash run_pwas.sh
```

---
### Step 3: Detach From the Screen

To safely leave the session **without stopping the job**:

```
Ctrl + A, then D
```

You can now close your terminal but do not pause the environment.

---

### Step 4: Reattach to the Screen

To return to your session:

```bash
screen -r screen_name
```

If you have multiple screen sessions:

```bash
screen -ls
screen -r <session_id>
```

---

## Monitoring Jobs

### Check Running Processes

```bash
ps -u $USER
```
### Check Output Files

```bash
ls -lh *.csv
```

You may also want to check:

```bash
ls -lh *.log
ls -lh *.tsv
```

### Kill a stuck screen session:

```bash
screen -XS screen_name quit
```

### Force detach a screen (if already attached elsewhere):

```bash
screen -d -r screen_name
```

## Helpful Resource

[https://linuxize.com/post/how-to-use-linux-screen/](https://linuxize.com/post/how-to-use-linux-screen/)
