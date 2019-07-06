#!/usr/bin/env python3
# encoding: utf-8

import asyncio
import time

async def say_after(delay, what):
    await asyncio.sleep(delay)
    print(what)

async def main():
    print(f"started at {time.strftime('%X')}")

    await say_after(1, 'hello')
    await say_after(2, 'world')

    # 3 seconds
    print(f"finished at {time.strftime('%X')}")

if __name__ == "__main__": asyncio.run(main())
