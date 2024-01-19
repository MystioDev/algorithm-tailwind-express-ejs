# Basic Setup
```
npm init -y
npm i express
npm i ejs
npm i nodemon --save-dev
npm i -D tailwindcss@latest postcss@latest autoprefixer@latest
```

# TailwindCSS
```
npx tailwindcss init
```

```json
/** @type {import('tailwindcss').Config} */
module.exports = {
  content: ["./views/**/*.ejs"],
  mode: "jit",
  theme: {
    extend: {},
  },
  plugins: [],
};
```

# Nodemon
```json
  "scripts": {
    "dev": "nodemon index.js --watch views -e ejs algorithm-tailwind-express-ejs/index.js --exec \"npm run build\"",
    "initCss": "npx tailwindcss -i ./public/css/tailwind.css -o ./public/css/styles.css --watch",
    "build": "npx tailwindcss -i ./public/css/tailwind.css -o ./public/css/styles.css && nodemon index.js"
  },
```
