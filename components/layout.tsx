import React from 'react';
import { string, node } from 'prop-types';
import Head from 'next/head';
import 'tachyons';

import Footer from './footer';

const Layout = ({ children, title, description }) => (
  <>
    <Head>
      <title>{title}</title>
      <meta charSet="utf-8" />
      <meta name="viewport" content="initial-scale=1.0, width=device-width" />
      <meta httpEquiv="X-UA-Compatible" content="IE=edge,chrome=1" />
      <meta name="description" content={description} />
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
};

Layout.defaultProps = {
  title: 'smallbutton.com - @andreasknoepfle',
  description: 'Yet another code monkeys website.',
};

export default Layout;
