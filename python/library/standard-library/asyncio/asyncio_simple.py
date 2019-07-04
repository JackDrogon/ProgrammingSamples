#!/usr/bin/env python3
# encoding: utf-8

import asyncio


async def main():
    print('Hello ...')
    await asyncio.sleep(1)
    print('... World!')


if __name__ == "__main__":
    # Python 3.7+
    asyncio.run(main())
