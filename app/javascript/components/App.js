import React, { Component, Fragment } from 'react'
import * as axios from 'axios'
import { shuffleQuotes } from '../helpers/array'

class App extends Component {
  state = {
    quotes: [],
    selectedQuote: {},
  }

  componentDidMount() {
    axios.get('/api/v1/quotes')
      .then(({ data: { data } }) => {
        this.setState(() => {
          const selectedQuote = shuffleQuotes(data)
          return { quotes: data, selectedQuote }
        })
      })
  }

  onNewQuoteClick = () => {
    const { quotes, selectedQuote } = this.state
    const quotesToBeShuffled = quotes.filter(quote => 
      quote.attributes.content != selectedQuote.attributes.content
    )

    this.setState({ selectedQuote: shuffleQuotes(quotesToBeShuffled) })
  }

  renderContentBody = () => {
    const { quotes, selectedQuote } = this.state
    if (quotes.length === 0) {
      return <p>And then there were zero quotes.</p>
    }

    return (
      <Fragment>
        <p>
          <span>“</span>
          <span>{selectedQuote.attributes.content}</span>
          <span>”</span>
        </p>
        <p>{selectedQuote.attributes.originator.data.attributes.name}</p>
        <button onClick={this.onNewQuoteClick}>New Quote</button>
      </Fragment>
    )
  }

  render() {
    return (
      <div className="container">
        <h1>Thine Quotes</h1>
        <div className="quote-container">
          {this.renderContentBody()}
        </div>
      </div>
    )
  }
}

export default App
