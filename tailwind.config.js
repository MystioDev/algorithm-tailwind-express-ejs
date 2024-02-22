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
  plugins: [
    require("@tailwindcss/typography"),
    require('tailwindcss-animated')
  ],
};
