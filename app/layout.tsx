import type { Metadata } from 'next';
import './globals.css';
export const metadata: Metadata = {title:'Entre Nós | Mais perto, todos os dias',description:'Uma experiência de conexão, romance e descoberta para casais adultos.'};
export default function RootLayout({children}:{children:React.ReactNode}) {return <html lang="pt"><body>{children}</body></html>}
