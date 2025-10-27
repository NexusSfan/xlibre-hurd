#!/usr/bin/env python3
#SPDX-License-Identifier: CC0
import requests
import bs4

url = "http://ftp.ports.debian.org/debian-ports/pool-hurd-amd64/main/x/xserver-xorg-input-keyboard/"

r = requests.get(url)

html = bs4.BeautifulSoup(r.text, "lxml")

for link in html.find_all("a"):
    if link.get("href").startswith(f"{url}xserver-xorg-input-keyboard_"):
        print(link.get("href"))
        break