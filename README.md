# Computer herding project

This project herds my computers and keeps them in shape.

It uses ansible + ansible-pull to manage the tasks needed to run
on each OS.

## Running on a computer

This is how to make sure that the computer matches the ansible setup:

```
ansible-pull -U git@github.com:boxmein/computer-setup -i hosts local.yml
```

## Auto-running

We can run the ansible-pull script as a daily/weekly cron task:

1. Put the `run.sh` into /opt/computer-setup.sh, add +x
2. Add to the system crontab:

```
@daily /opt/computer-setup.sh
```
