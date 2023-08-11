# Simple repro of panick

## Repro steps 

```bash
foundryup -v nightly-3fec8c1ca1b2dcb0497469ddfbc21713815b37c8
```

```bash
forge test --sender=0x0000000000000000000000000000000000000001
```

## Output

```
forge test --sender=0x0000000000000000000000000000000000000001                                    
[⠒] Compiling...
[⠘] Compiling 1 files with 0.8.17
[⠊] Solc 0.8.17 finished in 605.37ms
Compiler run successful!
The application panicked (crashed).
Message:  called `Option::unwrap()` on a `None` value
Location: /home/runner/.cargo/git/checkouts/revm-bf744d8ffabcbad9/bc4d203/crates/revm/src/evm_impl.rs:267

This is a bug. Consider reporting it at https://github.com/foundry-rs/foundry

Backtrace omitted. Run with RUST_BACKTRACE=1 environment variable to display it.
Run with RUST_BACKTRACE=full to include source snippets.
[1]    88835 IOT instruction (core dumped)  forge test --sender=0x0000000000000000000000000000000000000001
```