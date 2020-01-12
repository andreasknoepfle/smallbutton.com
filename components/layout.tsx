import React from 'react';
import { string, node } from 'prop-types';
import Head from 'next/head';
import 'tachyons';

import Footer from './footer';

const Layout = ({
  children,
  title,
  description,
  url,
  author,
}): JSX.Element => (
  <>
    <Head>
      <title>
        {`${title} - ${author}`}
      </title>
      <meta name="viewport" content="initial-scale=1.0, width=device-width" />
      <meta httpEquiv="X-UA-Compatible" content="IE=edge,chrome=1" />
      <meta name="description" content={description} />
      <link rel="canonical" href={url} />
      <meta property="og:type" content="website" />
      <meta property="og:title" content={`${title} - ${author}`} />
      <meta property="og:description" content={description} />
      <meta property="og:url" content={url} />
      <meta property="og:image" content={`${url}/logo.png`} />
      <meta name="twitter:card" content="summary" />
      <meta name="twitter:title" content={title} />
      <meta name="twitter:site" content={author} />
      <meta name="twitter:creator" content={author} />
      <meta name="twitter:description" content={description} />
      <meta name="twitter:image" content={`${url}/logo.webp`} />
      <style>{'body{opacity:0;}'}</style>
    </Head>
    <header className="dark-gray bg-gold center tc pt3 pb1">
      <div className="pa4 tc">
        <img src="logo.svg" className="h4 w4 dib" alt="Logo" />
      </div>
    </header>

    <main className="sans-serif">
      {children}
    </main>
    <Footer />
  </>
);

Layout.propTypes = {
  children: node.isRequired,
  title: string,
  description: string,
  url: string,
  author: string,
};

Layout.defaultProps = {
  title: 'smallbutton.com - Andreas Knöpfle',
  author: '@andreasknoepfle',
  description: 'Yet another code monkeys website.',
  url: 'https://smallbutton.com',
};

export default Layout;
