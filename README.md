# Syed Faysal Hossain Portfolio

Premium Flutter web portfolio using GetX, Material 3, responsive layouts, glassmorphism, animated sections, project filtering/search, theme switching, PWA metadata, SEO tags, GitHub/contact service hooks, and Clean Architecture-inspired folders.

## Run

```bash
flutter pub get
flutter run -d chrome
```

## Build

```bash
flutter build web --release --web-renderer canvaskit
```

Deploy `build/web` to Firebase Hosting, Vercel, Netlify, GitHub Pages, Cloudflare Pages, or any static host.

## Configure

- Edit constants in `lib/core/constants/app_constants.dart`.
- Replace project URLs in `lib/data/repositories/portfolio_repository.dart`.
- Connect EmailJS/backend in `lib/core/services/email_service.dart`.
- Add real PWA icons under `web/icons` before production deployment.
