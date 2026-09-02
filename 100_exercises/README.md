# 100 Exercises to Learn Rust

Working through [100 Exercises to Learn Rust](https://rust-exercises.com/100-exercises/)
(source: <https://github.com/mainmatter/100-exercises-to-learn-rust>).

## Layout

| Path | Tracked? | Notes |
|---|---|---|
| `course/` | **No** (git-ignored) | The upstream clone. Edit exercises here, run `cargo test` / `wr` here. Delete the whole folder when the course is done. |
| `solutions/` | Yes | My finished work, mirroring the course's exercise paths. |

## Workflow

1. Do the exercise in `course/exercises/<chapter>/<exercise>/src/lib.rs`.
2. Once its tests pass, copy that `lib.rs` into `solutions/` at the matching path, e.g.

   ```bash
   mkdir -p solutions/03_ticket_v1/01_struct
   cp course/exercises/03_ticket_v1/01_struct/src/lib.rs \
      solutions/03_ticket_v1/01_struct/lib.rs
   ```
3. Commit: `git add 100_exercises/solutions && git commit -m "100 exercises: 03_ticket_v1/01_struct"`

## Setup (after a fresh checkout)

```bash
git clone https://github.com/mainmatter/100-exercises-to-learn-rust.git 100_exercises/course
```
