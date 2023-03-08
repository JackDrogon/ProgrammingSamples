#!/usr/bin/env ts-node-script

let numbers: number[] = [1, 2, 3];
// let numbers: Array<number> = [1, 2, 3];
for (const num in numbers) {
    console.log(num)
}