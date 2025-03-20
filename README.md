# write-good-action

Runs the write-good english prose linter on all markdown files in a repository.

[Write-Good](https://github.com/btford/write-good) english prose linter, created
by Brian Ford.

## Inputs

### `checks`

**Optional** The name of the check that you want to include/exclude. All checks
will be run if no input is included. E-prime is the only check disabled by default.

Activate e-prime checks with the default:
* `--yes-eprime`

Only run one specific check by including one of the following:
* `--passive`
* `--so`
* `--weasel`
* `--adverb`
* `--cliches`

Checks you can specify to exclude:
* `--no-passive`
* `--no-so`
* `--no-weasel`
* `--no-adverb`
* `--no-cliches`


## Example Usage

```yaml
 name: Run the write-good action
 uses: jdlabelle/write-good-action@v1
 with:
   checks: --passive
 ```
