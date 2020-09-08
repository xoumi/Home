import { route, isActive } from '@sveltech/routify'
import { writable, derived, get } from 'svelte/store'

createThemeStore = ->
  store = writable('light')
  return
    subscribe: store.subscribe
    setLight: () => store.update (n) => 'light'
    setDark: () => store.update (n) => 'dark'
    toggle: () => store.update (n) =>
      if n is 'dark' then 'light' else 'dark'
createActiveSectionStore= ->
  sections = ['/dev', '/works', '/about']
  store = derived  route, ($route) =>
    sections.indexOf sections.find (section) ->
      get(isActive)(section, false)

export theme = createThemeStore()
export activeSection = createActiveSectionStore()