---
date = '{{ .Date }}'
draft = true
title = '{{ replace .File.ContentBaseName "-" " " | title }}'
slug: '{{ replace .File.ContentBaseName " " "-" | strings.ToLower }}'
---
