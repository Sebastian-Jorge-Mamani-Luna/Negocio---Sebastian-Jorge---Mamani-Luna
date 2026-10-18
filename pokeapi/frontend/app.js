async function buscarPokemon() {
    let input = document.getElementById("nombrePokemon").value.toLowerCase().trim();
    let resultadoDiv = document.getElementById("resultado");

    resultadoDiv.innerHTML = "Cargando...";

    if (!input) {
        resultadoDiv.innerHTML = "Por favor ingresa un nombre de Pokémon.";
        return;
    }

    try {
        let respuesta = await fetch(`https://pokeapi.co/api/v2/pokemon/${input}`);

        if (!respuesta.ok) {
            throw new Error("El Pokémon no existe");
        }

        let data = await respuesta.json();

        let pesoKg = (data.weight / 10).toFixed(1);
        let alturaM = (data.height / 10).toFixed(1);
        let tipos = data.types.map(t => t.type.name).join(", ");

        resultadoDiv.innerHTML = `
            <h3>${data.name.toUpperCase()}</h3>
            <img src="${data.sprites.front_default}" alt="${data.name}">
            <p><strong>Tipos:</strong> ${tipos}</p>
            <p><strong>Peso:</strong> ${pesoKg} kg</p>
            <p><strong>Altura:</strong> ${alturaM} m</p>
        `;

    } catch (error) {
        resultadoDiv.innerHTML = "Error: El pokémon no existe o falló la conexión.";
    }
}