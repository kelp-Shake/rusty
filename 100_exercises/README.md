# 100 Exercises to Learn Rust

Working through [100 Exercises to Learn Rust](https://rust-exercises.com/100-exercises/)
(source: <https://github.com/mainmatter/100-exercises-to-learn-rust>).

## Layout

The course clone lives **outside this repo**, as its own independent git
repo, at:

```
~/Documents/typing/100-exercises-to-learn-rust/
```

It's not nested inside `rusty/` and not tracked by this repo at all — it's
disposable, delete it whenever the course is done. `wr` (the course's test
runner) needs to be run from inside a git repo whose root is the folder
holding `.wr.toml`, which is why it can't live nested inside this repo.

| Path | Tracked (in `rusty`)? | Notes |
|---|---|---|
| `~/Documents/typing/100-exercises-to-learn-rust/` | No — separate repo | Do the exercises + run `wr` here. |
| `100_exercises/solutions/` (this repo) | Yes | My finished work, mirroring the course's exercise paths. |

## Workflow

1. Do the exercise in
   `~/Documents/typing/100-exercises-to-learn-rust/exercises/<chapter>/<exercise>/src/lib.rs`.
   Run tests with `wr` from that repo's root, or `cargo test` from the exercise dir.
2. Once its tests pass, copy that `lib.rs` into this repo's `solutions/` at
   the matching path, e.g.

   ```bash
   mkdir -p 100_exercises/solutions/03_ticket_v1/01_struct
   cp ~/Documents/typing/100-exercises-to-learn-rust/exercises/03_ticket_v1/01_struct/src/lib.rs \
      100_exercises/solutions/03_ticket_v1/01_struct/lib.rs
   ```
3. Commit: `git add 100_exercises/solutions && git commit -m "100 exercises: 03_ticket_v1/01_struct"`

## Setup (fresh machine)

```bash
git clone https://github.com/mainmatter/100-exercises-to-learn-rust.git \
  ~/Documents/typing/100-exercises-to-learn-rust
cargo install --locked workshop-runner   # installs the `wr` binary globally
cd ~/Documents/typing/100-exercises-to-learn-rust && wr
```
