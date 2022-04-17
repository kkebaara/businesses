import { Route, Switch }  from "react-router-dom";

import {useEffect, useState} from 'react'
import BusinessContainer from './BusinessContainer'
import BusinessForm from './BusinessForm'
import Navigation from './Navigation'
import BusinessDetail from './BusinessDetail'
import FavoritesContainer from "./FavoritesContainer";
import Auth from './Auth'
import Login from './Login'

function App() {
  const [businesses, setBusinesses] = useState([])
  const [errors, setErrors] = useState(false)


  const [isAuthenticated, setIsAuthenticated] = useState(false);
  const [user, setUser] = useState(null);

  useEffect(() => {
    fetch("/authorized_user")
    .then((res) => {
      if(res.ok) {
        res.json()
        .then((user) => {
          setIsAuthenticated(true);
          setUser(user);
        })
        .then(()=> {
          fetch('/businesses')
          .then(res => res.json())
          .then(businesses => {
            console.log(businesses)
            setBusinesses(businesses)
          });
        })
      }
    });

    

   

  },[]);

  function handlePost(obj){
      fetch('/businesses',{
        method:'POST',
        headers: {'Content-Type': 'application/json'},
        body:JSON.stringify(obj)
      })
      .then(res => {
        if(res.ok){
          res.json()
          .then(json =>  {
            setBusinesses([...businesses,json])
          })
        } else {
          res.json()
          .then(json => {
          setErrors(Object.entries(json.errors))
          })
        }
      })
  }

  if (!isAuthenticated) return <Login error={'please login'} setIsAuthenticated={setIsAuthenticated} setUser={setUser} />;

  return (
    <>
    <Navigation setIsAuthenticated={setIsAuthenticated} setUser={setUser} user={user}/>
    <Switch>
    <Route exact path="/">
      <BusinessContainer businesses={businesses}/>
    </Route>
    <Route exact path="/businesses/new">
      <BusinessForm handlePost={handlePost} errors={errors} />
    </Route>
    <Route exact path="/businesses/:id">
        <BusinessDetail />
    </Route>
        <Route exact path="/favorites">
        <FavoritesContainer />
    </Route>

    <Route path="/sign_up">
          <Auth />
    </Route>
    <Route path="/login">
          <Login />
    </Route>
    </Switch>
    </>
  );
}

///<Route path="/favorites" element={<FavoritesContainer />} />

export default App;
