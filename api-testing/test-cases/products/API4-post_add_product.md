# API4: POST - Add Product

## Descripción
Verificar la creación de un nuevo producto enviando título y precio en el cuerpo de la solicitud.

## Request
- *Método:* POST
- *URL:* `{{base_url}}/products/add`
- *Headers:* `Content-Type: application/json`
- *Body (raw JSON):*
```json
{
    "title": "QA Test Product",
    "price": 45.50
}
```

## Assertions 
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
```json
{
    "id": 195,
    "title": "QA Test Product",
    "price": 45.5
}
```
Status 201 Created. Se generó el nuevo producto con ID 195, confirmando el título enviado (QA Test Product) y el precio normalizado a 45.5.

## Estado
✅ Aprobado (3/3 assertions passed)
