<script lang="coffee">
  import { Router } from "@sveltech/routify";
  import { routes } from "../.routify/routes";
</script>

<template lang="pug">
Router({routes})
</template>

<style global lang="sass">
  @import 'index'
  
  #light, #dark
    width: 100vw
    height: 100vh
    overflow: hidden
    position: relative
    background: rgb(var(--base-ll))
</style>
