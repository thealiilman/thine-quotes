import React, { Component } from 'react'

// https://stackoverflow.com/a/12646864/7485031
const shuffleQuotes = a => {
  for (let i = a.length - 1; i > 0; i--) {
    const j = Math.floor(Math.random() * (i + 1));
    [a[i], a[j]] = [a[j], a[i]];
  }
  return a;
}

class App extends Component {
  state = {
    quote: "'Cause we both, coincide, when the world's, wasting time.",
    author: 'Van McCann',
  }

  componentDidMount() {
    // this.fetchQuotes()
  }

  render() {
    const { quote, author } = this.state;

    return (
      <div className="container">
        <h1>Thine Quotes</h1>
        <div className="quote-container">
          <p id="quote">
            <span>“</span>
            <span>{quote}</span>
            <span>”</span>
          </p>
          <p id="author">{author}</p>
          <button onClick={this.onNewQuoteClick}>New Quote</button>
        </div>
      </div>
    )
  }
}

export default App
