# AI Assistant - Ứng dụng Trợ lý AI với Gemini

Ứng dụng Android trợ lý AI sử dụng Flutter, Material Design 3 và Gemini API.

## Tính năng

- 🎨 Giao diện Material Design 3
- 🤖 Tích hợp Gemini API cho trợ lý AI
- 🎤 Nhập liệu bằng giọng nói
- ⚡ Quick Settings Tile để mở nhanh
- 🔗 Android App Shortcuts
- 💬 Lịch sử chat với Markdown support
- 🌙 Chế độ Dark/Light tự động

## Yêu cầu

- Flutter SDK 3.24.0 hoặc mới hơn
- Android SDK với minSdkVersion 24+
- Gemini API Key từ Google AI Studio

## Cài đặt

### 1. Clone repository

```bash
git clone <repository-url>
cd ai_assistant
```

### 2. Cài đặt dependencies

```bash
flutter pub get
```

### 3. Lấy Gemini API Key

1. Truy cập [Google AI Studio](https://makersuite.google.com/app/apikey)
2. Tạo API key mới
3. Mở ứng dụng và nhập API key trong cài đặt

## Build APK với GitHub Actions

Dự án được cấu hình để tự động build APK khi push code lên GitHub:

1. Push code lên GitHub repository
2. GitHub Actions sẽ tự động build APK
3. Tải APK từ Artifacts hoặc Releases

## Build APK thủ công

```bash
# Build APK release
flutter build apk --release

# Build APK debug
flutter build apk --debug

# APK sẽ được tạo tại: build/app/outputs/flutter-apk/
```

## Sử dụng

### Mở ứng dụng qua Quick Settings

1. Vuốt từ trên xuống để mở Quick Settings
2. Thêm tile "AI Assistant"
3. Nhấn vào tile để mở ứng dụng

### Sử dụng App Shortcuts

- Nhấn giữ icon ứng dụng
- Chọn "Trợ lý AI" để mở nhanh

### Chat với AI

1. Mở ứng dụng
2. Cài đặt Gemini API Key (chỉ lần đầu)
3. Nhập tin nhắn hoặc sử dụng microphone
4. Nhấn "Gửi" để chat với AI

## Cấu trúc dự án

```
lib/
├── main.dart                    # Entry point
├── models/
│   └── message.dart            # Message model
├── screens/
│   └── chat_screen.dart        # Main chat interface
├── services/
│   └── gemini_service.dart     # Gemini API integration
└── widgets/
    └── message_bubble.dart     # Chat bubble widget

android/
└── app/
    └── src/main/
        ├── kotlin/             # Kotlin native code
        │   └── QuickSettingsTileService.kt
        └── res/
            └── xml/
                └── shortcuts.xml
```

## License

MIT License
