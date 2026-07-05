# Deployment Guide

## 1. Local Setup

```bash
flutter pub get
flutter run -d chrome
```

## 2. Production Build

```bash
flutter build web --release
```

The deployable files are generated in `build/web`.

## 3. Firebase Hosting

```bash
npm install -g firebase-tools
firebase login
firebase init hosting
# public directory: build/web
# single-page app rewrite: yes
flutter build web --release
firebase deploy
```

## 4. Vercel or Netlify

Use these settings:

- Build command: `flutter build web --release`
- Publish directory: `build/web`

For SPA routing, add a rewrite from all paths to `/index.html`.

## 5. Production Checklist

- Replace placeholder resume, social, GitHub, and demo links in `lib/core/constants/app_constants.dart` and repository dummy data.
- Add real PWA icons under `web/icons`.
- Add a real profile image and project screenshots.
- Connect `EmailService.endpoint` to EmailJS or your backend contact API.
- Update SEO URLs and Open Graph image metadata in `web/index.html`.
