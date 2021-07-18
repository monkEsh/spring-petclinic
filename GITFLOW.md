# Gitflow integration for java maven plugin
1. Install gitflow plugin
```xml
<plugin>
    <groupId>com.amashchenko.maven.plugin</groupId>
    <artifactId>gitflow-maven-plugin</artifactId>
    <version>1.16.0</version>
    <configuration>
    <installProject>false</installProject>
    <verbose>false</verbose>
    <gitFlowConfig>
        <productionBranch>master</productionBranch>
        <developmentBranch>develop</developmentBranch>
        <featureBranchPrefix>feature/</featureBranchPrefix>
        <releaseBranchPrefix>release/</releaseBranchPrefix>
        <hotfixBranchPrefix>hotfix/</hotfixBranchPrefix>
        <supportBranchPrefix>support/</supportBranchPrefix>
        <versionTagPrefix></versionTagPrefix>
        <origin>origin</origin>
    </gitFlowConfig>
    <commitMessages>
        <!-- since 1.2.1, see Customizing commit messages -->
    </commitMessages>
    </configuration>
</plugin>
```


# Goals Overview

- `gitflow:release-start` - Starts a release branch and updates version(s) to release version.
- `gitflow:release-finish` - Merges a release branch and updates version(s) to next development version.
- `gitflow:release` - Releases project w/o creating a release branch.
- `gitflow:feature-start` - Starts a feature branch and optionally updates version(s).
- `gitflow:feature-finish` - Merges a feature branch.
- `gitflow:hotfix-start` - Starts a hotfix branch and updates version(s) to hotfix version.
- `gitflow:hotfix-finish` - Merges a hotfix branch.
- `gitflow:support-start` - Starts a support branch from the production tag.
- `gitflow:help` - Displays help information.