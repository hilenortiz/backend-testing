# API3: GET - Invalid Product ID (caso negativo)

## Descripción
Verificar que el endpoint responde correctamente cuando se solicita un producto con un ID inexistente.

## Request
- *Método:* GET
- *URL:* `{{base_url}}/products/100000`
- *Body:* No aplica

## Assertions (Postman Tests)
```javascript
pm.test("Status code is 404", function () {
    pm.response.to.have.status(404);
});
```

## Resultado Obtenido
Status 404 Not Found, tal como se esperaba para un ID de producto inexistente.

## Estado
✅ Aprobado (1/1 assertion passed)

## Tipo
Caso negativo
