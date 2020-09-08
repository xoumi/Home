import { writable } from 'svelte/store'

createThemeStore = ->
  store = writable('light')
  return
    subscribe: store.subscribe
    setLight: () => store.update (n) => 'light'
    setDark: () => store.update (n) => 'dark'
    toggle: () => store.update (n) =>
      if n is 'dark' then 'light' else 'dark'

export theme = createThemeStore()