import React from "react";
import Layout from "../components/layout";

export default (): JSX.Element => (
  <Layout>
    <article className="mw7 center ph3 ph5-ns tc pt4">
      <h1 className="fw3 f3 mt0 mb3 ttu tracked">andreas kn&ouml;pfle</h1>
      <h2 className="fw2 f5 mt0 courier">smallbutton.com</h2>
      <div className="pa4">
        <img src="me.webp" alt="me" className="w4 bb bw2 b--gold" />
      </div>
      <p className="lh-copy mb2 tj mh3">
        <span className="f4">
          Hi, I&apos;m <code>@andreasknoepfle</code>
        </span>
        , I am a Elixir, Ruby & Javascript dev currently working at{" "}
        <a
          className="link underline-hover dark-red"
          href="https://bitcrowd.net"
        >
          bitcrowd GmbH
        </a>{" "}
        in Berlin where I work on various projects getting in touch with various
        tech stacks.
      </p>
      <p className="lh-copy mb1 tj mh3">
        I am living near{" "}
        <a
          className="link underline-hover dark-red"
          href="https://en.wikipedia.org/wiki/S%C3%B6lden,_Baden-W%C3%BCrttemberg"
        >
          Freiburg
        </a>{" "}
        with my family. I am also into:
        <ul className="tl mb3">
          <li>climbing 🧗,</li>
          <li>cycling 🚴,</li>
          <li>travelling 🎒,</li>
          <li>going on the slackline 🧘,</li>
          <li>acroyoga with my wife 🤸,</li>
          <li>photography 📷,</li>
          <li>playing boardgames 🎲, </li>
          <li>pen & paper RPGs 🐉</li>
          <li>and all kinds of other things...</li>
        </ul>
      </p>
    </article>
  </Layout>
);
