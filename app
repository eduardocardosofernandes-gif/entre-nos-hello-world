import type { ReactNode } from "react";

export const metadata = {
  title: "Entre Nós — Hello World",
  description: "Primeiro teste do site Entre Nós",
};

export default function RootLayout({ children }: { children: ReactNode }) {
  return (
    <html lang="pt-PT">
      <body style={{ margin: 0 }}>{children}</body>
    </html>
  );
}

export default function Home() {
  return (
    <main style={{
      minHeight: "100vh", display: "flex", flexDirection: "column",
      justifyContent: "center", alignItems: "center", background: "#fff7f7",
      fontFamily: "Arial, sans-serif", textAlign: "center", padding: "24px",
      boxSizing: "border-box"
    }}>
      <h1 style={{ color: "#852d4b", fontSize: "clamp(32px, 6vw, 48px)" }}>
        ❤️ Hello World!
      </h1>
      <h2>Bem-vindo ao Entre Nós</h2>
      <p>O nosso primeiro site está a funcionar!</p>
    </main>
  );
}
