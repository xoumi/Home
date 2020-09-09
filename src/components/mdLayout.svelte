<template lang="pug">
  article(data-simplebar)
    slot
</template>

<script lang="coffee">
  import 'simplebar'
</script>

<style global lang="sass">
  article
    height: 100%
    h1, h2, h3, h4, p, ul, ol
      padding-left: 48px
      padding-right: 48px
</style>
