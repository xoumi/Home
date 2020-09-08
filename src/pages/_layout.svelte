<script lang="coffee">
  import RootNav from "../components/RootNav/index.svelte"
  import { theme } from '../stores/root.coffee'
</script>

<template lang="pug">
  div(id="root" class="{$theme}")
    RootNav
    .content
      slot
</template>

<style lang="sass">
  .content
    position: relative
</style>