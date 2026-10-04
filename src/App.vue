<script setup lang="ts">
import { ref } from "vue"

const note = ref("")
const saved = ref("")

function saveNote() {
  saved.value = note.value.trim()
}
</script>

<template>
  <main class="shell">
    <section class="card">
      <p class="eyebrow">NOTE</p>
      <h1>Capture an idea.</h1>
      <p class="intro">A minimal foundation for the Note application.</p>

      <textarea
        v-model="note"
        aria-label="Note"
        placeholder="Write something..."
        rows="8"
      />

      <div class="actions">
        <button type="button" @click="saveNote">Save note</button>
        <span v-if="saved">Saved ✓</span>
      </div>
    </section>
  </main>
</template>
