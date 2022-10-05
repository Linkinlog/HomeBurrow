import Layout from '../components/Layout'
import type { AppProps } from 'next/app'
import '../styles/output.css'

function MyApp({children}:{children:any}) {
  return (
    <>
      <Layout>
        {children}
      </Layout>
    </>
  )
}

export default MyApp
 