#!/usr/bin/env python3
# encoding: utf-8

import asyncio


async def tcp_echo_client(message):
    reader, writer = await asyncio.open_connection("127.0.0.1", 8800)

    print(f'Send: {message!r}')
    writer.write(message.encode())

    data = await reader.read(100)
    print(f'Received: {data.decode()!r}')

    print('Close the connection')
    writer.close()
    # AttributeError: 'StreamReader' object has no attribute 'close'
    # reader.close()


def main():
    asyncio.run(tcp_echo_client('Hello, World!\n'))


if __name__ == "__main__":
    main()
