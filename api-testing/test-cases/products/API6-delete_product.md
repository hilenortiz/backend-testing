# API6: DELETE - Delete Product

## Descripción
Verificar que el endpoint permite eliminar un producto y refleja correctamente el borrado.

## Request
- *Método:* DELETE
- *URL:* `{{base_url}}/products/1`
- *Body:* No aplica

## Assertions (Postman Tests)
```javascript
pm.test("Status code is 200", function () {
    pm.response.to.have.status(200);
});
pm.test("Product is marked as deleted", function () {
    const jsonData = pm.response.json();
    pm.expect(jsonData.isDeleted).to.eql(true);
});
```

## Resultado Obtenido
Status 200 OK. La respuesta devolvió `isDeleted: true` y `deletedOn` con la fecha/hora del borrado.

## Nota técnica
DummyJSON implementa un "soft delete" (borrado lógico): el producto no desaparece de la respuesta, sino que queda marcado con `isDeleted: true` en vez de eliminarse físicamente. Es un patrón común en APIs reales para mantener trazabilidad de datos eliminados.

## Estado
✅ Aprobado (2/2 assertions passed)
