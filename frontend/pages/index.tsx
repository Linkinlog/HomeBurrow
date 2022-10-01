import type { NextPage } from 'next'
import Head from 'next/head'
import Image from 'next/image'

const Home: NextPage = () => {
  return (
    <>
      <Head>
        <title>HomeBurrow - Dashboard</title>
        <meta name="description" content="HomeBurrow is an open-source home automation platform for the web." />
        <link rel="icon" href="/homeburrow.ico" />
      </Head>

      <section className='flex flex-row justify-between h-screen w-full'>    

          <nav className='bg-zinc-300 margin-0 w-1/5 flex flex-col justify-start items-center'>
            <h1 className='text-5xl self-start m-10'>User's System</h1>

            <section className='h-2/4 flex flex-col justify-evenly items-start'>
              <a href='#' className='text-3xl block'>Sensors</a>
              <a href='#' className='text-3xl block'>Ecosystem</a>
              <a href='#' className='text-3xl block'>Support</a>
            </section>

        </nav>

        <main className='flex flex-col items-start justify-around w-2/3'>

          <a href='#' className='fixed top-5 right-28 flex flex-row justify-start items-center w-12'>
            <h2 className='text-2xl'>User</h2>
            <img src='https://cdn-icons-png.flaticon.com/512/1946/1946429.png' className='ml-4' />
          </a>

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
          
        </main>
      </section>
    </>
  )
}

export default Home
