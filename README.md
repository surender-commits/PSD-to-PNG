# PSD to PNG

A lightweight Windows utility that adds a **"To PNG"** option to the right-click menu for Photoshop (.PSD) files, allowing instant conversion to PNG using ImageMagick.

Perfect for designers and content creators who need transparent PNG exports without opening Adobe Photoshop.

---

## Features

* Convert PSD files directly from Windows Explorer
* Preserve transparency in exported PNG files
* High-quality PNG output
* Output saved alongside the original PSD
* Lightweight and portable
* No Photoshop required
* No internet connection required

---

## Project Structure

```text
PSD-to-PNG/
│
├── Add To PNG.reg
├── Remove To PNG.reg
│
└── C/
    └── PSD to PNG/
        │
        ├── psd-to-png.bat
        │
        └── ImageMagick/*.*
```

---

## Installation

### Step 1

Copy the project folder to:

```text
C:\PSD to PNG\
```

Required structure:

```text
C:\PSD to PNG\
│
├── psd-to-png.bat
│
└── ImageMagick\*.*
```

### Step 2

Run:

```text
Add To PNG.reg
```

### Step 3

Accept the Windows Registry prompt.

### Step 4

Right-click any PSD file.

You should now see:

```text
To PNG
```

in the context menu.

---

## Usage

1. Locate a PSD file.
2. Right-click the file.
3. Click:

```text
To PNG
```

4. Wait for the conversion to complete.
5. The PNG file will be created in the same folder.

### Example

```text
Logo.psd
    ↓
Logo.png
```

---

## How It Works

```text
PSD File
    ↓
Context Menu
    ↓
Batch Script
    ↓
ImageMagick
    ↓
PNG Output
```

The script:

1. Receives the selected PSD file.
2. Loads the first PSD layer/artboard.
3. Preserves transparency.
4. Converts the image to PNG.
5. Saves the output in the same folder.

---

## Conversion Settings

```text
magick.exe input.psd[0] ^
-define png:color-type=6 ^
-quality 100 ^
output.png
```

| Setting       | Value               |
| ------------- | ------------------- |
| Color Type    | RGBA (Transparency) |
| Quality       | 100                 |
| Layer Used    | First PSD Layer     |
| Output Format | PNG                 |

---

## Requirements

* Windows 10 or Windows 11
* ImageMagick (included in the project)
* PSD files

---

## Uninstallation

Run:

```text
Remove To PNG.reg
```

Then delete:

```text
C:\PSD to PNG\
```
