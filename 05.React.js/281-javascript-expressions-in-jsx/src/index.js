import React from "react";
import ReactDOM from "react-dom";

const fName = "The";
const lName = "Ravage";

ReactDOM.render(
  <div>
    <h1>
      Hello {fName} {lName}!
    </h1>
    <p>My lucky number is {Math.floor(Math.random() * 10)}</p>
  </div>,
  document.getElementById("root")
);
