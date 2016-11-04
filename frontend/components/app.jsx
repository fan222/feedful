import React from 'react';
import { Link } from 'react-router';
import SidebarContainer from './sidebar/sidebar_container';

const App = ({ children }) => (
  <div>
    <div>
      <SidebarContainer />
      <div className="tbd">
        {children}
      </div>
    </div>
  </div>
);

export default App;
