---
title: Test Scenarios
---

# Test Scenarios

## Goal

The Test Scenarios repository focuses on scenarios written by Software Testers (on a JIRA, not accessible to the public). Several tools have been developed:

* a tool for generating Markdown pages from XRay scenarios on JIRA
* a tool for synchronizing scenarios to be automated or in the process of being automated in issues
* a tool for updating a kanban based on the status of scenarios

## Schedule

* Every week day at 06:00 AM (for the generation of Markdown pages)
* Every week day at 07:00 AM (for the synchronization of scenarios in issues)

## Code

You can find workflows :

* Generate Markdown pages from XRay scenarios ([Github](https://github.com/PrestaShop/test-scenarios/blob/master/.github/workflows/gh-pages.yml))
* Synchronize XRay scenarios and Github Issues ([Github](https://github.com/PrestaShop/test-scenarios/blob/master/.github/workflows/sync-jira-gh.yml))
* Update Kanban based on the status of scenarios ([Github](https://github.com/PrestaShop/test-scenarios/blob/master/.github/workflows/gh-project-test.yml))

## How it works

### Generate Markdown pages from XRay scenarios

Two folders (**Core** and **Modules**) on JIRA are exported. The script uses the XRay API to retrieve the scenarios and their folders. Each XRay folder corresponds to a Hugo content directory. Each XRay scenario corresponds to a page of Hugo content.

**From XRay...**

![XRay : Page with a scenario](../images/test-scenarios-xray.png)

**... to Hugo.**
![Hugo : Page with a scenario](../images/test-scenarios-hugo.png)

### Synchronize XRay scenarios and Github Issues

The script use the following process:

* Fetch all XRay scenarios (To Be Automated / Automation In Progress / Automated)
* For each scenario:
  * IF the XRay scenario has not linked Github issue
    * THEN the script create a new issue;
  * IF the XRay scenario has been updated (title or description)
    * THEN the script update the Github issue (title & description);
  * IF the linked Github issue has not the good assignee from JIRA,
    * THEN the script update the Github issue (assignee);
  * IF the linked Github issue has no label, or the linked Github issue has late labels,
    * THEN the script update the Github issue (labels); 
  * IF the Github label is different of the XRay status
    * THEN the script update the XRay scenario (status).


### Update Kanban based on the status of scenarios

The workflow use the `Machine-Maker/add-to-project-action` action to move in [Github project](https://github.com/orgs/PrestaShop/projects/30) some issues based on their labels:

* Label "`STATE : To Be Automated`" : Column "`Todo`"
* Label "`STATE : Automation in progress`" : Column "`In Progress`"
* Label "`STATE : Automated`" : Column "`Done`"

![Github project](../images/test-scenarios-github-project.png)