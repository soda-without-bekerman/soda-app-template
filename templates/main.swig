{% extends "layout.swig" %}



{% block title %}
Название приложения
{% endblock %}

{% block body %}

<header>
  {% include "menu.swig" %}
</header>

<div class="pages-container">


<section class="page active" data-name="first-page" 
	 data-in-effect="appear-from-top"
	 data-out-effect="disapear-to-top"
	 data-steps-total="3"
	 >
  <div class="pd1">
  <br>
  <br>
  <br>

  <h1>1</h1>
  Проснувшись однажды утром после беспокойного сна, Грегор Замза обнаружил, что он у себя в постели превратился в страшное насекомое. Лежа на панцирнотвердой спине, он видел, стоило ему приподнять голову, свой

  <div class="animation-element"
       data-animation-step="1"
       data-inactive-class="anim-invisible"
       data-active-class="anim-appear-from-left"
       >
    НОВЫЙ ТЕКСТ
  </div>

  <div class="animation-element"
       data-animation-step="2"
       data-inactive-class="anim-invisible"
       data-active-class="anim-bounce-from-bottom"
       >
    ЕЩЕ ТЕКСТ
  </div>
  </div>
</section>

<section class="page" data-name="second-page"
	 data-in-effect="appear-from-bottom"
	 data-out-effect="disapear-to-top"
	 data-steps-total="1">
  <div class="pd1">
  <br>
  <br>
  <br>

  <h1>2</h1>
  Далеко-далеко за словесными горами в стране гласных и согласных живут рыбные тексты. Вдали от всех живут они в буквенных домах на берегу Семантика большого языкового океана. Маленький ручеек Даль журчит
  </div>
</section>

<section class="page" data-name="thurd-page"
	 data-in-effect="appear-from-bottom"
	 data-out-effect="disapear-to-top"
	 data-steps-total="1">

  <div class="pd1">
  <br>
  <br>
  <br>
  <h1>3</h1>
  Душа моя озарена неземной радостью, как эти чудесные весенние утра, которыми я наслаждаюсь от всего сердца. Я совсем один и блаженствую в здешнем краю, словно созданном для таких, как я.
  <br>
  <h3>Элемент с прокруткой</h3>
  <div class="no-swipe" style="width: 80%; height: 30vh; overflow: scroll">
    Давно выяснено, что при оценке дизайна и композиции читаемый текст мешает сосредоточиться. Lorem Ipsum используют потому, что тот обеспечивает более или менее стандартное заполнение шаблона, а также реальное распределение букв и пробелов в абзацах, которое не получается при простой дубликации "Здесь ваш текст.. Здесь ваш текст.. Здесь ваш текст.." Многие программы электронной вёрстки и редакторы HTML используют Lorem Ipsum в качестве текста по умолчанию, так что поиск по ключевым словам "lorem ipsum" сразу показывает, как много веб-страниц всё ещё дожидаются своего настоящего рождения. За прошедшие годы текст Lorem Ipsum получил много версий. Некоторые версии появились по ошибке, некоторые - намеренно (например, юмористические варианты).
  </div>

  </div>

</section>

<section class="page" data-name="fourth-page"
	 data-in-effect="appear-from-bottom"
	 data-out-effect="disapear-to-top"
	 data-steps-total="1">
  <div class="pd1">
  <br>
  <br>
  <br>

  <h1>4</h1>
Любя, съешь щипцы, — вздохнёт мэр, — кайф жгуч. Шеф взъярён тчк щипцы с эхом гудбай Жюль. Эй, жлоб! Где туз? Прячь юных съёмщиц в шкаф. Экс-граф? Плюш изъят. Бьём
  </div>
</section>


</div>

{% endblock %}
