# Работа с меню

Чтобы связять страницу с элементом меню нужно задать для нее атрибут `data-name` и использовать его при описании пункта меню.

## Пример

### В файле `main.swig`

```html

  <section class="page" data-name="my-cool-page"
           data-in-effect="appear-from-bottom"
		   data-out-effect="disapear-to-top"
		   >
		   ...
  </section>		   
```

