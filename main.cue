package note

project: {
  name: "note"
  version: "1.0.0"
  framework: "vue"
  language: "typescript"
  buildSystem: "vite"
  entry: "./src/main.ts"
}

development: {
  hotReload: true
  port: 5173
}

build: {
  command: "vite build"
  output: "dist"
}

typecheck: {
  command: "vue-tsc --noEmit"
}

dependencies: {
  "vue": "^3.5.22"
}

devDependencies: {
  "@vitejs/plugin-vue": "^6.0.1"
  "typescript": "^5.9.3"
  "vite": "^7.1.7"
  "vue-tsc": "^3.1.0"
}
