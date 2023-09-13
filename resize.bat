@echo off
for %%i in (*.jpg) do (
  magick convert "%%i" -resize "2048x2048>" "%%i"
)
