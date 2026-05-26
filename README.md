# C Project Template

A tiny, clean and minimal GNU/Linux-style C project template.

Designed for quickly spinning up small native utilities, Waybar modules,
CLI tools and personal system applications with a simple and predictable
development workflow.

---

## Features

- C23
- Simple Makefile build system
- User-local installation support
- Clean project structure
- No external dependencies
- GNU/Linux-friendly layout
- Fast compile/run/install workflow

---

## Project Structure

```text
.
├── Makefile
├── README.md
└── src/
    └── main.c
```

---

## Requirements

- C compiler (`cc`, `clang` or `gcc`)
- `make`
- GNU coreutils (`install`, `rm`, etc.)

---

## Build

```sh
make build
```

---

## Run

```sh
make run
```

---

## Install

Installs the executable into:

```text
~/.local/bin
```

Command:

```sh
make install
```

---

## Uninstall

```sh
make uninstall
```

---

## Clean Build Files

```sh
make clean
```

---

## Typical Workflow

```sh
make build
make run
make install
```

---

## Customization

The executable name can be changed from the `Makefile`:

```make
TARGET := my-app
```

---

## Example Use Cases

- Waybar custom modules
- Hyprland helper utilities
- Small terminal applications
- Personal Linux tooling
- Learning C and GNU/Linux development
- Quick system utilities

---

## License

MIT
