# Basic Setup

```
npm init -y
npm i express
npm i ejs
npm i mysql
npm i nodemon --save-dev
npm i dotenv --save
npx tailwindcss init
npm i -D tailwindcss@latest postcss@latest autoprefixer@latest
npm install -D @tailwindcss/typography
```

# tailwind.config.js

```js
/** @type {import('tailwindcss').Config} */
module.exports = {
  content: ["./views/**/*.ejs"],
  mode: "jit",
  theme: {
    extend: {
      backgroundImage: {
        "hero-pattern": "url('/image/blob_bg.png')",
        "footer-texture": "url('/img/footer-texture.png')",
      },
    },
  },
  plugins: [require("@tailwindcss/typography")],
};
```

# package.json

```json
  "scripts": {
    "dev": "nodemon index.js --watch views -e ejs algorithm-tailwind-express-ejs/index.js --exec \"npm run build\"",
    "initCss": "npx tailwindcss -i ./public/css/tailwind.css -o ./public/css/styles.css --watch",
    "build": "npx tailwindcss -i ./public/css/tailwind.css -o ./public/css/styles.css && nodemon index.js"
  },
```

## Run

```
npm run dev
```

## Build

```
npm run build
```

## Initalize TailwindCSS (NOT necessary)

```
npm run initCss
```
