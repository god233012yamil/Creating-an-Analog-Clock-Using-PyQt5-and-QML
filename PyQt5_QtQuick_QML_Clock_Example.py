from PyQt5.QtCore import QUrl
from PyQt5.QtGui import QGuiApplication
from PyQt5.QtQml import QQmlApplicationEngine
import os
import sys


def main():
    # Create a QGuiApplication. This is required for any Qt application
    app = QGuiApplication(sys.argv)

    # Create a QQmlApplicationEngine. This is required to load QML
    engine = QQmlApplicationEngine()

    # Get the current directory
    current_dir = os.path.dirname(os.path.realpath(__file__))

    # Create a QUrl from the QML file path
    qml_file = os.path.join(current_dir, 'QML_Clock4.qml')

    # Returns a QUrl representation of localFile, interpreted as a local file.
    url = QUrl.fromLocalFile(qml_file)

    # Load the QML file
    engine.load(url)

    # Check if the QML file was loaded correctly. If not, exit.
    if not engine.rootObjects():
        sys.exit(-1)

    # Execute the application
    sys.exit(app.exec_())


if __name__ == "__main__":
    main()
