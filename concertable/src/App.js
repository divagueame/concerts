import './App.css';
import axios from "axios";
import Concerts from './components/concerts';
import { useEffect, useState} from 'react';

const API_URL = 'http://localhost:3000/api/v1/concerts';

function getAPIData(){
  console.log('API DATA!')
  return axios.get(API_URL).then((response)=> response.data)  
}
function App() {
  const [concerts, setConcerts]= useState([]);
  useEffect(()=>{
    let mounted = true;
    getAPIData().then((items)=>{
      if (mounted){
        setConcerts(items)
      }
    });
  return () => (mounted = false);
  }, []);
  
  
  return (
    <div className="App">
      <Concerts concerts={concerts} />
    </div>
  );
}

export default App;
