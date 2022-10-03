import Link from 'next/link'

export default function Sidebar() {
  return (
    <nav className='bg-zinc-300 margin-0 w-1/5 flex flex-col justify-start items-center'>
      <h1 className='text-5xl self-start m-10'>User's System</h1>
      
      <section className='h-2/4 flex flex-col justify-evenly items-start'>
        <a href='#' className='text-3xl block'>Sensors</a>
        <a href='#' className='text-3xl block'>Ecosystem</a>
        <a href='#' className='text-3xl block'>Support</a>
      </section>
    </nav>

  )
}