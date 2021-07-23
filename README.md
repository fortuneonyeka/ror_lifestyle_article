# README
Lifestyle App with Ruby on Rails

This is an article based app featuring article categories, article posts, article votes, it is the ultimate hangout for luxury enthusiasts.

## Features

- User can log in only using the username
- User sees the homepage where the first row is the most voted article followed by all categories - listed with the most recent article's image and title
- User must Log in before submitting an article
- A user can see all articles under a category by clicking on the category
- Users can vote on each article.
- Users can further see the full detail of an article by clicking on view full [EXTRA Feature]

## Built With

- Ruby v2.7.2
- Ruby on Rails v6.1.0

## Live Demo

Check the live version demo [here]()

## Presentation Video
Check out the presentation video[here]()


# Homepage
![Homepage](assets/images/LifeStyleArticleHomePage.png)

# New Article's Page
![New article](assets/images/NewArticlePage.png)

# Article's Page
![Articles](asstes/images/LifeStyleArticlePage.png)

### Prerequisites

Ruby: 2.7.2
Rails: 6.1.0
Postgres: >=9.5

### Setup

Instal gems with:

```
bundle install
```

```
bundle exec rake webpacker:install
```

Setup database with:

```
   rails db:create
   rails db:migrate
```

### Usage

Start server with:

```
    rails server
```

Open `http://localhost:3000/` in your browser.

### Run tests

```
    rspec --format documentation
```

## Author

👤 **Fortunatus Onyeka**

- GitHub [fortuneonyeka](https://github.com/fortuneonyeka)
- Linkedin: [Fortunatus Ihedoro](https://www.linkedin.com/in/fortunatus-ihedoro/)



## 🤝 Contributing

Contributions, issues and feature requests are welcome!

Feel free to check the [issues page](issues/).

## Show your support

Give a ⭐️ if you like this project!