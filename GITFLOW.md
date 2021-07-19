# Gitflow strategy
![git-model@2x.png](https://nvie.com/img/git-model@2x.png)

## The main branches 

- master
    - We consider `origin/master` to be the main branch where the source code of HEAD always reflects a production-ready state.
- develop
    - We consider `origin/develop` to be the main branch where the source code of HEAD always reflects a state with the latest delivered development changes for the next release. Some would call this the `integration branch`. This is where any automatic nightly builds are built from.

## Supporting branches

- Feature branches
    - May branch off from:
        - develop 
    - Must merge back into:
        - develop 
    - Branch naming convention:
        - anything except master, develop, release-*, or hotfix-*
    - Feature branches (or sometimes called topic branches) are used to develop new features for the upcoming or a distant future release. 

- Release branches
    - May branch off from:
        - develop
    - Must merge back into:
        - develop and master
    - Branch naming convention:
        - release-* 
    - Release branches support preparation of a new production release. They allow for last-minute dotting of i’s and crossing t’s. Furthermore, they allow for minor bug fixes and preparing meta-data for a release (version number, build dates, etc.). By doing all of this work on a release branch, the develop branch is cleared to receive features for the next big release.

- Hotfix branches
    - May branch off from:
        - master
    - Must merge back into:
        - develop and master
    - Branch naming convention:
        - hotfix-* 
    - When a critical bug in a production version must be resolved immediately, a hotfix branch may be branched off from the corresponding tag on the master branch that marks the production version.

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


## Refrences

- https://github.com/aleksandr-m/gitflow-maven-plugin
- https://guides.github.com/introduction/flow/
- https://nvie.com/posts/a-successful-git-branching-model/
