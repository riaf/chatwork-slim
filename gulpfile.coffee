gulp = require "gulp"
sass = require "gulp-sass"

paths =
  sass: "src"
  dest: "dest"

gulp.task "sass", ->
  gulp.src "#{ paths.sass }/styles.scss"
    .pipe sass
      outputStyle: "compressed"
    .pipe gulp.dest "#{ paths.dest }"

gulp.task "watch", ->
  gulp.watch "#{ paths.sass }/**/*.scss", ["sass"]

gulp.task "default", ["sass"]
