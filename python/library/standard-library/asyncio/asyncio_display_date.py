#!/usr/bin/env python3
# encoding: utf-8

import asyncio
import datetime

async def display_date():
    loop = asyncio.get_running_loop()
    end_time = loop.time() + 5.0
    while True:
        print(datetime.datetime.now())
        if loop.time() + 1.0 >= end_time:
            break
        await asyncio.sleep(1)

if __name__ == "__main__": asyncio.run(display_date())
