# API5: PUT - Update Product

## Descripción
Verificar la actualización del título y precio de un producto existente mediante su ID.

## Request
- *Método:* PUT
- *URL:* `{{base_url}}/products/1`
- *Headers:* `Content-Type: application/json`
- *Body (raw JSON):*
```json
{
    "title": "QA Updated Product",
    "price": 150
}
```

## Assertions 
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
Status 200 OK. El servidor retornó el producto con ID *1* reflejando los nuevos valores enviados.

## Estado
✅ Aprobado (3/3 assertions passed)
