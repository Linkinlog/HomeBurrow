import Layout from '../components/Layout'
import type { AppProps } from 'next/app'
import '../styles/output.css'

function MyApp({ children }) {
  return (
    <>
      <Layout>
        {children}
      </Layout>
    </>
  )
}

export default MyApp
 