---
title: Release publicly
weight: 30
---

# Release the version publicly

Once the QA team has greenlighted your build, you can move forward with the public release.

{{% notice warning %}}
**Make certain you have go for publish!** Also, avoid starting this process after 4 PM or on a Friday.
{{% /notice %}}

Update the Release Tracker GitHub issue: tick the "QA validation" box.

## 1. Merge security PRs on GitHub

If there are unmerged security Pull Requests:

- **Merge them on GitHub** and publishing their security advisories.
- **Rebase the build branch** that you created on the previous step to remove the merge commits from the security PRs you merged manually before. 

## 2. Merge the build branch

- **Double check your build branch**
  - Verify that it contains only the updated contributors list and the new changelog, as well as any fix that was merged during QA validation.
  - The commit named "// Changelog [version]" should be the last one.  
    If it's not, you have probably forgotten to build it again after merging a bug fix. In that case, you will have to build again. 
- **Create a Pull Request** to merge the branch (if you haven't done it already), and have it merged.

## 3. Tag & release on GitHub

### Tag the version using git

{{% notice tip %}}
You can do this step using Git or directly on GitHub on the next step.
{{% /notice %}}

- Check out the commit named "// Changelog [version]" you created before
- [Tag][git-tag] the new version:
    ```bash
    git tag 8.0.2 # replace with your version
    ```
- Push the tag:
    ```bash
    git push 8.0.2 # replace with your version
  
    # Alternatively (e.g. if you need to overwrite an existing tag)
    git push origin refs/tags/8.0.2
    ```

### Publish the release on GitHub

Create a [new Release Draft on GitHub](https://github.com/PrestaShop/PrestaShop/releases/new)

- To start, **choose** the tag that you created in the previous step.

  Alternatively, you can **create** the tag by picking the Changelog commit that you just merged.  
    ⚠️ _Make sure you pick the Changelog commit itself, and **not** the PR's merge commit!_

- **Paste** the changelog as a description
   
  - Write a short intro explaining what the release fixes – especially if it's a security release! ([Example](https://github.com/PrestaShop/PrestaShop/releases/tag/1.7.5.1))

- **Upload** the new version zip archive (the one that has been validated by QA).  
  Remove the build number from the file name to avoid confusions.

  - **Upload** the new version XML file. 

{{% callout %}}
##### If the Changelog content is too long

It's not unusual to have very long changelogs, especially in minor versions. To reduce its size, we recommend putting it in a collapsable paragraph:

```html
# Full Changelog
 
<details><summary>Click here to see</summary>
<p>
- Back Office:
  - New feature:
    - #xxxxx .....
...
</p>
</details>
```
{{% /callout %}}

## 4. Communicate

Congratulations! You can now update the Release Tracker GitHub issue: tick the "Release" box and [add a comment](https://github.com/PrestaShop/PrestaShop/issues/19959#issuecomment-653083656).


[git-tag]: https://git-scm.com/book/en/v2/Git-Basics-Tagging
