<template lang="pug">
.navSection(class='{section.id}' class:expand='{$isActive(section.href)}')
  .bg(use:flip='{$activeSection}')
  a.h1(use:flip='{$activeSection}' href='{section.href}') { section.title }
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
  position: relative
  min-width: var(--navSection-width)
  height: 100%
  display: flex
  justify-content: center
  align-items: center
  flex-direction: column
  p
    opacity: 1
    transition: opacity .5s ease-in-out .5s
  a
    color: var(--i)
    transition: color .8s, opacity .8s
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
    top: -.2em
    left: -.1em
    font-size: 10rem
    color: var(--ll)
    opacity: .5
    pointer-events: none
</style>