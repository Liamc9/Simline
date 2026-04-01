# Simline

Simline is now scaffolded as an Expo / React Native app that recreates the current Flutter flow:

- a short branded welcome screen
- the rugby lineout simulator screen
- formation selection, formation types, playback, reset, and speed controls

## Stack

- Expo SDK 55
- React 19.2
- React Native 0.83
- TypeScript

## Getting Started

1. Install Node.js 20.19 or newer.
2. Install dependencies:

```bash
npm install
```

3. Start the Expo development server:

```bash
npx expo start
```

Useful shortcuts:

- `npm run android`
- `npm run ios`
- `npm run web`

## Project Layout

- `App.tsx` bootstraps the splash-to-home flow
- `src/screens/` contains the welcome and simulator screens
- `src/components/` contains the reusable UI pieces
- `src/constants/` contains colors and simulator presets
- `src/utils/toast.ts` contains a lightweight React Native toast helper

## Notes

- The legacy Flutter/Dart files are still present in the repo for reference during migration.
- `node` and `npm` were not available in the current workspace, so the Expo app could not be installed or run here yet.
