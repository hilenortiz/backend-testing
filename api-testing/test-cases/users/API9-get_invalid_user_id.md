# API9: GET - Invalid User ID (caso negativo)

## Descripción
Verificar que la API devuelva un error 404 al consultar por un usuario con un ID que no existe.

## Request
- *Método:* GET
- *URL:* `{{base_url}}/users/9999`
- *Body:* No aplica

## Assertions 
```javascript
pm.test("Status code is 404", function () {
    pm.response.to.have.status(404);
});
```

## Resultado Obtenido
Status 404 Not Found. El ID de usuario consultado no existe en el sistema

## Estado
✅ Aprobado (1/1 assertion passed)