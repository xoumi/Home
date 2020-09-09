import HMR from '@sveltech/routify/hmr'
import { theme } from './stores/root.coffee'
import { get } from 'svelte/store';
import App from './App.svelte';

const app = HMR(App, { target: document.body }, get(theme))

export default app;