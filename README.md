# release-action

Opinionated actions for GitHub releases.

### `release-action`

Creates a full release. Uses both `release-action/release-tag-to-version` and `release-action/assert-version`.

```yaml
# build job
- uses: intentee/release-action@ref
  with:
    release-tag: ${{ github.ref_name }}
    binary-path: ./target/release/my-binary
    artifact-name: ${{ matrix.artifact_name }}

# release job
- uses: intentee/release-action@ref
  with:
    release-tag: ${{ github.ref_name }}
    create-release: "true"
```

### `release-action/release-tag-to-version`

Get the tag from commit, validates and pushes to release.

```yaml
- uses: intentee/release-action/release-tag-to-version@ref
  with:
    release-tag: ${{ github.ref_name }}
```

### `release-action/assert-version`

Validates if the tag pushed to repository is same as the one in project.

```yaml
- uses: intentee/release-action/assert-version@ref
  with:
    filename: ./my-binary
    expected-version: "1.2.3"
```
