const { src, dest, parallel, series, watch } = require('gulp');
const sass = require('gulp-sass')(require('sass'))
const less=require('gulp-less');
const cleanCSS = require('gulp-clean-css')
const uglify = require('gulp-uglify')
const concat = require('gulp-concat')
const autoprefixer = require('gulp-autoprefixer')
const htmlmin = require('gulp-htmlmin')
const include = require('gulp-file-include')
const newer = require('gulp-newer');
const browsersync = require('browser-sync').create()
const del = require('del')

const paths = {
   html: {
      src: ['src/*.html', '!src/pages/**/_*.html'],
      dest: 'assets/dist/'
   },
   styles: {
      src: [
         'src/styles/**/*.sass',
         'src/styles/**/*.scss',
         'src/styles/**/*.css',
         'src/styles/**/*.less',
         'node_modules/slick-carousel/slick/slick.css'],
      dest: 'assets/dist/css/'
   },
   scripts: {
      src: [
         'node_modules/jquery/dist/jquery.min.js',
         'node_modules/gsap/dist/gsap.min.js',
         'node_modules/slick-carousel/slick/slick.js',
         'src/js/**/*.js'],
      dest: 'assets/dist/js/'
   },
   imgage: {
      src: 'src/img/**/*',
      dest: 'assets/dist/img/'
   },
   font:{
      src: 'src/font/**/*',
      dest: 'assets/dist/font/'
   },
   music:{
      src: 'src/music/**/*',
      dest: 'assets/dist/music/'
   }
}

function clean() {
   return del(['dist/*', '!dist/img', '!dist/css/normalize.css'])
}

function html() {
   return src(paths.html.src)
      .pipe(include())
      .pipe(htmlmin({ collapseWhitespace: true }))
      .pipe(dest(paths.html.dest))
      .pipe(browsersync.stream())
}

function styles() {
   return src(paths.styles.src)
      // .pipe(sass().on('error', sass.logError))
      .pipe(less())
      .pipe(autoprefixer({
         cascade: false
      }))
      .pipe(concat('style.min.css'))
      .pipe(cleanCSS({
         level: 2
      }))
      .pipe(dest(paths.styles.dest))
      .pipe(browsersync.stream())
}


function scripts() {
   return src(paths.scripts.src)
      .pipe(uglify())
      .pipe(concat('index.min.js'))
      .pipe(dest(paths.scripts.dest))
      .pipe(browsersync.stream())
}

function images() {
   return src(paths.imgage.src) 
      .pipe(newer(paths.imgage.dest))// Берём все изображения из папки источника
      .pipe(dest(paths.imgage.dest)) // Выгружаем оптимизированные изображения в папку назначения
      .pipe(browsersync.stream())
}

function font() {
   return src(paths.font.src) 
      .pipe(dest(paths.font.dest)) // Выгружаем оптимизированные изображения в папку назначения
      .pipe(browsersync.stream())
}

function music() {
   return src(paths.music.src) 
      .pipe(dest(paths.music.dest)) // Выгружаем оптимизированные изображения в папку назначения
      .pipe(browsersync.stream())
}



function startwatch() {
   browsersync.init({
      server: {
         baseDir: "assets/dist"
      }
   })
   watch(paths.html.dest).on('change', browsersync.reload)
   watch('src/pages/**/_*.html', html)
   watch(paths.html.src, html)
   watch(paths.styles.src, styles)
   watch(paths.scripts.src, scripts)
   watch(paths.imgage.src,images);
}

exports.clean = clean
exports.html = html
exports.styles = styles
exports.scripts = scripts
exports.font = font
exports.music = music
exports.startwatch = startwatch

// Таск, который выполняется по команде gulp
exports.default = series(clean, html, parallel(styles, scripts,images,font,music), startwatch)