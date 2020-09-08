<template lang="pug">
nav(style="--offset: {$activeSection}")
  +each('sections as section')
    NavSection({section})
</template>

<script lang="coffee">
import { layout, route } from '@sveltech/routify'
import { activeSection } from '../../stores/root.coffee'
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
</script>

<style lang="sass">
  nav
    display: flex
    position: absolute
    width: 100%
    height: 100vh
    transform: translateX(calc(var(--navSection-width) * var(--offset) * -1))
</style>