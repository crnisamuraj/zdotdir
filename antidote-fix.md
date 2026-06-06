# antidote fix

Self healing fix that regenerates zero byte plugins file
```shell
# Self-heal: if the static file got zeroed (e.g. unclean shutdown), drop it
# so antidote regenerates instead of sourcing an empty file.
[[ -f ${ZDOTDIR:-$HOME}/.zsh_plugins.zsh && ! -s ${ZDOTDIR:-$HOME}/.zsh_plugins.zsh ]] &&
  rm -f ${ZDOTDIR:-$HOME}/.zsh_plugins.zsh
```

Monitor what zeroes out the file
```shell
sudo auditctl -w /home/vudu/.config/zsh/.zsh_plugins.zsh -p wa -k zshplug
# after it goes empty again:
sudo ausearch -k zshplug -i | tail -40
```
