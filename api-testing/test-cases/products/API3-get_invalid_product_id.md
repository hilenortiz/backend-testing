# API3: GET - Invalid Product ID (caso negativo)

## Descripción
Verificar que cuando se solicita un producto con un ID que no existe, la API responda correctamente.

## Request
- *Método:* GET
- *URL:* `{{base_url}}/products/100000`
- *Body:* No aplica

## Assertions
```javascript
pm.test("Status code is 404", function () {
    pm.response.to.have.status(404);
});
```

## Resultado Obtenido
Status 404 Not Found. El ID del producto no existe.

## Estado
✅ Aprobado (1/1 assertion passed)

## Tipo
Caso negativo
