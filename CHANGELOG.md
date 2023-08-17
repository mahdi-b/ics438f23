# Changelog (Version 3)

## Version 3.2 (3/7/2023)

The Morea team is delighted to announce the release of Version 3.2.  This release focuses on improved support for new Morea users, and includes:

* Addition of a "template-module" to the morea template repository.
* Documentation explaining module design and implementation using the new template-module. For details, see [Module design](https://morea-framework.github.io/docs/instructors/module-design).
* Addition of a "_module-icons" directory to the morea template repository, making over 50 PNG from past Morea modules available. For details, see [Module Icons documentation](https://morea-framework.github.io/docs/instructors/icons#module-icons).
* Documentation on how to use Gitpod for Morea development. For details, see [Choosing local vs. cloud development](https://morea-framework.github.io/docs/instructors/quick-start#choose-local-or-cloud-development)

Have fun and let us know if you run into problems.

## Version 3.1

The Morea team is delighted to announce the release of Version 3.1.  This release adds a number of useful new features to Morea, including:

* Update of Bootstrap to 5.1.3.  This enables style customization using [Bootstrap CSS Variables](https://getbootstrap.com/docs/5.0/customize/css-variables/).

* Morea 3.1 sites now load [FontAwesome](https://fontawesome.com/). This makes a gazillion icons available. For documentation, see the [Morea User Guide Chapter on Icons](/docs/instructors/icons).

* You can now easily create "Admonitions" or "Callouts". See the [Morea User Guide Chapter on Admonitions](/docs/instructors/admonitions) for details.

* Morea 3.1 sites now load [Anchor.js](https://www.bryanbraun.com/anchorjs/). This provides deep linking into sections of pages.

Many users might decide to wait to obtain these features until the next time they create a Morea site. If you want to upgrade an existing site to Version 3.1, then we provide guidance in the [Morea User Guide Chapter on Updating](/docs/instructors/updating).

Have fun and let us know if you run into problems.



## Version 3.0 (8/1/21)

The Morea team is delighted to announce a new major release of the system.  This release should be mostly backward compatible with existing Morea instructor content, though there are extensive changes (and simplifications!) to the way sites are developed and managed.

### Summary of changes

Here is a summary of the changes from Version 2:

1. Morea 3 uses the latest releases of Jekyll (Version 4.2.0), Bootstrap (5), Bootswatch (5), FullCalendar (5.8), and ChartJS (3.5).

2. Create a new Morea 3 site using the GitHub "template" mechanism.  Templates have advantages over the previous approach of cloning: you can create a private repository even though the template is a public repository, and you can create multiple repositories in a single organization from the same template.

3. Morea 3 sites are automatically built and deployed via GitHub Actions whenever there is a commit to the main branch. Unlike Morea 2, Morea 3 does not use custom scripts (such as `morea-run-local.sh`, `morea-publish.sh`, etc.).

4. Morea 3 does not require local management of multiple branches.  Unlike Morea 2, there are no "src" and "gh-pages" subdirectories.

5. To build and run a Morea 3 site locally, you no longer use a custom script (`morea-run-local.sh`). Instead, you use the standard Jekyll command `bundle exec jekyll serve`.

6. To publish a Morea 3 site, you no longer use a special script (`morea-publish.sh`). Instead, you just commit your changes and push your repository to GitHub. Morea 3 uses GitHub Actions to automatically build and publish the site whenever there is a commit to the main branch in GitHub.

5. Morea 3 is (finally!) cross-platform: there should be no significant differences between development on MacOS, Linux, and Windows platforms.

Astute Morea users will also observe that https://morea-framework.github.io has been reimplemented using Docusaurus.  This will make documentation easier to maintain.

### Migrating your V2 content to V3.0

Instructors who have existing Morea V2 sites for a course taught in a prior semester and who wish to build a new Morea site for a future semester will need to migrate their content.  Here are the issues that have been discovered with this migration:

In Morea 3, Assessments are no longer "page fragments" (like Outcomes), but rather their own page. This leads to several breaking changes:

* The morea_summary field is now required for Assessment pages.
* The URL for interior linking to an Assessment page has changed. Please see [this page](/docs/instructors/linking-in-morea).

Morea 3 updates JSChart from Version 1 to Version 3. As a result:

* Pages that embed JSChart graphs must be updated to the JSChart 3 API. For example, see the [example Morea assessment page](https://morea-framework.github.io/morea/morea/example-javascript/assessment-javascript-1.html).

Morea 3 updates Bootstrap from Version 3 to Version 5. As a result:

* Pages that embed Bootstrap CSS and HTML must be updated to Bootstrap Version 5.


### Getting started with 3.0

If you are a current user of Morea, please read the Getting Started section of the Instructor Guide and try building a new site using your old Morea files.  If you run into problems, please create an issue or send an email so we can address it.

A list of known issues and desired enhancements for Morea 3.0 is available at [https://github.com/morea-framework/morea/issues](https://github.com/morea-framework/morea/issues).

Have fun and let us know if you run into problems.
