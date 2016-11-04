import React from 'react';
import {withRouter} from 'react-router';

class MiddlePage extends React.Component {
  constructor(props) {
    super(props);
  }

  componentDidUpdate(){
    if (!this.props.loggedIn){
      this.props.router.push('/');
    }
  }

  render() {
    return (
      <div className="middlepage">
        <h2>Welcome home</h2>
      </div>
    );
  }
}

export default withRouter(MiddlePage);
