# icons in flutter

Ways to manage icons in Flutter:

1. Compile SVGs using `vector_graphics_compiler` and use them as assets:

To compile SVGs to a friendly format for Flutter:
- dart run vector_graphics_compiler --input-dir assets/icons --out-dir assets/vec/
- dart run spider build (to regenerate "Vectors" if you added new svgs)

2. Compile SVGs to icon fonts using `icon_font_generator` or other tools:

To compile SVGs to an icon font:
- dart run icon_font_generator:generator assets/icons assets/iconfont/AppIcons.otf --font-name AppIcons --class-name AppIcons -r -v --no-normalize -o lib/icons/app_icons.dart
- dart run spider build (to regenerate "AppIcons" if you added new svgs)

3. Use `flutter_svg` to render SVGs directly:

- Use SvgPicture to render SVGs directly.
- dart run spider build (to regenerate "SVGs" if you added new svgs)

It parses the SVG at runtime, in a different isolate and copies the resulting Picture to the main isolate (NOT EFFICIENT). Does the same as the first option but at runtime.