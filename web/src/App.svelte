<script lang="ts">
  import VisibilityProvider from './providers/VisibilityProvider.svelte';
  import { debugData } from './utils/debugData';
  import HUD from './components/HUD.svelte';

  debugData([
    {
      action: 'setVisible',
      data: true,
    },
  ]);
</script>

<head>
  <link rel="stylesheet" href="/src/global.css">
</head>

<main>
  <VisibilityProvider>
    <HUD />
  </VisibilityProvider>
</main>