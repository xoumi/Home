<template lang="pug">
nav(style="--offset: {$activeSection == -1 ? 0 : $activeSection - 1}")
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
      title: node.meta.title
      subtitle: node.meta.subtitle
      id: node.meta.id
      index: node.meta.index
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
  justify-content: center
  height: 100vh
  width: 100vw
  position: absolute
  top: 0
  transform: translateX(calc(var(--navSection-width) * var(--offset) * -1))
</style>