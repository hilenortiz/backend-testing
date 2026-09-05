# API8: GET - User by ID

## Descripción
Verificar que la API devuelva el usuario correspondiente al ID solicitado.

## Request
- *Método:* GET
- *URL:* `{{base_url}}/users/5`
- *Body:* No aplica

## Assertions
```javascript
pm.test("Status code is 200", function () {
    pm.response.to.have.status(200);
});
pm.test("Response contains user ID", function () {
    const jsonData = pm.response.json();
    pm.expect(jsonData).to.have.property("id");
});
pm.test("User ID is 5", function () {
    const jsonData = pm.response.json();
    pm.expect(jsonData.id).to.eql(5);
});
```

## Resultado Obtenido
Status 200 OK. Retornó los datos del usuario confirmando que el campo id corresponde al valor 5

## Nota
Se usó el ID 5 en lugar de 1, para variar el dato de prueba respecto al caso similar de Products.

## Estado
✅ Aprobado (3/3 assertions passed)
