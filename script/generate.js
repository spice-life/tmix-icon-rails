#!/usr/bin/env node
const {readFileSync} = require('fs')
const {resolve} = require('path')
const {URL} = require('url')
const host = process.argv[2]

const css = readFileSync(
  resolve(__dirname, '../app/assets/stylesheets/tmix-icon.css')
).toString().replace(/font-url\('([^\s]*)'\)/g, (_, path) => {
  const url = new URL(host)
  url.pathname = resolve(url.pathname, path)
  return `url('${url.toString()}')`
})

console.log(css)
