@echo off
title Hash Finder
rem This is a very simple tool I made to speed up making a Sileo repo.
echo Just type your file name with extension, e.g. test.deb, here (must be in this folder)
set /p "hashme= >> "
CertUtil -hashfile %hashme% MD5 | clip
echo MD5sum copied to clipboard.
pause
CertUtil -hashfile %hashme% SHA1 | clip
echo SHA1 copied to clipboard.
pause
CertUtil -hashfile %hashme% SHA256 | clip
echo SHA256 copied to clipboard.
pause