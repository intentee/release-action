# release-action

GitHub actions for validating and extracting release information from Git tags.

### `release-tag-to-version`

Validates a release tag (`v1.2.3` or `v1.2.3-rc1`), extracts the semantic version. Outputs `type` (RELEASE/PRE_RELEASE) and `version`.

### Usage

```yml
- uses: intentee/release-action/release-tag-to-version@main
  id: release
  with:
    release-tag: ${{ github.ref_name }}
```

### `assert-version`

Runs artifact with `--version` flag and asserts the output contains the expected semantic version.

### Usage

```yml
- uses: intentee/release-action/assert-version@main
  with:
    filename: target/release/myapp
    expected-version: ${{ steps.release.outputs.version }}
```

### Commands

#### `make run`:
- Runs both actions against `fixtures` via [`act`](https://github.com/nektos/act).
- Requires Docker.

#### `make test`:
- Runs `.github/workflows/test.yml` locally via [`act`](https://github.com/nektos/act).
- Asserts valid tags, invalid tags, version match, mismatch, and invalid version format.
- Requires Docker.
