@echo off
for %%i in (*.jpg) do (
  magick convert "%%i" -resize "1024x1024>" "%%i"
)
