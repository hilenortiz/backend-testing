# API4: POST - Add Product

## Descripción
Verificar que el endpoint permite crear un nuevo producto correctamente.

## Request
- *Método:* POST
- *URL:* `{{base_url}}/products/add`
- *Body (raw JSON):*
```json
{
    "title": "QA Test Product",
    "price": 45.50
}
```

## Assertions (Postman Tests)
```javascript
pm.test("Status code is 201", function () {
    pm.response.to.have.status(201);
});
pm.test("Response contains product ID", function () {
    const jsonData = pm.response.json();
    pm.expect(jsonData).to.have.property("id");
});
pm.test("Product title is correct", function () {
    const jsonData = pm.response.json();
    pm.expect(jsonData.title).to.eql("QA Test Product");
});
```

## Resultado Obtenido
Status 201 Created. La respuesta devolvió:
```json
{
    "id": 195,
    "title": "QA Test Product",
    "price": 45.5
}
```
Se generó un ID nuevo (195) y el título coincide con el enviado. Nota: se envió `price: 45.50` y la API devolvió `45.5` — es el mismo valor numérico, sin pérdida de datos.

## Estado
✅ Aprobado (3/3 assertions passed)
