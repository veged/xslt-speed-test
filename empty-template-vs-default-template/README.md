А вызывается ли пустой шаблон?
==============================

Могли бы и оптимизацию сделать, наверное.

Результаты тестов
-----------------

    -----------------------------------------------------------------------------------------------
                                    ../xml/l50000_.xml            run      parse xsl      parse xml
    -----------------------------------------------------------------------------------------------
                                           default.xsl         121.78           0.00         593.44
                                             empty.xsl         126.50           0.00         594.40
                                        empty-plus.xsl         122.74           0.00         595.52
                                      empty-plus-2.xsl         175.56           0.00         594.08
                                      empty-plus-3.xsl         165.62           0.00         593.24
                                  empty-with-param.xsl         255.06           0.00         594.94
                    empty-with-param-without-param.xsl         127.16           0.00         593.68
                    empty-without-param-with-param.xsl         266.12           0.00         602.54
              empty-without-param-with-param-value.xsl         277.58           0.00         594.88


Выводы
------

Непонятно.
Но больше похоже на то, что пустой шаблон вызывается все равно. Никакой оптимизации тут нет.
> **veged:** По-моему тут дело не в вызове шаблона, а в самом его наличии -- в увеличении потенциально
> мачащихся шаблонов. Я сначала добавил empty-plus.xsl -- но он работает также как default.xsl, т.е.
> такое простое увеличение потенциальных шаблонов оптимизированно. Потом добавил empty-plus-2.xsl
> и empty-plus-3.xsl -- не совсем честно, из-за предиката, но по-моему видно что match замедляет.

Оказывается, дорого не передавать параметр, а принимать.  Как удивительно.
> **veged:** Для симметричности добавил empty-without-param-with-param.xsl (параметр принимается,
> но не передаётся) и empty-without-param-with-param.xsl (параметр принимается с дефолтным значением,
> но не передаётся) -- они ещё медленнее.
