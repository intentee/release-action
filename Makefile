test:
	act -W .github/workflows/test.yml

run:
	act workflow_dispatch -W .github/workflows/run.yml --input release-tag=v1.2.3
