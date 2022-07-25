# @skynexui/responsive_stylesheet

[<img width="150px" src="https://www.datocms-assets.com/31049/1618983297-powered-by-vercel.svg" />](https://vercel.com/?utm_source=skynexui&utm_campaign=oss)

![Downloads](https://img.shields.io/npm/dw/@skynexui/responsive_stylesheet?color=orange) ![Current Version](https://img.shields.io/npm/v/@skynexui/responsive_stylesheet?color=green&label=version&cache=1) [![Flutter Package](https://img.shields.io/badge/skynexui__responsive__stylesheet-fluttter-blue)](https://pub.dev/packages/skynexui_responsive_stylesheet) [![NPM Package](https://img.shields.io/badge/@skynexui/responsive__stylesheet-npm-red)](https://www.npmjs.com/package/@skynexui/responsive_stylesheet)

It's a set of common utility strategies to work with responsive styles with CSS in JS and Flutter

## Summary
- Dart/Flutter
- JavaScript/React

## JavaScript/React
### parseStyleSheet()

```sh
import { parseStyleSheet } from '@skynexui/responsive_stylesheet';

parseStyleSheet({
  backgroundColor: 'xs'
});
```
- Result:
```sh
Object {
  "@media (min-width: 0px)": Object {
    "backgroundColor": "red",
  },
  "@media (min-width: 768px)": Object {
    "backgroundColor": "black",
  },
}
```

## Dart/Flutter

- ...
