# XR Capstone Team Template

Template for CSE 481 V repositories 

> [!IMPORTANT]
> Replace with the title and  description of your project

**Team:** 
- Student 1 (email@uw.edu)

> [!IMPORTANT]
> Update with your team's info

In this repository:

- `.gitattributes`: Git file treatment configuration.
- `.gitignore`: Files that should not be managed by git.
- `LICENSE`: MIT license. Change as needed.
- `README.md`: This file.

# Setup instructions

Replace with instructions on how to build and install your project later. This will likely be marking down which version of Unity/Xcode you used and how to download the finished APK's or build and links to demo videos.

## 1. Install Git and Git LFS

Follow these instructions:
- [Git](https://git-scm.com/install/)
- [Git LFS](https://docs.github.com/en/repositories/working-with-files/managing-large-files/installing-git-large-file-storage)

## Create Your Project

1. Clone this repository.
2. Use Unity or Xcode to create a project with this repository as the root.

> [!WARNING]
> Make sure you do not create your project as a subfolder in this repository.

## (For Unity projects) Configure Unity YAML Merge

1. Identify where the tool is installed.
    1. macOS: `/Applications/Unity/Hub/Editor/6000.3.2f1/Unity.app/Contents/Helpers`
    2. Windows: `C:\Program Files\Unity\...` or `Program Files (x86)`
2. Configure git to use this driver. Add the following to `.git/config`
    ```ini
    [merge]
    tool = unityyamlmerge

    [mergetool "unityyamlmerge"]
    trustExitCode = false
    cmd = '<path to UnityYAMLMerge>' merge -p "$BASE" "$REMOTE" "$LOCAL" "$MERGED"
    ```

## Once you're done...

Delete these setup instructions and replace it with instructions on how to install your project.
