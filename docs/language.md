# Language

## The problem
Most screen readers can read text in several languages and allow users to choose their default language during setup. When your HTML doesn't have a specified `lang`, this default option kicks in, and if there's a mismatch the user might hear the wrong accent or improper pronunciation, making the text incomprehensible.

Adding a `lang` attribute to your HTML is an easy fix that helps render the text more accurately, load the correct pronunciation rules, and show video captions correctly. It's also part of the minimum requirements under the Web Content Accessibility Guidelines (WCAG).

## Language in Rails
Every app generated with `rails new` creates a few default HTML files that may or may not have a defined `lang` attribute. It's a good idea to check `application.html.erb`, generated error pages, and any mailer layouts.

If you've implemented internationalization to translate your app into multiple languages, you can use I18n in your HTML and set the language dynamically. For example, you could do: `lang="<%= I18n.default_locale %>"`.

## Examples

### Good
### Bad

[Home](https://metamoni.github.io/a11y-on-rails/)
