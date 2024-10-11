# Creating an Analog Clock Using PyQt5 and QML

The project implements a beautiful analog clock implementation using PyQt5 and QML, demonstrating the integration of Python and QML for creating rich graphical applications.

![image](https://github.com/user-attachments/assets/fc9e1cfe-4179-4740-8e77-026c1b1056d1)

## Overview

This project showcases a classic analog clock with hour, minute, and second hands, implemented using PyQt5 for the application framework and QML for the user interface. The clock features a customizable face with sophisticated graphics and smooth hand movements.

## Features

- Real-time analog clock display
- Custom clock face design with background image
- Separate hour, minute, and second hands
- Smooth hand movements
- Scalable interface

## Requirements

- Python 3.x
- PyQt5
- Qt Quick (QML)

## Project Structure

```
project/
│
├── PyQt5_QtQuick_QML_Clock_Example.py    # Main Python application file
├── QML_Clock4.qml                        # QML interface definition
└── Images/                               # Image assets directory
    ├── background.png
    ├── clockface2.png
    ├── hour2.png
    ├── minute2.png
    └── second3.png
```

## Installation

1. Ensure Python 3.x is installed on your system
2. Install PyQt5:
   ```bash
   pip install PyQt5
   ```
3. Clone this repository:
   ```bash
   git clone [repository-url]
   ```

## Usage

Run the application using Python:

```bash
python PyQt5_QtQuick_QML_Clock_Example.py
```

## Technical Details

### Python Component (`PyQt5_QtQuick_QML_Clock_Example.py`)

The Python script serves as the application entry point and handles:
- QGuiApplication initialization
- QML engine setup
- QML file loading
- Application execution

### QML Component (`QML_Clock4.qml`)

The QML file defines the clock's visual structure and behavior:
- Clock face layout and styling
- Hand positioning and rotation
- Timer-based updates
- Image assets management

### Key Components

1. **Clock Face**: Uses layered images for the background and face
2. **Clock Hands**: 
   - Hour hand (30° rotation per hour)
   - Minute hand (6° rotation per minute)
   - Second hand (6° rotation per second)
3. **Center Cap**: Gradient-filled circle overlay
4. **Timer**: Updates hand positions every second

## Customization

The clock can be customized by:
1. Replacing image assets in the Images directory
2. Modifying dimensions in the QML file
3. Adjusting the update interval in the Timer component
4. Changing the window properties in the ApplicationWindow

## Implementation Details

### Hand Rotation Calculation

The rotation angles for the clock hands are calculated using the following formulas:
- Second hand: `seconds * 6` (360° / 60 seconds)
- Minute hand: `minutes * 6` (360° / 60 minutes)
- Hour hand: `(hours % 12) * 30` (360° / 12 hours)

### Image Scaling

Images are scaled using `PreserveAspectFit` to maintain proper proportions while fitting within the specified dimensions.

## Contributing

Contributions are welcome! Please feel free to submit pull requests, report bugs, or suggest features.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Version History

- 1.0.0: Initial release
