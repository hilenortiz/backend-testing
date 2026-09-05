# API1: GET - All Products

## Descripción
Verificar que el endpoint devuelve la lista completa de productos disponibles, con la estructura de respuesta correcta.

## Request
- *Método:* GET
- *URL:* `{{base_url}}/products`
- *Body:* No aplica

## Assertions (Postman Tests)
```javascript
pm.test("Status code is 200", function () {
    pm.response.to.have.status(200);
});
pm.test("Response contains products", function () {
    const jsonData = pm.response.json();
    pm.expect(jsonData).to.have.property("products");
});
pm.test("Products is an array", function () {
    const jsonData = pm.response.json();
    pm.expect(jsonData.products).to.be.an("array");
});
```

## Resultado Obtenido
Status 200 OK. La respuesta contiene la propiedad `products` como un array, con la lista completa de productos.

## Estado
✅ Aprobado (3/3 assertions passed)
