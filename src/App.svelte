<script lang="coffee">
  import { Router } from "@sveltech/routify";
  import { routes } from "../.routify/routes";
  import { theme } from './stores/root.coffee';
</script>

<template lang="pug">
  div(id="root" class="{$theme}")
    Router({routes})
</template>

<style global lang="sass">
  @import "https://cdnjs.cloudflare.com/ajax/libs/prism/1.20.0/themes/prism-okaidia.min.css"
  @import 'reset'
  @import 'variables'
  @import 'typography'
  @import 'simplebar'
  
  #root
    width: 100vw
    height: 100vh
    overflow: auto
    position: relative
</style>
