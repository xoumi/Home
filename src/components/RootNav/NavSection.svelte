<template lang="pug">
.navSection
  h2 
    a(href='{section.href}') { section.title }
  p { section.subtitle }
</template>

<script lang="coffee">
import flip from '../../plugins/flip.coffee'
import { theme } from '../../stores/root.coffee'

export section = null
</script>

<style lang="sass">
.navSection
  width: var(--navSection-width)
  display: flex
  justify-content: center
  align-items: center
  flex-direction: column
</style>