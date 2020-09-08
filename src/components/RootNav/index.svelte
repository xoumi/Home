<template lang="pug">
nav
  +each('sections as section')
    NavSection({section})
</template>

<script lang="coffee">
  import { layout } from '@sveltech/routify'
  import NavSection from './NavSection.svelte'
  getSections = (layout) ->
    layout.children[1..]
      .map (node) -> {
        ...node.children[0].meta.frontmatter,
        href: node.path
      }
      .sort (n1, n2) ->
        if n1.index < n2.index then return -1
        if n1.index > n2.index then return 1
        else return 0

  sections = getSections $layout
  # console.log $layout
</script>

<style lang="sass">
  nav
    display: flex
    position: absolute
    width: 100vw
    height: 100vh
    overflow: hidden
</style>