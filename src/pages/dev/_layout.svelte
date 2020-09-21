<!-- routify:options title='Dev'-->
<!-- routify:options subtitle='Loggin\' n bloggin\''-->
<!-- routify:options id='dev'-->
<!-- routify:options index='0'-->

<template lang="pug">
main.dev(class:index='{isIndex}')
  Lines(trigger="{isIndex}" duration=.5)
  +if('$isChangingPage')
    h1.loading(transition:fade) LOADING PAGE
  slot(decorator='{BlogDecorator}') 
</template>

<script lang="coffee">
import { page, isChangingPage } from '@sveltech/routify'
import { fade } from 'svelte/transition';
import Lines from '../../components/dividerLinesContainer.svelte'
import BlogDecorator from '../../components/BlogDecorator.svelte'

delay = 320
isIndex = $page.__file.isIndex
changeTriggered = (trigger) ->
  setTimeout ( -> isIndex = trigger
  ), delay
`$:changeTriggered($page.__file.isIndex)`

</script>

<style lang="sass">
  main
    position: relative
    height: 100%
    overflow: visible
    max-width: var(--post-maxWidth)
    margin: auto
    color: rgb(var(--i))
  .index
    max-width: var(--allPosts-maxWidth)
  .loading
    position: absolute

</style>
