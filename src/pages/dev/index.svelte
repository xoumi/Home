<template lang="pug">
  .posts.dev
    +each('posts as post')
      .post
        a(href="{post.href}")
          p.large {post.title}
        p.small {post.summary}
</template>

<script lang="coffee">
  import { layout } from '@sveltech/routify'
  getPosts = () ->
    $layout.parent.children[1..].map (post) -> {
      ...post.meta.frontmatter,
      href: post.path
    }
  posts = getPosts()
  console.log {posts}
</script>

<style lang="sass">
.posts
  position: relative
  max-width: 700px
  margin: auto
.post
  margin: 20px
  color: var(--i)
</style>