# API6: DELETE - Delete Product

## Descripción
Verificar la eliminación de un producto existente mediante su ID.

## Request
- *Método:* DELETE
- *URL:* `{{base_url}}/products/1`
- *Body:* No aplica

## Assertions
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
Status 200 OK. La respuesta devolvió `isDeleted: true` y la fecha de eliminación en `deletedOn`


## Nota técnica
La API simula un borrado lógico (soft delete), es decir, el producto no se elimina físicamente de la base de datos, sino que se marca como inactivo devolviendo isDeleted: true. Es una práctica habitual para no perder historial de datos.

## Estado
✅ Aprobado (2/2 assertions passed)
