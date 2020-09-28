# Computer herding project

This project herds my computers and keeps them in shape.

It uses ansible + ansible-pull to manage the tasks needed to run
on each OS.

## Running on a computer

This is how to make sure that the computer matches the ansible setup:

```
curl https://raw.githubusercontent.com/boxmein/computer-setup/master/run.sh | bash
```

## Auto-running

The command installs a system cron task to run automatically every day.
