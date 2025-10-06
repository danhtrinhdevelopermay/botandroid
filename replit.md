# AI Assistant - Flutter Android App

## Project Overview
Ứng dụng Android trợ lý AI sử dụng Flutter framework với tích hợp Gemini API. Ứng dụng có giao diện Material Design 3 và hỗ trợ kích hoạt nhanh qua Android shortcuts và Quick Settings tile.

## Tech Stack
- **Framework**: Flutter 3.24.0
- **Language**: Dart, Kotlin
- **UI**: Material Design 3
- **AI Engine**: Google Gemini API
- **Platform**: Android (minSdk 24)

## Key Features
1. Chat interface với Material Design 3
2. Gemini API integration cho AI responses
3. Voice input (Speech-to-Text)
4. Quick Settings Tile để mở nhanh
5. Android App Shortcuts
6. Local storage cho chat history
7. Dark/Light theme tự động
8. GitHub Actions auto-build APK

## Project Structure
- `lib/` - Flutter Dart code
  - `main.dart` - App entry point với Material Design 3 theme
  - `screens/chat_screen.dart` - Main chat UI
  - `services/gemini_service.dart` - Gemini API integration
  - `models/message.dart` - Message data model
  - `widgets/message_bubble.dart` - Chat bubble component
  
- `android/` - Android native code
  - `app/src/main/kotlin/` - Kotlin code cho Quick Settings Tile
  - `app/src/main/AndroidManifest.xml` - App configuration
  - `app/src/main/res/` - Android resources

- `.github/workflows/` - CI/CD configuration
  - `build.yml` - Auto-build APK workflow

## Build Instructions
Dự án này không thể build trực tiếp trên Replit vì yêu cầu Flutter SDK và Android SDK.

### Option 1: GitHub Actions (Recommended)
1. Push code lên GitHub repository
2. GitHub Actions tự động build APK
3. Download APK từ Actions artifacts hoặc Releases

### Option 2: Local Build
1. Install Flutter SDK
2. Run: `flutter pub get`
3. Run: `flutter build apk --release`
4. APK location: `build/app/outputs/flutter-apk/app-release.apk`

## API Key Requirements
- Gemini API Key (from Google AI Studio)
- User nhập API key trong app settings khi sử dụng lần đầu

## Recent Changes
- [2025-10-06] Initial project setup
- Created complete Flutter Android project structure
- Implemented Material Design 3 UI
- Added Gemini API integration
- Configured Quick Settings Tile
- Setup GitHub Actions workflow
