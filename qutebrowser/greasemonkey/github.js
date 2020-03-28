"use strict";

// ==UserScript==
// @name        Wide Github
// @namespace   github.com/xthexder/wide-github
// @description Change all Github repository and gist pages to be full width
//              and dynamically sized.
// @author      xthexder
// @copyright   2013+, xthexder (github.com/xthexder)
// @contributor Jason Frey (github.com/Fryguy)
// @contributor Marti Martz (github.com/Martii)
// @contributor Paul "Joey" Clark (github.com/joeytwiddle)
// @license     raw.githubusercontent.com/xthexder/wide-github/master/LICENSE
// @version     1.2.3
// @icon        raw.githubusercontent.com/xthexder/wide-github/master/icon.png
// @homepageURL github.com/xthexder/wide-github
// @supportURL  github.com/xthexder/wide-github/issues
// @include     *github.com*
// @grant       none
// ==/UserScript==

var styleSheet = "" +
    "header .container," +
    "header .container-lg {" +
    "max-width: none !important;" +
    "min-width: 980px;" +
    "}" +
    "#js-repo-pjax-container .container {" +
    "width: auto !important;" +
    "margin-left: 20px !important;" +
    "margin-right: 20px !important;" +
    "min-width: 980px;" +
    "}" +
    ".full-width .container {" +
    "padding-left: 0px !important;" +
    "padding-right: 0px !important;" +
    "}" +

    // New PR split diff
    ".full-width .new-pr-form {" +
    "max-width: none !important;" +
    "}" +

    // Repository Issues
    "#js-repo-pjax-container .repository-content .discussion-timeline {" + // Issue body
    "margin-left: -220px;" +
    "padding-left: 220px;" +
    "width: 100% !important;" +
    "}" +
    "#js-repo-pjax-container .repository-content .discussion-timeline::before {" + // The vertical line running through the commit list on PRs and issues
    "margin-left: 220px;" +
    "}" +
    ".repository-content .discussion-sidebar {" +
    "width: 200px !important;" +
    "}" +
    ".repository-content .timeline-new-comment {" + // New Issue / issue comment form
    "max-width: 100% !important;" +
    "}" +
    ".repository-content .inline-comments .comment-holder {" + // Diff / code comments
    "max-width: inherit !important;" +
    "}" +
    ".repository-content .inline-comments .inline-comment-form-container {" +
    "max-width: inherit !important;" +
    "}" +
    ".repository-content .inline-comments .inline-comment-form {" +
    "max-width: inherit !important;" +
    "}" +

    ".repository-content #all_commit_comments .commit-comments-heading," +
    ".repository-content #all_commit_comments .comment-holder {" +
    "max-width: inherit !important;" +
    "}" +

    // Repository pulse page
    ".repository-content .authors-and-code .section {" + // Contributors bar graph
    "width: 50%;" +
    "height: 180px;" +
    "}" +
    ".repository-content .authors-and-code .section svg {" +
    "height: 180px;" +
    "}" +

    // Repository graph page
    ".repository-content .capped-card {" + // Graph cards on contributors / graph list
    "margin:10px 10px 0 0 !important;" +
    "}" +

    // Gists
    ".gist-content-wrapper .container {" +
    "width: auto !important;" +
    "margin-left: 20px !important;" +
    "margin-right: 20px !important;" +
    "min-width: 980px;" +
    "}" +

    "";

var fun = function() {
    var s = document.createElement("style");
    s.type = "text/css";
    s.innerHTML = styleSheet;
    (document.head || document.documentElement).appendChild(s);
};
fun();
