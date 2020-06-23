# Contributing

**Never report security issues on GitHub, public Jira issues or other public channels (Gitter/Twitter/etc.), 	
follow the instruction from [Jenkins Security](https://www.jenkins.io/security/#reporting-vulnerabilities) to 	
report it on [Jenkins Jira](https://issues.jenkins-ci.org)**	

In the Jenkins project we appreciate any kind of contributions: code, documentation, design, etc.
Any contribution counts, and the size does not matter!
Check out [this page](https://jenkins.io/participate/) for more information and links!

Many plugins and components also define their own contributing guidelines and communication channels. 
There is also a big number of [mailing lists](https://jenkins.io/mailing-lists/) and [chats](https://jenkins.io/chat/).

Whenever you report a problem please provide information about:	

- Plugin version	
- Jenkins version	
- Operating system	
- Description!	

| NOTE: This is a default CONTRIBUTING page for all repositories in Jenkins. Every plugin/component is its own sub-project which may deviate in its rules. Guidelines and channel links in repository CONTRIBUTING/README pages, if any, take precedence over this page. |
| --- |

## Newcomers

If you are a newcomer contributor and have any questions, please do not hesitate to ask in the [Newcomers Gitter channel](https://gitter.im/jenkinsci/newcomer-contributors).

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

Prerequisites: _Java_ and _Maven_

- Ensure Java 8 or 11 is available.	

  ```shell	
  java -version	
  ```	
  - Use the alternate Java 8.	

  ```console	
  $ export JAVA_HOME=`/usr/libexec/java_home -v 1.8`	
  $ echo $JAVA_HOME	
  /Library/Java/JavaVirtualMachines/jdk1.8.0_252.jdk/Contents/Home
  ```	

- Ensure Maven > 3.6.0 is installed and included in the PATH environment variable.	

  ```	
  mvn --version	
  ```	

### IDE configuration	

See [IDE configuration](https://jenkins.io/doc/developer/development-environment/ide-configuration/)	

### CLI	

- Use the below commands.	

```shell
mvn install -P quick-build
```

```shell	
mvn hpi:run	
```	

```text	
...	
INFO: Jenkins is fully up and running	
```	

- Open <http://localhost:8080/jenkins/> to test the plugin locally.

Some plugins use multi module maven builds and you may need to change your `hpi:run` command to be run from the child directory.

```shell
mvn -f plugin hpi:run
```
