# dotfiles

These dotfiles are managed using [chezmoi][]:

[chezmoi]: https://www.chezmoi.io

## How to use:

1. Install chezmoi on your system.
2. Run the following command to initialize the repository:

```bash
chezmoi init aardodd --ssh
```

3. Make any changes to `.config/chezmoi/chezmoi.toml` that you need to.
4. Verify the changes with thw following command:

```bash
chezmoi diff
```

5. If the changes look sensible, run the following command:

```bash
chezmoi apply
```
