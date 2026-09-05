# API2: GET - Product by ID

## Descripción
Verificar que la API devuelva el producto correspondiente al ID solicitado.

## Request
- *Método:* GET
- *URL:* `{{base_url}}/products/1`
- *Body:* No aplica

## Assertions 
```javascript
pm.test("Status code is 200", function () {
    pm.response.to.have.status(200);
});
pm.test("Response contains product ID", function () {
    const jsonData = pm.response.json();
    pm.expect(jsonData).to.have.property("id");
});
pm.test("Product ID is 1", function () {
    const jsonData = pm.response.json();
    pm.expect(jsonData.id).to.eql(1);
});
```

## Resultado Obtenido
Status 200 OK. Retornó los datos del producto consultado confirmando que el campo id corresponde al valor 1.

## Estado
✅ Aprobado (3/3 assertions passed)
