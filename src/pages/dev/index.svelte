<template lang="pug">
  ul.posts
    +each('posts as post')
      li.post
        .title
          a(href="{post.href}") {post.title}
          span.date.small {post.date}
        +if('post.summary')
          p.summary.small {post.summary}
</template>

<script lang="coffee">
  import { layout } from '@sveltech/routify'
  import { format } from 'date-fns'
  getPosts = () ->
    $layout.parent.children[1..].map (post) -> 
      jsDate = new Date post.meta.frontmatter.date
      getDateFormat =  ->
        if jsDate.getFullYear() - new Date().getFullYear() isnt 0
          "do LLL, yy'''"
        else 'do LLL'
      {
        ...post.meta.frontmatter,
        date: format jsDate, getDateFormat()
        href: post.path,
      }
  posts = getPosts()
</script>

<style lang="sass">
.posts
  padding-top: 40px
.post
  padding: 16px 12px 12px
  color: rgb(var(--i))
  border-bottom: 1.5px dashed rgb(var(--ll))
  transition: background .5s
  &:hover
    background: rgba(var(--ll), .5)
    transition: background 0s
  .title
    display: flex
    align-items: center
    padding-bottom: 4px

  .date
    color: rgba(var(--i), .8)
    margin: 0 10px
    
  .summary
    color: rgba(var(--i), .8)
</style>