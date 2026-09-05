# API5: PUT - Update Product

## Descripción
Verificar que el endpoint permite actualizar un producto existente correctamente.

## Request
- *Método:** PUT
- *URL:* `{{base_url}}/products/1`
- *Body (raw JSON):*
```json
{
    "title": "QA Updated Product",
    "price": 150
}
```

## Assertions (Postman Tests)
```javascript
pm.test("Status code is 200", function () {
    pm.response.to.have.status(200);
});
pm.test("Updated title is correct", function () {
    const jsonData = pm.response.json();
    pm.expect(jsonData.title).to.eql("QA Updated Product");
});
pm.test("Updated price is correct", function () {
    const jsonData = pm.response.json();
    pm.expect(jsonData.price).to.eql(150);
});
```

## Resultado Obtenido
Status 200 OK. La respuesta devolvió el producto con `id: 1`, título y precio actualizados correctamente a los valores enviados.

## Estado
✅ Aprobado (3/3 assertions passed)
