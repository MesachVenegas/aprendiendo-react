
export default function App() {

  const handleClick = () => {
    alert('Hola mundo!');
    }

  const handleMouseOver = () => {
    alert('Hola mundo!');
  }

  return (
    <main className="flex flex-col gap-6 items-center justify-center w-full min-h-screen">
      <h1 className="text-3xl font-bold">Hola Mundo</h1>
      <button onClick={handleClick} className="bg-blue-400 p-2">haz click aquí</button>
      <button onMouseOver={handleMouseOver} className="bg-slate-400 p-2">pasa el mouse sobre mi</button>
    </main>
  )
}

