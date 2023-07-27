# Contributing

**Table of Contents**

- [Newcomers](#newcomers)
- [Useful links](#useful-links)
  - [Source code contribution ways of working](#source-code-contribution-ways-of-working)
- [Run Locally](#run-locally)
  - [IDE configuration](#ide-configuration)
  - [CLI](#cli)

**Never report security issues on GitHub, public Jira issues or other public channels (Gitter/Twitter/etc.), 	
follow the instruction from [Jenkins Security](https://www.jenkins.io/security/#reporting-vulnerabilities) to 	
report it on [Jenkins Jira](https://issues.jenkins.io/).** For issues related to Jenkins infrastructure services, please report them on [Jenkins Infrastructure Help Desk](https://github.com/jenkins-infra/helpdesk/issues/).

In the Jenkins project we appreciate any kind of contributions: code, documentation, design, etc.
Any contribution counts, and the size does not matter!
Check out the [contributing page](https://jenkins.io/participate/) for more information and links!

Many plugins and components also define their own contributing guidelines and communication channels. 
There is also a big number of [chat channels](https://jenkins.io/chat/) and threads on the [community forums](https://community.jenkins.io/).

| NOTE: This is a default CONTRIBUTING page for all repositories in Jenkins. Every plugin/component is its own sub-project which may deviate in its rules. Guidelines and channel links in repository CONTRIBUTING/README pages, if any, take precedence over this page. |
| --- |

## Newcomers

If you are a newcomer contributor and have any questions, please do not hesitate to ask in the [Newcomers Gitter channel](https://app.gitter.im/#/room/#jenkinsci_newcomer-contributors:gitter.im).

## Useful links

* [Jenkins: Participate and Contribute](https://jenkins.io/participate/)
* [Slides: Contributing to Jenkins - it is all about you](https://docs.google.com/presentation/d/1JHgVzWZAx95IsUAZp8OoyCQGGkrCjzUd7eblwd1Y-hA/edit?usp=sharing)

### Source code contribution ways of working	

- For larger contributions create an issue for any required discussion	
- Implement solution on a branch in your fork	
- Make sure to include issue ID (if created) in commit message, and make the message speak for itself	
- Once you're done create a pull request and ask at least one of the maintainers for review	
  - Remember to title your pull request properly as it is used for release notes	

## Run Locally	

The prerequisites for Java and Maven are documented on the [preparation](https://www.jenkins.io/doc/developer/tutorial/prepare/) page on jenkins.io.

### IDE configuration	

See [IDE configuration](https://jenkins.io/doc/developer/development-environment/ide-configuration/).

### CLI	

- Use the below commands.	

```console	
$ mvn hpi:run	
```	

```text	
...	
INFO: Jenkins is fully up and running	
```	

- Open <http://localhost:8080/jenkins/> to test the plugin locally.

Some plugins use multi module maven builds and you may need to change your `hpi:run` command to be run from the child directory, and build the other modules first.


```console
$ mvn install -P quick-build
$ mvn -f plugin hpi:run
```
