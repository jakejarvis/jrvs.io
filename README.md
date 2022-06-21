# [jrvs.io](https://jrvs.io/) 🔗

Personal link shortener powered by [@kentcdodds](https://kentcdodds.com/)'s clever [`netlify-shortener`](https://github.com/kentcdodds/netlify-shortener) (but deployed on [Cloudflare Pages](https://pages.cloudflare.com/)).

## Usage

### View existing shortcodes:

[See `_redirects`.](_redirects)

### Create a new shortcode:

```bash
npm run shorten https://github.com/jakejarvis gh
```

or:

```bash
npm link   # run once to set up
shorten https://github.com/jakejarvis gh
```

## License

MIT
