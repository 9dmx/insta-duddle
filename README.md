# flash.draw

> Automated drawing assistant powered by computer vision and automation

A Python-based application that automates the drawing process by capturing canvas coordinates and reproducing images programmatically.

## Features

✨ **Core Capabilities**
- 🎯 Canvas calibration via manual click-based setup
- 🖼️ Automatic image loading and processing
- 🎨 Brush thickness adjustment
- ⏸️ Pause/resume functionality during drawing
- 🖱️ Keyboard shortcuts for quick control

✨ **Technical Highlights**
- Computer vision-based UI element detection
- Real-time mouse and keyboard input handling
- Configurable drawing parameters
- Console output monitoring

## Quick Start

### Prerequisites
- Python 3.7+
- Windows OS (primary support)

### Installation & Launch

**Option 1: One-Click Launch (Recommended)**
```bash
run.bat
```
Double-click `run.bat` and the app will:
1. Install all dependencies automatically
2. Launch the application

**Option 2: Manual Setup**
```bash
pip install -r requirements.txt
python main.py
```

**Option 3: Python Runner**
```bash
python run.py
```

## Usage

### Step 1: Calibrate Canvas
1. Click **"1. Calibrate Canvas"**
2. Click the top-left corner of your drawing area
3. Click the bottom-right corner of your drawing area
4. The app will save your canvas boundaries

### Step 2: Select Image
1. Click **"Select Image"**
2. Choose an image file to draw
3. The path will be displayed in the selection box

### Step 3: Start Drawing
1. Click **"2. Start Drawing"**
2. The app will automatically reproduce the image
3. Press **SPACE** to pause/resume
4. Press **Q** to stop and exit

## Configuration

Edit `config.json` to customize behavior:

```json
{
    "default_image_path": "images/test_image2.png",
    "drawing_speed": 0.0,
    "stop_key": "q",
    "pause_key": "space",
    "ui_confidence": 0.8,
    "draw_button_y_offset": 75,
    "thickness_adjust_y_offset": 20,
    "scale_margin": 0.9
}
```

| Parameter | Description |
|-----------|-------------|
| `drawing_speed` | Delay between strokes (seconds) |
| `stop_key` | Key to stop drawing |
| `pause_key` | Key to pause/resume |
| `ui_confidence` | Confidence threshold for UI detection (0.0-1.0) |

## File Structure

```
flash.draw/
├── main.py                          # Main application
├── image_processor.py               # Image processing module
├── config.json                      # Configuration file
├── requirements.txt                 # Python dependencies
├── run.bat                          # One-click launcher (Windows)
├── run.py                           # Python launcher
├── icon.ico                         # Application icon
├── plus_icon.png                    # UI element
├── thickness_slider_handle.png      # UI element
├── thickness_slider_handle_alt.png  # UI element
└── images/                          # Sample images directory
```

## Requirements

- keyboard
- mouse
- numpy
- opencv-python
- PyAutoGUI
- colorama
- ttkbootstrap

All installed automatically via `requirements.txt`

## Keyboard Shortcuts

| Key | Action |
|-----|--------|
| **Q** | Stop drawing and exit |
| **SPACE** | Pause/Resume drawing |

## Troubleshooting

**Icons not found?**
- Ensure all `.png` files are in the same directory as `main.py`
- Check that paths in `config.json` are correct

**UI detection failing?**
- Adjust `ui_confidence` in `config.json` (lower = more lenient)
- Ensure the application UI is visible and unobstructed

**Drawing inaccurate?**
- Recalibrate the canvas
- Check image resolution matches canvas size
- Adjust `drawing_speed` for stability

## License

Made with ❤ by flash

## Support

For issues and questions, please check the configuration and ensure all dependencies are properly installed.

---

**Ready to draw?** Double-click `run.bat` and get started! 🎨
