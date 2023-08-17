---
title: "Admonitions/Callouts"
published: true
morea_id: example-admonitions
morea_type: experience
morea_summary: "Example page illustrating Admonitions / Callouts"
morea_sort_order: 6
---

# Admonitions (Call outs)

Admonitions, otherwise known as "call outs", are a very useful documentation pattern. In Morea, you can create admonitions in a few different ways by combining Bootstrap alerts, font awesome icons, and markdown. Here are a few examples to get you started. 

The approach below involves the following:

  1. Create a div with the Bootstrap alert class, and decide what kind of alert (warning, danger, etc.) The alert type sets the background color (danger is red, success is green, etc.) 
  2. Set markdown equal to "1" (so that the interior of the div is parsed as markdown), 
  3. Use a font awesome icon appropriate to the type of admonition. If you don't like the ones I use below, find your own at the [Font Awesome Icon Search Page](https://fontawesome.com/search?).
  4. Make a bold faced title with a horizontal line underneath.
  5. Add the body text as markdown underneath.

## Danger

Here's one way to produce a "danger" admonition, which is in red.

<hr/>
```html
<div class="alert alert-danger" role="alert" markdown="1">
<i class="fa-solid fa-circle-exclamation fa-xl"></i> **Danger: the following is not recommended.**
<hr/>

You really don't want to do the following:
  * Stay up too late.
  * Get up too early.
  * Drink coffee after lunch. 
</div>
```
<hr/>

Which looks like this:

<div class="alert alert-danger" role="alert" markdown="1">
<i class="fa-solid fa-circle-exclamation fa-xl"></i> **Danger: the following is not recommended.**
<hr/>

You really don't want to do the following:
  * Stay up too late.
  * Get up too early.
  * Drink coffee after lunch.
</div>

## Warning

Less troublesome is a "warning", which is in yellow.

<hr/>
```html
<div class="alert alert-danger" role="alert" markdown="1">
<i class="fa-solid fa-circle-exclamation fa-xl"></i> **Danger: the following is not recommended.**
<hr/>

You really don't want to do the following:
  * Stay up too late.
  * Get up too early.
  * Drink coffee after lunch.
</div>
```
<hr/>

Which looks like this:

<div class="alert alert-warning" role="alert" markdown="1">
<i class="fa-solid fa-triangle-exclamation fa-xl"></i> **Warning: the following is not recommended.**
<hr/>

Unless you know better, you might want to avoid the following:
  * Stay up too late.
  * Get up too early.
  * Drink coffee after lunch.
</div>

## Success

To convey something positive, you can use the success alert, which is green:

<hr/>
```html
<div class="alert alert-success" role="alert" markdown="1">
<i class="fa-solid fa-circle-check fa-xl"></i> **Well done!**
<hr/>

You did everthing right!
  * Went to bed early.
  * Got up late.
  * Switched to water after lunch.
</div>
```
<hr/>

Which looks like this:

<div class="alert alert-success" role="alert" markdown="1">
<i class="fa-solid fa-circle-check fa-xl"></i> **Well done!**
<hr/>

You did everthing right!
  * Went to bed early.
  * Got up late.
  * Switched to water after lunch.
</div>

## Info

Red, yellow, and green have connotations. A blue background is less judgemental:

<hr/>
```html
<div class="alert alert-info" role="alert" markdown="1">
<i class="fa-solid fa-circle-info fa-xl"></i> **For more information**
<hr/>

For more information, see the [Font Awesome Icon Search Page](https://fontawesome.com/search?)
</div>
```
<hr/>

Which looks like this:

<div class="alert alert-info" role="alert" markdown="1">
<i class="fa-solid fa-circle-info fa-xl"></i> **For more information**
<hr/>

For more information, see the [Font Awesome Icon Search Page](https://fontawesome.com/search?)
</div>

## Others

For the complete set of Bootstrap alert types, see [Bootstrap Alert Documentation](https://getbootstrap.com/docs/5.2/components/alerts/#content).
