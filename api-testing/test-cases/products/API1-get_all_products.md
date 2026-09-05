# API1: GET - All Products

## Descripción
Verificar que al pedir los productos, la API devuelva la lista completa.

## Request
- *Método:* GET
- *URL:* `{{base_url}}/products`
- *Body:* No aplica

## Assertions 
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
Status 200 OK. Retornó el JSON con la propiedad products como una lista de los productos disponibles.

## Estado
✅ Aprobado (3/3 assertions passed)
