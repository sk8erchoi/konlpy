ή          Δ               l  ]   m  ?   Λ          ₯  F   0  &   w  >     _   έ  G  =  p        φ  ½     &   N  ί   u     U     m  `     \   γ    @	     I  t  Ξ     C  N   Γ  Ά     {   Ι  M   E  "     f   Ά  f     5    s   Ί  ¨   .  Η   Χ  "     Δ   Β          ₯  s   ³  T   '    |        *Execution time*: Time for executing the ``pos`` method for each class, with 100K characters. *Loading time*: Class loading time, including dictionary loads. *Morphological analysis* is the identification of the structure of morphemes and other linguistic units, such as root words, affixes, or parts of speech. *POS (part-of-speech) tagging* is the process of marking up morphemes in a phrase, based on their definitions and contexts. For example.:: Compare POS tags between several Korean analytic projects. (In Korean) Comparison between POS tagging classes For detailed usage instructions see the :doc:`api/konlpy.tag`. How do each of the analyzers deal with slang, or terms that are not included in the dictionary? If we focus on "λλ" in both sentences, we can see whether an analyzer considers the context of words. "λλ" in the first sentence should be ``λ/N + λ/J``, and in the second sentence ``λ(-γΉλ€)/V + λ/E``. :py:class:`.Kkma` properly understands the latter "λλ" as a verb, wheras the rest observe it as nouns. If we test among a various number of characters, all classes' execution times increase in an exponential manner. If you would like to run the experiments yourself, run `this code <https://github.com/konlpy/konlpy/blob/master/docs/morph.py>`_ from your local machine. In KoNLPy, there are several different options you can choose for POS tagging. All have the same input-output structure; the input is a phrase, and the output is a list of tagged morphemes. Morphological analysis and POS tagging Now, we do time and performation analysis for executing the ``pos`` method for each of the classes in the :doc:`api/konlpy.tag`. The experiments were carried out on a Intel i7 CPU with 4 cores, Python 2.7, and KoNLPy 0.4.1. POS tagging with KoNLPy Performance analysis Please note that these are comparisons among KoNLPy classes, and not the original distributions. The performance evaluation is replaced with result comparisons for several sample sentences. We can check the spacing algorithm through this example. Desirably, an analyzer would parse this sentence to ``μλ²μ§κ° + λ°©μ + λ€μ΄κ°μ λ€`` (My father enters the room), rather than ``μλ²μ§ + κ°λ°©μ + λ€μ΄κ°μ λ€`` (My father goes in the bag). :py:class:`.Hannanum` and :py:class:`.Komoran` are careful in spacing uncertain terms, and defaults the whole phrase to nouns. :py:class:`.Kkma` is more confident, but gets undesirable results. For this result, :py:class:`.Mecab` shows the best results. `Korean POS tags comparison chart <https://docs.google.com/spreadsheets/d/1OGAjUvalBuX-oZvZ_-9tEfYD2gQe7hTGsgUpiiBSXI8/edit#gid=0>`_ Project-Id-Version: KoNLPy 0.3
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2018-08-03 22:53+0900
PO-Revision-Date: YEAR-MO-DA HO:MI+ZONE
Last-Translator: FULL NAME <EMAIL@ADDRESS>
Language: ko
Language-Team: ko <LL@li.org>
Plural-Forms: nplurals=1; plural=0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.9.1
 μ€νμκ°: 10λ§ λ¬Έμμ λ¬Έμλ₯Ό λμμΌλ‘ κ° ν΄λμ€μ ``pos`` λ©μλλ₯Ό μ€ννλλ° μμλλ μκ°. λ‘λ© μκ°: μ¬μ  λ‘λ©μ ν¬ν¨νμ¬ ν΄λμ€λ₯Ό λ‘λ©νλ μκ°. **ννμ λΆμ** μ΄λ ννμλ₯Ό λΉλ‘―νμ¬, μ΄κ·Ό, μ λμ¬/μ λ―Έμ¬, νμ¬(POS, part-of-speech) λ± λ€μν μΈμ΄μ  μμ±μ κ΅¬μ‘°λ₯Ό νμνλ κ²μλλ€. **νμ¬ νκΉ** μ ννμμ λ»κ³Ό λ¬Έλ§₯μ κ³ λ €νμ¬ κ·Έκ²μ λ§ν¬μμ νλ μΌμλλ€. μλ₯Ό λ€μ΄: κ°μ’ νκ΅­μ΄ ννμ λΆμκΈ°μ νμ¬ νκ·Έλ₯Ό λΉκ΅ν΄ λ³΄μΈμ. νμ¬ νκΉ ν΄λμ€ κ° λΉκ΅ λ μμΈν μ€λͺμ λ³΄κΈ° μν΄μλ :doc:`api/konlpy.tag` λ₯Ό μ°Έκ³ ν΄μ£ΌμκΈ° λ°λλλ€. κ° λΆμκΈ°κ° μ¬μ μ ν¬ν¨λμ§ μμ λ¨μ΄λ₯Ό μ΄λ»κ² ν΄κ²°νλμ§ νμΈν΄λ³ΌκΉμ? λ λ¬Έμ₯μμ "λλ"μ μ§μ€ν΄μ λ³Έλ€λ©΄, κ° λΆμκΈ°κ° νκΉν  λ λ¨μ΄μ μλ―Έμ μ£Όλ³λΆλ₯Ό μ μ΄νΌλμ§ νμΈν΄λ³Ό μ μμ΅λλ€. μ²«λ²μ§Έ λ¬Έμ₯μμ "λλ"μ ``λ/N + λ/J``, λλ²μ§Έ λ¬Έμ₯μμλ ``λ(-γΉλ€)/V + λ/E`` μ΄ λλ κ²μ΄ λ°λμ§ν©λλ€. λ¬Έμμ κ°μλ₯Ό λλ €κ°μ λ°λΌ λͺ¨λ  ν΄λμ€μ μ€ν μκ°μ κΈ°νκΈμμ μΌλ‘ μ¦κ°ν©λλ€. `μ΄ μ½λλ₯Ό <https://github.com/konlpy/konlpy/blob/master/docs/morph.py>`_ μ»΄ν¨ν°μμ μ€ννμλ©΄ μ λΉκ΅ μ€νμ μ§μ  μννμ€ μ μμ΅λλ€. KoNLPyμλ νμ¬ νκΉμ νκΈ° μν μ΅μμ΄ μ¬λΏ μλλ°, μ΄λ€μ λͺ¨λ λ¬Έκ΅¬(phrase)λ₯Ό μλ ₯λ°μ νκΉλ ννμλ₯Ό μΆλ ₯νλ λμΌν μμΆλ ₯ κ΅¬μ‘°λ₯Ό κ°μ§λλ€. ννμ λΆμ λ° νμ¬ νκΉ μ΄μ  :doc:`api/konlpy.tag` μ μλ νκ±°λ€μ μ±λ₯μ νμΈν΄λ³ΌκΉμ? μ€νμ 4κ°μ μ½μ΄κ° μλ μΈν i7 CPU, νμ΄μ¬ 2.7, KoNLPy 0.4.1μ μ΄μ©ν΄ μνλμμ΅λλ€. KoNLPyλ‘ νμ¬ νκΉνκΈ° μ±λ₯ λΆμ κ° ννμ λΆμκΈ° λ°°ν¬νμ΄ μλ, KoNLPy λ΄λΆ λͺ¨λ κ° λΉκ΅μμ μ μν΄μ£ΌμκΈ° λ°λλλ€. μ±λ₯ κ²μ¦μ λͺ κ°μ μν λ¬Έμ₯μ λΉκ΅νλ κ²μΌλ‘ λμ²΄ν©λλ€. μ΄ μμλ₯Ό ν΅ν΄ λμ΄μ°κΈ° μκ³ λ¦¬μ¦μ μ±λ₯μ νμΈν΄λ³Ό μ μμ΅λλ€. μ΄μμ μΈ κ²½μ°, μ΄ μμμ λν΄μλ ``μλ²μ§ + κ°λ°©μ + λ€μ΄κ°μ λ€`` λ³΄λ€λ ``μλ²μ§κ° + λ°©μ + λ€μ΄κ°μ λ€`` λ‘ ν΄μνλ κ²μ΄ λ λ°λμ§νκ² μ§μ. `νκ΅­μ΄ νμ¬ νκ·Έ λΉκ΅ν <https://docs.google.com/spreadsheets/d/1OGAjUvalBuX-oZvZ_-9tEfYD2gQe7hTGsgUpiiBSXI8/edit#gid=0>`_ 