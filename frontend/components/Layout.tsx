import Nav from './Nav'
import Profile from './Profile'

const Layout = ({ children }) => {
  return (
    <>
    <section className='flex flex-row justify-between h-screen w-full'>  
        <Nav />
        <main className='flex flex-col items-start justify-around w-2/3'>
            <Profile />
            {children}
        </main>
    </section>
    </>
  )
}

export default Layout