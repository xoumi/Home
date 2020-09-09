<template lang="pug">
  ul.posts
    +each('posts as post')
      li.post
        a.title.large(href="{post.href}") {post.title}
        p.summary.small {post.summary}
</template>

<script lang="coffee">
  import { layout } from '@sveltech/routify'
  getPosts = () ->
    $layout.parent.children[1..].map (post) -> {
      ...post.meta.frontmatter,
      href: post.path
    }
  posts = getPosts()
</script>

<style lang="sass">
.post
  padding: 24px 48px
  color: var(--i)
  .title
    display: block
    margin-bottom: 8px
</style>