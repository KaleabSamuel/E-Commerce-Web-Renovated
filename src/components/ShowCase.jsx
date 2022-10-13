import { useState, useEffect, useContext, useRef } from "react";
import Beauty1 from "../images/beauty1.jpg";
import Beauty2 from "../images/beauty2.jpg";
import Beauty3 from "../images/beauty3.jpg";
import Beauty4 from "../images/beauty4.jpg";
import Cloth1 from "../images/cloth1.jpg";
import Cloth2 from "../images/cloth2.jpg";
import Cloth3 from "../images/cloth3.jpg";
import Cloth4 from "../images/cloth4.jpg";
import Elec1 from "../images/elec1.jpg";
import Elec2 from "../images/elec2.jpg";
import Elec3 from "../images/elec3.jpg";
import Elec4 from "../images/elec4.jpg";

const ShowCase = ({ value }) => {
  let showcase = useRef();
  let images = [
    "../images/beauty1.jpg",
    "../images/beauty2.jpg",
    "../images/beauty3.jpg",
    "../images/beauty4.jpg",
    "../images/cloth1.jpg",
    "../images/cloth2.jpg",
    "../images/cloth3.jpg",
    "../images/cloth4.jpg",
    "../images/elec1.jpg",
    "../images/elec2.jpg",
    "../images/elec3.jpg",
    "../images/elec4.jpg",
  ];
  let current = 0;

  useEffect(() => {
    const timer = setInterval(() => sliderFun(1), 2000);
    return () => clearInterval(timer);
  }, []);

  const sliderFun = (n) => {
    current += n;
    if (current > value.length - 1) current = 0;
    else {
      if (current < 0) current = value.length - 1;
    }
    showcase.current.style.backgroundImage = `url(${value[current].thumbnail})`;
  };

  return (
    <div
      ref={showcase}
      className="container show-case"
      style={{
        width: "1000px",
        height: "700px",
        backgroundPosition: "center",
        backgroundRepeat: "no-repeat",
        backgroundSize: "60%",
        borderRadius: "30px",
        transition: "all 1s ease-in",
        marginTop: "30px",
        marginBottom: "30px",
        // backgroundImage: `url(../images/iphone9.jpg)`
      }}
    ></div>
  );
};

export default ShowCase;
