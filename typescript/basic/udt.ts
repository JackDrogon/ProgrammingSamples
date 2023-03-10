#!/usr/bin/env ts-node-script

class Site {
    name(): void {
        console.log("site name");
    }
}

var site = new Site();
site.name();