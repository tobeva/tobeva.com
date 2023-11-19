---
title: "GitHub"
linkTitle: "GitHub"
description: "Automation Related to GitHub."
date: 2020-06-06
weight: 20
type: docs
---

* [Introduction to Git Data Extraction and Analysis in Python](https://towardsdatascience.com/introduction-to-git-data-extraction-and-analysis-in-python-e7e2bf9b4606)

## git

* Trigger new CI on GitHub without making a code change:
  * `git commit --amend --no-verify` then `git push -f`
* Ignore local changes to a *tracked* file
  * `git update-index --assume-unchanged -- <filepath>`
* Ignore local changes to *untracked* file:
  * Use .gitignore (project or user)
  * Add to `.git/info/exclude` (local to you only)

## bazel

* Run test ignoring cache
  * `--cache_test_results=no` ([docs](https://bazel.build/reference/command-line-reference#flag--cache_test_results))
