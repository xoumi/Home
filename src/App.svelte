<script lang="coffee">
  import { Router } from "@sveltech/routify";
  import { routes } from "../.routify/routes";
</script>

<template lang="pug">
Router({routes})
</template>

<style global lang="sass">
  @import "https://cdnjs.cloudflare.com/ajax/libs/prism/1.20.0/themes/prism-okaidia.min.css"
  @import 'reset'
  @import 'variables'
  @import 'typography'
  @import 'simplebar'
  
  #light, #dark
    width: 100vw
    height: 100vh
    overflow: hidden
    position: relative
    background: var(--base-ll)
</style>
