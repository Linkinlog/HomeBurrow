import Layout from '../components/Layout'
import type { NextPage } from 'next'
import Head from 'next/head'

const Home: NextPage = () => {
  return (
    <>
      <Head>
        <title>HomeBurrow - Dashboard</title>
        <meta name="description" content="HomeBurrow is an open-source home automation platform for the web." />
        <link rel="icon" href="/homeburrow.ico" />
      </Head>

      <Layout>
        <section className='w-1/5 ml-28 h-2/5 flex flex-col justify-evenly pl-4 shrink'>
          <h4 className='text-4xl'>Temperature Sensors</h4>

          <h5 className='text-3xl'>Sensor 1</h5>
          <p>Brand:</p>
          <p>Model:</p>
          <p>Install Date:</p>
          <p>Current Status:</p>
        </section>

        <section className='w-1/5 ml-28 h-2/5 flex flex-col justify-evenly pl-4 shrink'>
          <h4 className='text-4xl'>Relay Switches</h4>

          <h5 className='text-3xl'>Sensor 1</h5>
          <p>Brand:</p>
          <p>Model:</p>
          <p>Install Date:</p>
          <p>Current Status:</p>
        </section>
      </Layout>

    </>
  )
}

export default Home
