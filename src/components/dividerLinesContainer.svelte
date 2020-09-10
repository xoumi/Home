<template lang="pug">
.lines
  .lineL(use:flip='{{trigger, duration}}')
  .lineR(use:flip='{{trigger, duration}}')
</template>

<script lang="coffee">
import flip from '../plugins/flip.coffee'
export trigger = null
export duration = 1
</script>

<style lang="sass">
.lines
  height: 100%
  width: 100%
  position: absolute
  top: 0
  left: 0
  pointer-events: none
.lineL, .lineR
  width: var(--dividerLine-width)
  height: 100%
  position: absolute
  background: rgb(var(--ll))
  content: ''
.lineL
  left: 0
.lineR
  right: 0
</style>