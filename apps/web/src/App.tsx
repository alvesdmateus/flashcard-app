import { Button, Card, CardHeader, CardContent } from "@versado/ui";

export function App() {
  return (
    <div className="app">
      <h1>Versado</h1>
      <Card>
        <CardHeader>Welcome</CardHeader>
        <CardContent>
          <p>Start building your flashcard collection!</p>
          <Button>Get Started</Button>
        </CardContent>
      </Card>
    </div>
  );
}
