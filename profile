import { StrictMode } from "react";
import { createRoot } from "react-dom/client";
import "./styles.css";

function App() {
  return (
    <div className="card">
      <Avatar />
      <div className="data">
        <Intro />
        <SkillList />
      </div>
    </div>
  );
}

function Avatar() {
  return <img className="avatar" src="poza.jpg" alt="Petras Kevin-Andrei" />;
}

function Intro() {
  return (
    <div className="intro">
      <h1>Petras Kevin-Andrei</h1>
      <p>
        Student at Ubb Cluj, profile: AI and currently studying React via Udemy
      </p>
    </div>
  );
}

function SkillList() {
  return (
    <div className="skills">
      <Skill name="HTML+CSS" emoji="💪" color="magenta" />
      <Skill name="JavaScript" emoji="🔥" color="yellow" />
      <Skill name="Git and GitHub" emoji="👍" color="red" />
      <Skill name="React" emoji="⚛️" color="lightblue" />
      <Skill name="C&C++" emoji="🔷" color="pink" /> {/* Added emoji */}
      <Skill name="Python" emoji="🐍" color="orange" /> {/* Added emoji */}
    </div>
  );
}

function Skill(props) {
  return (
    <span className="skill" style={{ backgroundColor: props.color }}>
      <span>{props.skill}</span>
      <span>{props.emoji}</span>
    </span>
  );
}

const rootElement = document.getElementById("root");
const root = createRoot(rootElement);

root.render(
  <StrictMode>
    <App />
  </StrictMode>
);
