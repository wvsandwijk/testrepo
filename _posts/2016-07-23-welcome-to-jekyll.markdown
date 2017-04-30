---
layout: post
title:  "Welcome to Jekyll!"
date:   2017-04-30 
categories: jekyll update1
---
Some post with code

{% highlight ruby %}
$Bios     = Get-WmiObject -Class win32_bios -ComputerName $machines | select PSComputername,
                                                                             SMBIOSBIOSVersion,
                                                                             @{name='BiosVersion';expression={"$($_.SMBIOSMajorVersion).$($_.SMBIOSMinorVersion)"}},
                                                                             Manufacturer,
                                                                             Version
{% endhighlight %}

Check out the [Jekyll docs][jekyll-docs] for more info on how to get the most out of Jekyll. File all bugs/feature requests at [Jekyll's GitHub repo][jekyll-gh]. If you have questions, you can ask them on [Jekyll Talk][jekyll-talk].

[jekyll-docs]: http://jekyllrb.com/docs/home
[jekyll-gh]:   https://github.com/wvsandwijk
[jekyll-talk]: https://talk.jekyllrb.com/
