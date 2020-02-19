#!/usr/bin/env python3
# encoding: utf-8


def main():
    bugs = ['bug 1', 'bug 2', 'bug 3']
    while bugs:
        bug = bugs.pop(0)
        print(f"Fixing {bug}.")
    print("All bugs fixed.")


if __name__ == "__main__":
    main()
