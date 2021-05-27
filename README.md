# fish-ssh-agent

Utility functions to start your ssh agent when using fish shell.
You will only need to run `ssh-add` and type your password once,
after the running ssh_agent should do the work for you.

Auto add ssh keys

## Installation

### Using [fundle](https://github.com/danhper/fundle)

Add

```
fundle plugin 'liuwentao/fish-ssh-agent'
```

to your `config.fish`, reload your shell and run `fundle install`.

### Using [Fisher](https://github.com/jorgebucaran/fisher)

```
fisher install liuwentao/fish-ssh-agent
```

### Manually

Copy `functions` and `conf.d` to your `$__fish_config_dir` directory. That's all.
