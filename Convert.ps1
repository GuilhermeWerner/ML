#!/usr/bin/env pwsh

$images = Get-ChildItem -Path "./Cap47/dataset_dino"  -Filter '*.jpg' -Recurse

foreach ($image in  $images) {
    $path = $image.Directory
    $name = $image.BaseName
    Copy-Item -Path "$path/$name.jpg" -Destination "$path/$name.png" -Recurse -Force
}
