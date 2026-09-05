# API7: GET - All Users

## Descripción
Verificar que la API devuelve la lista completa de usuarios disponibles.

## Request
- *Método:* GET
- *URL:* `{{base_url}}/users`
- *Body:* No aplica

## Assertions 
```javascript
pm.test("Status code is 200", function () {
    pm.response.to.have.status(200);
});
pm.test("Response contains users", function () {
    const jsonData = pm.response.json();
    pm.expect(jsonData).to.have.property("users");
});
pm.test("Users is an array", function () {
    const jsonData = pm.response.json();
    pm.expect(jsonData.users).to.be.an("array");
});
```

## Resultado Obtenido
Status 200 OK. La respuesta contiene la propiedad users como un array, con la lista de los usuarios registrados.

## Estado
✅ Aprobado (3/3 assertions passed)
