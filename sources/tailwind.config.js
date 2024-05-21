/** @type {import('tailwindcss').Config} */
module.exports = {
    content: [
        "./resources/**/*.blade.php",
        "./resources/**/*.js",
        "./resources/**/*.vue",
        "./node_modules/flowbite/**/*.js"
    ],
    theme: {
        screens: {
            'sm': '480px',
            'md': '768px',
            '2md': '950px',
            'lg': '1024px',
            'xl': '1280px',
            '2xl': '1536px',
        },
        extend: {
            colors: {
                'gray-125': '#F0F1F4',
                'gray-150': '#ECEEF1',
            },
        },
    },
    plugins: [
        require('flowbite/plugin')
    ],
    darkMode: 'class',
}
