<template lang="pug">
.navSection(class='{section.id}' class:expand='{$isActive(section.href)}')
  .bg(use:flip='{$activeSection}')
  a(href='{section.href}' use:flip='{$activeSection}')
    h2 { section.title }
  p(use:flip='{$activeSection}') {section.subtitle }
</template>

<script lang="coffee">
import { isActive, url } from '@sveltech/routify'
import { activeSection } from  '../../stores/root.coffee'
import flip from '../../plugins/flip.coffee'

export section = null
export action = null
</script>

<style lang="sass">
.navSection
  min-width: var(--navSection-width)
  position: relative
  height: 100%
  display: flex
  justify-content: center
  align-items: center
  flex-direction: column
  p
    opacity: 1
    transition: opacity .5s ease-in-out .5s
.bg
  width: 100%
  height: 100%
  position: absolute
  z-index: -1
  background: var(--base)
.expand
  min-width: 100vw
  p
    opacity: 0
    transition: opacity .5s ease-in-out
  a
    position: absolute
    bottom: 0
    left: 0
    transform: scale(2)
</style>