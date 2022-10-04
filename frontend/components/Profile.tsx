import Link from 'next/link'

export default function Profile() {
  return (
    <a href='#' className='fixed top-5 right-28 flex flex-row justify-start items-center w-12'>
        <h2 className='text-2xl'>Profile</h2>
        <img src='https://cdn-icons-png.flaticon.com/512/1946/1946429.png' className='ml-4' />
    </a>
  )
}