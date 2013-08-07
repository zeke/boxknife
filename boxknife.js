#! /usr/bin/env node

require ('shelljs/global')
var fs = require ('fs')
var semver = require('semver')

var baseDir = process.argv[2] || process.env.PWD
var versions = []

var files = find(baseDir).filter(function(file) {
  return file.match(/package\.json$/);
});

for (var i in files) {
  var file = files[i]
  var pkg = JSON.parse(fs.readFileSync(file))
  if (pkg && pkg.engines && pkg.engines.node) {
    versions.push(pkg.engines.node)
  }
}

console.log(versions)

// var fixedVersions = versions.filter(function(version) {
//   return !version.match(/>/)
// });

