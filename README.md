# The script resets JetBrains products trial at GNU/Linux

Supports: 
IDEA, WebStorm, DataGrip, PhpStorm, CLion, PyCharm, RubyMine, Rider, GoLand.

## Please use it in study purpose only! If you will not buy license after you can can afford it you are sucks! 

## Usage

### Manually

* For first time only:
```sh
chmod +x run.sh
```
* Run script:
```sh
./run.sh
```

###  Reset evaluation automatically using cron
Warn: job will not be done if computer was turned off

For run script every `Sunday at 13:00`:
* `crontab -e`
* Paste this to new line `0 13 * * 0 /path/to/run.sh >/dev/null 2>&1`

For remove job from cron delete line with task from `crontab -e`

P.S. You can play with crone schedule [here](https://crontab.guru/)
