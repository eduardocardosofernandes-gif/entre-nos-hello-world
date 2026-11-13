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
