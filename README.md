<details> 
  <summary><h2>Carousel Slider for Flutter Web</h2></summary>

# Carousel Slider for Flutter Web

A Flutter web implementation of Carousel Slider widget. This package enables developers to easily integrate a carousel slider into their Flutter web applications.

  <details> 
  <summary><h2>📽️Video</h2></summary>
  <p>
    <table align="center">
  <tr>
    <video src ="https://github.com/Aayush014/media_player_example/assets/133498952/b2020a72-a289-4817-99fa-133d9c542dee"></video> </h1>
  </tr>
    </table>   
  </p>
  </details>

## Features

- **Responsive Design:** The carousel slider adapts to various screen sizes, ensuring a consistent user experience across devices.
- **Customization:** Customize the carousel slider with options for slide width, height, animation duration, autoplay, and more.
- **Support for Touch Gestures:** Users can swipe through slides with ease, enhancing the interactive experience.
- **Infinite Loop:** Carousel slider seamlessly loops through slides, providing continuous content consumption.
- **Support for Web:** Specifically tailored for Flutter web projects, ensuring compatibility and optimized performance.

## Installation

Add `carousel_slider` to your `pubspec.yaml` file:

```yaml
dependencies:
  flutter:
    sdk: flutter
  carousel_slider: ^3.0.0
```
Then, import the package:
```dart
import 'package:carousel_slider/carousel_slider.dart';
```

For detailed instructions on how to install and use the package, refer to the [documentation](https://pub.dev/packages/carousel_slider).
# Usage
```dart
CarouselSlider(
  items: [
    // List of widgets (e.g., Image.network, Container, etc.)
  ],
  options: CarouselOptions(
    aspectRatio: 16/9,
    autoPlay: true,
    enlargeCenterPage: true,
    viewportFraction: 0.8,
  ),
);
```
For more advanced usage and customization options, please refer to the [example](https://pub.dev/packages/carousel_slider/example) provided.

## Contributing

Contributions are welcome! If you have any ideas, suggestions, or issues, feel free to open an issue or create a pull request.

1. **Fork the repository**
2. **Create your feature branch** (`git checkout -b feature/YourFeature`)
3. **Commit your changes** (`git commit -m 'Add some feature'`)
4. **Push to the branch** (`git push origin feature/YourFeature`)
5. **Open a pull request**

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
</details>
