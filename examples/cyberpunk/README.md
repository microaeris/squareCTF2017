Sprite Swap CTF

A girl wakes up in her pajamas. Please help her get dressed. She keeps her outfits stored in VRAM.
The rom is still pretty buggy and doesn't check for all of the ways to achieve the win condition properly...


CONTROLS
    Press A to advance the text.
    Use the directional arrows to walk around.
    Walk and hold A to run.


PUZZLE

    Game ROM: thumby.gb
        https://gist.github.com/Ahris/fd1c6f49c1b023bec5f11379556a418a

    Assembly with symbols: thumby.asm
        https://gist.github.com/Ahris/5e9d25bdc2412bafe2d889b7c3d9ec7b

    Source Code: thumby.c
        https://gist.github.com/Ahris/47f5dbcf82e52b43c3bfa021ccdfd9be


TOOLS
    These are the recommended tools to start tackling this puzzle:

    Recommended Debugger: BGB
        This is a Window's program. It also works with Wine.
        It has a really nice debugger and VRAM viewer, which
        is a good place to start reversing the ROM!
        http://bgb.bircd.org/

    Recommended Compiler: SDCC
        brew install sdcc

    Recommended GB toolchain: GBDK-n
        https://github.com/andreasjhkarlsson/gbdk-n


