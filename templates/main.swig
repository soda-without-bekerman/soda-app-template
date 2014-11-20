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
