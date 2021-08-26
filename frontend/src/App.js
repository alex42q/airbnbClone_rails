import {BrowserRouter as Router, Switch, Route} from "react-router-dom"
import './App.css';

import Index from "./Pages/Index/Index"

function App() {
  return (
    <div className="App">
      <Router>
        <Switch>
          <Route exact path='/' component={Index} />
        </Switch>
      </Router>
    </div>
  );
}

export default App;
