# DirToOsz
## osu! Beatmap Compressor

This repository contains a bash script to automatically compress osu! beatmaps into `.osz` compressed files. This script simplifies the process of creating compressed files for beatmaps, allowing users to quickly and easily organize their beatmap collections.

### How it works

The script prompts the user to input the path to the directory containing the beatmaps to be compressed. It then creates a new directory named `osuLazerBeatmap` in the current user's home directory. It then traverses all subdirectories within the user-specified directory and creates a `.osz` compressed file for each subdirectory. The name of the compressed file corresponds to the name of the subdirectory.

### Requirements

- Linux operating system
- Bash (Bourne Again SHell)
- osu! game installed on the system
- A collection of beatmaps to compress

### How to use the script

1. Ensure that Bash is installed on your system.
2. Make sure the osu! game is installed on your system.
3. Download the `compress_beatmaps.sh` bash script from the repository.
4. Run the script and follow the prompts to input the path to the directory containing the beatmaps.

### Contributions

We welcome contributions and suggestions for improving the script. If you have ideas for new features or enhancements, feel free to submit a pull request.
