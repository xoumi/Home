<template lang="pug">
h2 
  a(href='{section.href}') { section.title }
p { section.subtitle }
</template>

<script lang="coffee">
import flip from '../../plugins/flip.coffee'
export section = null
console.log section
</script>

<style lang="sass">

</style>