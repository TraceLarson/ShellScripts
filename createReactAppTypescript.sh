echo "Enter Name of Project:"
read ProjectName

npx create-react-app $ProjectName
cd $ProjectName

yarn add typescript @types/node @types/react @types/react-dom @types/jest

mv src/index.js src/index.tsx
mv src/App.js src/App.tsx

echo "
{
  \"compilerOptions\": {
    \"sourceMap\": true,
    \"noImplicitAny\": true,
    \"module\": \"esnext\",
    \"target\": \"es5\",
    \"jsx\": \"react\",
    \"lib\": [
      \"dom\",
      \"dom.iterable\",
      \"esnext\"
    ],
    \"allowJs\": true,
    \"skipLibCheck\": true,
    \"esModuleInterop\": true,
    \"allowSyntheticDefaultImports\": true,
    \"strict\": true,
    \"forceConsistentCasingInFileNames\": true,
    \"moduleResolution\": \"node\",
    \"resolveJsonModule\": true,
    \"isolatedModules\": true,
    \"noEmit\": true
  },
  \"include\": [
    \"./src/**/*\"
  ]
}
" >> tsconfig.json

echo "

module.exports = {
  entry: [
    path.join(process.cwd(), 'src/app.tsx'), // or whatever the path of your root file is
  ]
  module: {
    rules:[{ test: /\.tsx?$/, loader: 'awesome-typescript-loader' }], // other loader configuration goes in the array
    resolve: {extensions: ['.js', '.jsx', '.react.js', '.ts', '.tsx']} 
  }
}


" >> webpack.js

yarn start
code .