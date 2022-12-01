<a name="readme-top"></a>

# 📗 Table of Contents

- [📖 About the Project](#about-project)
  - [🛠 Built With](#built-with)
    - [Tech Stack](#tech-stack)
    - [Key Features](#key-features)
  - [🚀 Live Demo](#live-demo)
- [💻 Getting Started](#getting-started)
  - [Setup](#setup)
  - [Prerequisites](#prerequisites)
  - [Install](#install)
  - [Run tests](#run-tests)
- [👥 Authors](#authors)
- [🔭 Future Features](#future-features)
- [🤝 Contributing](#contributing)
- [⭐️ Show your support](#support)
- [🙏 Acknowledgements](#acknowledgements)
- [❓ FAQ](#faq)
- [📝 License](#license)

<!-- PROJECT DESCRIPTION -->

# 📖 [Budget Tracker] <a name="about-project"></a>

> This is a RoR mobile app created for tracking your expenses in a organised manner.

- register and log in, so that the data is private to them.
- Add new transactions associated with a category.
- see the Expenses on each category.

## 🛠 Built With <a name="built-with"></a>

### Tech Stack <a name="tech-stack"></a>

> Describe the tech stack and include only the relevant sections that apply to your project.

<details>
  <summary>Language</summary>
  <ul>
    <li><a href="https://reactjs.org/">Ruby</a></li>
  </ul>
</details>

<details>
  <summary>Framework</summary>
  <ul>
    <li><a href="https://expressjs.com/">Rails</a></li>
  </ul>
</details>

<details>
<summary>Database</summary>
  <ul>
    <li><a href="https://www.postgresql.org/">PostgreSQL</a></li>
  </ul>
</details>

<!-- Features -->

### Key Features <a name="key-features"></a>

> Describe between 1-3 key features of the application.

- **[register and log in, so that the data is private to them]**
- **[introduce new transactions associated with a category.]**
- **[see the money spent on each category.]**

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- LIVE DEMO -->

## 🚀 Live Demo <a name="live-demo"></a>

> The app is deplyed using render.com services

- [Live Demo Link](https://mysite-the3.onrender.com/)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- GETTING STARTED -->

## 💻 Getting Started <a name="getting-started"></a>

> Describe how a new developer could make use of your project.

To get a local copy up and running, follow these steps.

### Prerequisites

In order to run this project you need:

- Ruby runtime environment.
  > If you dont have installed on your computer, you can download it from [here](https://www.ruby-lang.org/en/downloads/).
- PostgreSQL.
  > If you dont have PostgreSQL installed on your computer, you can download it from [here](https://www.postgresql.org/download/).
- Rails.
  > If you dont have Rails installed on your computer, you can download it from [here](https://rubyonrails.org/).

### Setup

If you have installed git you can clone the code to your machine, or download a ZIP of all the files directly.

Download the ZIP , or run the following git command to clone the files to your machine:

### Install

- Once the files are on your machine, open the blog-app folder in your code editor. Run the following command in your terminal to install the required gems and run the application:

Install gem packages with:

```bash
bundle install
```

- Open the `config/database.yml` file in the project directory and change the username and password to your PostgreSQL username and password. Edit the default section of the file to look like this:

```rb
 default: &default
  adapter: postgresql
  encoding: unicode
  pool: <%= ENV.fetch("RAILS_MAX_THREADS") { 5 } %>
  username: <your PostgreSQL role username>
  password: <your PostgreSQL role password>
```

- Create the database with:

```bash
rails db:create
```

- Run the migrations with:

```bash
rails db:migrate
```

- Finally, run the server with:

```bash
rails server
```


### Run tests

To run tests, run the following command:

```bash
rspec
```

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- AUTHORS -->

## 👥 Authors <a name="authors"></a>

> Mention all of the collaborators of this project.

👤 **Author1**

- GitHub: [@ishpaul777](https://github.com/ishpaul777)
- Twitter: [@ishpaul777](https://twitter.com/ishpaul777)
- LinkedIn: [LinkedIn](https://linkedin.com/in/ishpaul777)

<p align="right">(<a href="#readme-top">back to top</a>)</p>


## 🤝 Contributing <a name="contributing"></a>

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](../../issues/).

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- SUPPORT -->

## ⭐️ Show your support <a name="support"></a>

If you like this project give it a ⭐️!

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- ACKNOWLEDGEMENTS -->

## 🙏 Acknowledgments <a name="acknowledgements"></a>

I would like to thank Microverse for the idea of this project.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- LICENSE -->

## 📝 License <a name="license"></a>

This project is [MIT](./LICENSE) licensed.


<p align="right">(<a href="#readme-top">back to top</a>)</p>
