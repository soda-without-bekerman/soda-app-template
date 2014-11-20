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

### В файле `menu.swig`

```html
  <li>
    <a href="#" data-name="my-cool-page">
	  <span class="fa fa-cloud"></span> <span class="title">моя страница</span>
	</a>
  </li>

```

## Что если `swig` не установлен?

Просто найдите соответствующие части кода в файле `index.html` и отредактируйте его.


