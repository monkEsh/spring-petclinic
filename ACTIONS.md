# Github Actions

1. build-check.yml
    - Name: Petclinic build test pipeline
    - Test build by compiling project for release, feature and hotfix branches

2. codeql-analysis.yml
    - Name: CodeQL
    - Execute code quality check on project using codeql

3. maven.yml
    - Name: Petclinic CI-CD pipeline
    - Stages:
        - Build project
        - Upload to maven repo
        - Fetch artifact name
        - Upload artifact to server
