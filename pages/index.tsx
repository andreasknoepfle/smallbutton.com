import React from 'react';
import Layout from '../components/layout';

export default () => (
  <Layout>
    <article className="mw7 center ph3 ph5-ns tc pt4">
      <h1 className="fw3 f3 mt0 mb3 ttu tracked">
        andreas kn&ouml;pfle
      </h1>
      <h2 className="fw2 f5 mt0 courier">
        smallbutton.com
      </h2>
      <div className="pa4">
        <img src="me.png" alt="me" className="w4 bb bw2 b--gold" />
      </div>
      <p className="lh-copy mb5 tj mh3">
        <span className="f4">
          Hi, I&apos;m
          <code>@andreasknoepfle</code>
        </span>
        ,
        I am a ruby, elixir & JS dev currently working at
        {' '}
        <a className="link underline-hover dark-red" href="https://bitcrowd.net">bitcrowd GmbH</a>
        {' '}
        in Berlin.
        I also like to travel, climb, cycle, going on the slackline,
        photography, playing boardgames and pen & paper RPGs and all
        kinds of other things.
      </p>
    </article>
  </Layout>
);
