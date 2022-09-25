import type { NextPage } from 'next'
import Head from 'next/head'
import Image from 'next/image'

const Home: NextPage = () => {
  return (
    <div>
      <Head>
        <title>HomeBurrow - Dashboard</title>
        <meta name="description" content="HomeBurrow is an open-source home automation platform for the web." />
        <link rel="icon" href="/favicon.ico" />
      </Head>
        
      <nav>
        <h1>User's System</h1>
        <article>
          <h3>Temperature Sensors</h3>
          <a href='#'>Sensor 1</a>
          <a href='#'>Sensor 2</a>
          <a href='#'>Sensor 3</a>
        </article>
        <article>
          <h3>Relay Switches</h3>
          <a href='#'>Sensor 1</a>
          <a href='#'>Sensor 2</a>
          <a href='#'>Sensor 3</a>
        </article>
      </nav>


      // Clickable profile page
      <a href='#'>
        <h2>User</h2>
        <img src='#' />
      </a>

      // Display when selected from left menu only
      <section>
        <h4>Temperature Sensors</h4>

        // Loop for each existing sensor
        <h5>Sensor 1</h5>
        <p>Brand:</p>
        <p>Model:</p>
        <p>Install Date:</p>
        <p>Current Status:</p>
      </section>

      // Display when selected from left menu only
      <section>
        <h4>Relay Switches</h4>

        // Loop for each existing sensor
        <h5>Sensor 1</h5>
        <p>Brand:</p>
        <p>Model:</p>
        <p>Install Date:</p>
        <p>Current Status:</p>
      </section>
      
    </div>
  )
}

export default Home
