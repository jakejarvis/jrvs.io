# 🔗 [jrvs.io](https://jrvs.io/)

[![Netlify Status](https://api.netlify.com/api/v1/badges/6c1d7761-137b-40e8-b93a-1f6b06430e38/deploy-status)](https://app.netlify.com/sites/jrvs/deploys)

Personal link shortener powered by Netlify and a caveman-esque shell script.

## Usage

### Create a new shortlink

```bash
./short.sh https://github.com/jakejarvis git
```

🪄 [https://jrvs.io/git](https://jrvs.io/git) now points to [https://github.com/jakejarvis](https://github.com/jakejarvis)!

#### Shell function

Adding this function to `.bashrc`, `.zshrc`, etc. lets us run `short` from anywhere.

```bash
short() {
  # parentheses let us cd to this directory without changing our current working directory
  ( cd <LOCAL_PATH_TO_THIS_REPO> && bash -c "./short.sh $*" )
}
```

### View existing shortlinks

See [`src/_redirects`](src/_redirects).

## License

MIT
