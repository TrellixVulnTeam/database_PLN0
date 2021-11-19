import axios from 'axios';
import { useState, useEffect } from 'react';

const Register = ({ userID, password, setRegisterStr }) => {

  useEffect(() => {
    axios.post('http://127.0.0.1:8000/api/signup', {         //某種function，傳入使用者帳密進入資料庫中，並確認是否有重複使用者ID(假設回傳一個字串)
      "username": userID,
      "password": password
    })
    .then((res) => { 
      setRegisterStr(res.data)
    })
    .catch((error) => { console.log(error) })
  },[])

  return <>
  </>
}

export default Register