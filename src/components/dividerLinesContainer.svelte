<template lang="pug">
.lines
  .lineL(use:flip='{trigger}')
  .lineR(use:flip='{trigger}')
</template>

<script lang="coffee">
import flip from '../plugins/flip.coffee'
export trigger = null
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
  background: var(--ll)
  content: ''
.lineL
  left: 0
.lineR
  right: 0
</style>