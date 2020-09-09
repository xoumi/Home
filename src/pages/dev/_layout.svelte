<!-- routify:options title='Dev'-->
<!-- routify:options subtitle='Loggin\' n bloggin\''-->
<!-- routify:options id='dev'-->
<!-- routify:options index='0'-->
<template lang="pug">
main.dev(class:index='{isIndex}')
  .lineL(use:flip='{isIndex}')
  .lineR(use:flip='{isIndex}')
  slot 
</template>

<script lang="coffee">
import { page } from '@sveltech/routify'
import flip from '../../plugins/flip.coffee'

`$: isIndex = $page.__file.isIndex`
</script>

<style lang="sass">
  main
    position: relative
    height: 100%
    overflow: visible
    max-width: var(--post-maxWidth)
    margin: auto
    color: var(--i)
  .index
    max-width: var(--allPosts-maxWidth)
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
