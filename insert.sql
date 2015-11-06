---INSERT INTO TableName (columnName1, columnName2) VALUES(Value1, Value2);


-----------------------------------------Назви професій-----------------------------------------
INSERT INTO profession_names (name) VALUES("Розробник програмного забезпечення");

-----------------------------------------Назви кваліфікацій-------------------------------------
INSERT INTO qualific_names (name) VALUES("Junior developer");
INSERT INTO qualific_names (name) VALUES("Middle developer");
INSERT INTO qualific_names (name) VALUES("Senior developer");

-----------------------------------------Назви компетенцій---------------------------------------
INSERT INTO competency_names (name, function) VALUES("Проектування та розробка", "Проектує і розробляє програмне забезпечення та / або апаратні компоненти для задоволення технічним вимогам, в тому числі питання енергетичної eфективності. Систематизує методологію для аналізу та створення необхідних компонентів і інтерфейсів. Виконує блок тестування для задоволення вимог.");
INSERT INTO competency_names (name, function) VALUES("Інтеграція систем", "Встановлює додаткове обладнання, програмне забезпечення або суб компоненти системи в існуючу систему. Звітує про встановлені процеси і процедури (наприклад, керування конфігурацією), зважаючи на специфікації, потужність і сумісність існуючих і нових модулів для забезпечення цілісності та взаємодії. Перевіряє продуктивність системи і забезпечує формальне ведення документації до успішної інтеграції.");
INSERT INTO competency_names (name, function) VALUES("Тестування", "Формує і здійснює систематичні процедури тестування для ІТ-систем або вимог клієнтів для встановлення відповідності проектним специфікаціям. Гарантує, що нові або переглянуті компоненти або системи гоотові до використання. Забезпечує відповідність  внутрішніх, зовнішніх, національних і міжнародних стандартів; включаючи безпеку, зручність використання, продуктивність, надійність і сумісність. Створює документацію і звіти відповідно до сертифікаційних вимог");
INSERT INTO competency_names (name, function) VALUES("Розробка документації", "Створює документи, що описують продукти, послуги та компоненти або програми для встановлення відповідності з  вимогами документації . Вибирає відповідний стиль і носії для презентаційних матеріалів. Створює шаблони для систем управління документами. Гарантує, що функції і характеристики фіксуються відповідним чином. Гарантує, що існуючі документи є дійсними і до теперішнього часу.");
INSERT INTO competency_names (name, function) VALUES("Керування проблемами", "Визначає і усуває причини інцидентів. Приймає попереджуючий підхід до першопричини проблеми у сфері ІКТ. Забезпечує розгорання системи знань на основі повторення поширених помилок.");

----------------------------------------Загальні тести-------------------------------------------
INSERT INTO test_names (name, description, competency_name_id) VALUES("Тест на IQ", "Визначення рівня інтелекту. Тест розрахований на оцінку розумових здібностей, а не рівня знань (ерудованості)", null);
INSERT INTO test_names (name, description, competency_name_id) VALUES("Тест на логіку", "Вам пропонуються логічні задачі", null);
INSERT INTO test_names (name, description, competency_name_id) VALUES("Тест на синергіз", "Тест перевіряє здатність працювати в команді", null);
INSERT INTO test_names (name, description, competency_name_id) VALUES("Тест на особисті якості", "На основі результатів тесту складається психологічний портрет особистості", null);

----------------------------------------Тести по компетенціях-----------------------------------
INSERT INTO test_names (name, description, competency_name_id) VALUES("Тест з розробки документації", "Тест для визначення рівня компетентності", 4); 
INSERT INTO test_names (name, description, competency_name_id) VALUES("Тест з керування проблемами", "Тест для визначення рівня компетентності", 5);


-----------------------------------------Професії------------------------------------------------
INSERT INTO professions (profession_name_id, qualific_name_id, competency_name_id,  min_level_of_compet_test) VALUES(1, 1, 1, 60);
INSERT INTO professions (profession_name_id, qualific_name_id, competency_name_id,  min_level_of_compet_test) VALUES(1, 2, 1, 75);
INSERT INTO professions (profession_name_id, qualific_name_id, competency_name_id,  min_level_of_compet_test) VALUES(1, 3, 1, 90);
INSERT INTO professions (profession_name_id, qualific_name_id, competency_name_id,  min_level_of_compet_test) VALUES(1, 1, 2, 60);
INSERT INTO professions (profession_name_id, qualific_name_id, competency_name_id,  min_level_of_compet_test) VALUES(1, 2, 2, 75);
INSERT INTO professions (profession_name_id, qualific_name_id, competency_name_id,  min_level_of_compet_test) VALUES(1, 3, 2, 90);
INSERT INTO professions (profession_name_id, qualific_name_id, competency_name_id,  min_level_of_compet_test) VALUES(1, 1, 3, 60);
INSERT INTO professions (profession_name_id, qualific_name_id, competency_name_id,  min_level_of_compet_test) VALUES(1, 2, 3, 75);
INSERT INTO professions (profession_name_id, qualific_name_id, competency_name_id,  min_level_of_compet_test) VALUES(1, 3, 3, 90);
INSERT INTO professions (profession_name_id, qualific_name_id, competency_name_id,  min_level_of_compet_test) VALUES(1, 1, 4, 60);
INSERT INTO professions (profession_name_id, qualific_name_id, competency_name_id,  min_level_of_compet_test) VALUES(1, 2, 4, 75);
INSERT INTO professions (profession_name_id, qualific_name_id, competency_name_id,  min_level_of_compet_test) VALUES(1, 3, 4, 90);
INSERT INTO professions (profession_name_id, qualific_name_id, competency_name_id,  min_level_of_compet_test) VALUES(1, 1, 5, 60);
INSERT INTO professions (profession_name_id, qualific_name_id, competency_name_id,  min_level_of_compet_test) VALUES(1, 2, 5, 75);
INSERT INTO professions (profession_name_id, qualific_name_id, competency_name_id,  min_level_of_compet_test) VALUES(1, 3, 5, 90);

-----------------------------------------Користувачі-----------------------------------------------
INSERT INTO users (name, login, password, email, profession_id, rating, is_group) VALUES("Логвінова Ірина", "30dandelions", "12345678", "30dandelions@gmail.com", 1, 89, 0);

-----------------------------------------
-----------------------------------------Питання---------------------------------------------------
INSERT INTO questions (question_text, question_pic, difficlty, answ1_text, answ2_text, answ3_text, answ4_text, answ5_text, answ6_text, answ1_pic, answ2_pic, answ3_pic, answ4_pic, answ5_pic, answ6_pic, answ_correct, test_name_id) VALUES("Продовжте числовий ряд 212 179 146 113 ?", null, 1, "80", "60", "70", "90", null, null, null, null, null, null, null, null, 1, 1);
INSERT INTO questions (question_text, question_pic, difficlty, answ1_text, answ2_text, answ3_text, answ4_text, answ5_text, answ6_text, answ1_pic, answ2_pic, answ3_pic, answ4_pic, answ5_pic, answ6_pic, answ_correct, test_name_id) VALUES("Продовжте числовий ряд 18 20 24 32 ?", null, 1, "48", "62", "76", "94", null, null, null, null, null, null, null, null, 1, 1);

-----------------------------------------Дисципліни---------------------------------------------------
INSERT INTO disciplines (name) VALUES("Алгоритмізація та програмування");

-----------------------------------------Знання---------------------------------------------------
INSERT INTO knowl_descriptions (description, discipline_id) VALUES("Застосовувані програмне забеспечення, модулі, СКБД і мови програмування", 1);
INSERT INTO knowl_descriptions (description, discipline_id) VALUES("Компоненти апаратного забезпечення, інструментиі архітектури апаратних платформ", 1);
INSERT INTO knowl_descriptions (description, discipline_id) VALUES("Передові технології", 1);
INSERT INTO knowl_descriptions (description, discipline_id) VALUES("Мови програмування", 1);
INSERT INTO knowl_descriptions (description, discipline_id) VALUES("Моделі енергоспоживання для програмного та/чи апаратного забезпечення", 1);
INSERT INTO knowl_descriptions (description, discipline_id) VALUES("Функціональне і технічне проектування", 1);

INSERT INTO knowl_descriptions (description, discipline_id) VALUES("Попередні, існуючі та нові компоненти апаратного/програмного забеспечення", 1);
INSERT INTO knowl_descriptions (description, discipline_id) VALUES("Вплив, який зумовлюється системною інтеграцією на існуючу систему/організацію", 1);
INSERT INTO knowl_descriptions (description, discipline_id) VALUES("Інтеграційні тестуючі технології", 1);
INSERT INTO knowl_descriptions (description, discipline_id) VALUES("Технології взаємодії між модулями, системами та компонентами", 1);

INSERT INTO knowl_descriptions (description, discipline_id) VALUES("Техніки, інфраструктури та інструменти, що використовуються в процесі тестування", 1);
INSERT INTO knowl_descriptions (description, discipline_id) VALUES("Життєвий цикл процесу тестування", 1);
INSERT INTO knowl_descriptions (description, discipline_id) VALUES("Різні види тестування (функціональні, компонувальні, на продуктивність, експлуатаційну придатність і т.д.)", 1);
INSERT INTO knowl_descriptions (description, discipline_id) VALUES("Національні та міжнародні стандарти, визначальні критерії якості тестування", 1);

INSERT INTO knowl_descriptions (description, discipline_id) VALUES("Організація ІТ-інфраструктури та її ключові компоненти", 1);
INSERT INTO knowl_descriptions (description, discipline_id) VALUES("Процедури звітності в компанії", 1);
INSERT INTO knowl_descriptions (description, discipline_id) VALUES("Внутрішньокорпоративні процедури ескалації запитів у критичних ситуаціях", 1);
INSERT INTO knowl_descriptions (description, discipline_id) VALUES("Застосування засобів діагностики несправностей", 1);
INSERT INTO knowl_descriptions (description, discipline_id) VALUES("Взаємозв’язок між елементами інфраструктури  системи та впливом збоїв на суміжні бізнес-процеси", 1);

INSERT INTO attainm_descriptions (description) VALUES("Проектувати та конструювати компоненти програмного забезпечення та/чи апаратних платформ");
INSERT INTO attainm_descriptions (description) VALUES("Конструювати специфікації, які відповідають вимогам, включно умови енергозбереження");
INSERT INTO attainm_descriptions (description) VALUES("Застосовувати системну методологію для аналізу та створеня необхідних компонентів та інтерфейсів");
INSERT INTO attainm_descriptions (description) VALUES("Тестувати компоненти і системи на предмет відповідності вимогам");

INSERT INTO attainm_descriptions (description) VALUES("Установлювати додаткові апаратні/програмні компоненти в існуючі системи");
INSERT INTO attainm_descriptions (description) VALUES("Вміти поєднувати такі компоненти з вже існуючими процесами та/чи процедурами на основі специфікацій, продуктивносі та сумісності задля забезпечення їхньої інтеграції та операційної сумісності");
INSERT INTO attainm_descriptions (description) VALUES("Перевіряти продуктивність системи, офіційно завершувати та успішно реєструвати успішну інтеграцію");

INSERT INTO attainm_descriptions (description) VALUES("Розробляти і проводити регулярні процедури тестування ІТ-систем або перевірки на дотримання вимог до експлуатаційної придатності з боку замовника з метою забезпечення відповідності проектним специфікаціям");
INSERT INTO attainm_descriptions (description) VALUES("Забезпечувати роботу нових або модернізованих компонентів і систем відповідно до прогнозованих очікувань");
INSERT INTO attainm_descriptions (description) VALUES("Гарантувати дотримання внутрішніх, зовнішніх, державних та міжнародних стандартів, включаючи стандарти щодо забезпечення гігієни праці та техніки безпеки, експлуатаційної придатності, продуктивності, надійності та сумісності");
INSERT INTO attainm_descriptions (description) VALUES("Складати документи та звіти, що підтверджують відповідності сертифікаційним вимогам");

INSERT INTO attainm_descriptions (description) VALUES("Складати документи, що описують товари, послуги, компоненти або програми з урахуванням поточних вимог до оформлення документації");
INSERT INTO attainm_descriptions (description) VALUES("Вибирати стиль і засоби для матеріалів презентацій");
INSERT INTO attainm_descriptions (description) VALUES("Створювати шаблони систем документального обліку");
INSERT INTO attainm_descriptions (description) VALUES("Забезпечувати належний облік функцій та характеристик");
INSERT INTO attainm_descriptions (description) VALUES("Гарантувати законність та адекватність існуючих документів");

INSERT INTO attainm_descriptions (description) VALUES("Ідентифікувати та усувати основні причини інцидентів");
INSERT INTO attainm_descriptions (description) VALUES("Застосовувати профілактичний підхід при виявленні основних причин проблем ІС");
INSERT INTO attainm_descriptions (description) VALUES("Розгортає бази знань, що базуються на повторюваних типових помилках");

INSERT INTO skill_descriptions (description) VALUES("Пояснювати та презентувати проекти/розробки замовникам");
INSERT INTO skill_descriptions (description) VALUES("Виконувати та оцінювати резульати тестування з уахуванням специфікації");
INSERT INTO skill_descriptions (description) VALUES("Застосовувати відповідні програмні та/або апаратні архітектурні рішення");
INSERT INTO skill_descriptions (description) VALUES("Використовувати моделі даних");
INSERT INTO skill_descriptions (description) VALUES("Проектувати та розроблювати архітектуру апаратних засобів, користувацькі інтерфейси, компоненти комерційного програмного забезпечення і вбудовані програмні модулі");
INSERT INTO skill_descriptions (description) VALUES("Забезпечувати та гарантувати високий рівень послідовності та якості складних програмних розробок");

INSERT INTO skill_descriptions (description) VALUES("Оцінювати продуктивність системи до, в процесі та після системної інтеграції");
INSERT INTO skill_descriptions (description) VALUES("Документувати та виконувати записи обліку та реєстрації діяльності, яка стосується усунення неполадок");
INSERT INTO skill_descriptions (description) VALUES("Забеспечувати відповідність існуючих продуктів потребам клієнтів");
INSERT INTO skill_descriptions (description) VALUES("Перевіряти відповідність специфікацій та покажчиків продуктивності та ефективності інтегрованих систем");
INSERT INTO skill_descriptions (description) VALUES("Здійснювати захист/резервне копіювання даних для забеспечення стабільності в процесі інтеграції");

INSERT INTO skill_descriptions (description) VALUES("Складати план тестування та контролювати його виконання");
INSERT INTO skill_descriptions (description) VALUES("Керувати процесом тестування й оцінювати результати");
INSERT INTO skill_descriptions (description) VALUES("Розробляти сценарії тестування ІТ-систем");
INSERT INTO skill_descriptions (description) VALUES("Підготовлювати й проводити тестування ІТ-систем");
INSERT INTO skill_descriptions (description) VALUES("Протоколювати і документувати результати тестування");

INSERT INTO skill_descriptions (description) VALUES("Контролювати процеси вирішення запитів та забезпечувати ефективну взаємодію");
INSERT INTO skill_descriptions (description) VALUES("Запобігати потенційним збоям критичних елементів та вживати заходів для мінімізації наслідків збоїв");
INSERT INTO skill_descriptions (description) VALUES("Проводити перевірки дотримання правил керування ризиками та вживати заходів для мінімізації виникнення ризиків");
INSERT INTO skill_descriptions (description) VALUES("Правильно розподіляти ресурси для процедур технічного обслуговування, урівноваження витрат та ризиків");
INSERT INTO skill_descriptions (description) VALUES("Забезпечувати взаємодію на всіх рівнях, щоб забезпечувати розгортання необхідних внутрішніх та зовнішніх ресурсів для мінімізацїі перебоїв у роботі");

INSERT INTO compet_knowledges (competency_name_id, knowl_description_id) VALUES(1, 1);
INSERT INTO compet_knowledges (competency_name_id, knowl_description_id) VALUES(1, 2);
INSERT INTO compet_knowledges (competency_name_id, knowl_description_id) VALUES(1, 3);
INSERT INTO compet_knowledges (competency_name_id, knowl_description_id) VALUES(1, 4);
INSERT INTO compet_knowledges (competency_name_id, knowl_description_id) VALUES(1, 5);
INSERT INTO compet_knowledges (competency_name_id, knowl_description_id) VALUES(1, 6);
INSERT INTO compet_knowledges (competency_name_id, knowl_description_id) VALUES(2, 1);
INSERT INTO compet_knowledges (competency_name_id, knowl_description_id) VALUES(2, 2);
INSERT INTO compet_knowledges (competency_name_id, knowl_description_id) VALUES(2, 3);
INSERT INTO compet_knowledges (competency_name_id, knowl_description_id) VALUES(2, 4);
INSERT INTO compet_knowledges (competency_name_id, knowl_description_id) VALUES(3, 1);
INSERT INTO compet_knowledges (competency_name_id, knowl_description_id) VALUES(3, 2);
INSERT INTO compet_knowledges (competency_name_id, knowl_description_id) VALUES(3, 3);
INSERT INTO compet_knowledges (competency_name_id, knowl_description_id) VALUES(3, 4);
INSERT INTO compet_knowledges (competency_name_id, knowl_description_id) VALUES(5, 1);
INSERT INTO compet_knowledges (competency_name_id, knowl_description_id) VALUES(5, 2);
INSERT INTO compet_knowledges (competency_name_id, knowl_description_id) VALUES(5, 3);
INSERT INTO compet_knowledges (competency_name_id, knowl_description_id) VALUES(5, 4);

INSERT INTO compet_skills (competency_name_id, skill_description_id) VALUES(1, 1);
INSERT INTO compet_skills (competency_name_id, skill_description_id) VALUES(1, 2);
INSERT INTO compet_skills (competency_name_id, skill_description_id) VALUES(1, 3);
INSERT INTO compet_skills (competency_name_id, skill_description_id) VALUES(2, 1);
INSERT INTO compet_skills (competency_name_id, skill_description_id) VALUES(2, 2);
INSERT INTO compet_skills (competency_name_id, skill_description_id) VALUES(2, 3);
INSERT INTO compet_skills (competency_name_id, skill_description_id) VALUES(2, 4);
INSERT INTO compet_skills (competency_name_id, skill_description_id) VALUES(2, 5);
INSERT INTO compet_skills (competency_name_id, skill_description_id) VALUES(2, 6);
INSERT INTO compet_skills (competency_name_id, skill_description_id) VALUES(3, 1);
INSERT INTO compet_skills (competency_name_id, skill_description_id) VALUES(3, 2);
INSERT INTO compet_skills (competency_name_id, skill_description_id) VALUES(3, 3);
INSERT INTO compet_skills (competency_name_id, skill_description_id) VALUES(3, 4);
INSERT INTO compet_skills (competency_name_id, skill_description_id) VALUES(3, 5);
INSERT INTO compet_skills (competency_name_id, skill_description_id) VALUES(5, 1);
INSERT INTO compet_skills (competency_name_id, skill_description_id) VALUES(5, 2);
INSERT INTO compet_skills (competency_name_id, skill_description_id) VALUES(5, 3);
INSERT INTO compet_skills (competency_name_id, skill_description_id) VALUES(5, 4);
INSERT INTO compet_skills (competency_name_id, skill_description_id) VALUES(5, 5);

INSERT INTO compet_attainment (competency_name_id, attainm_description_id) VALUES(1, 1);
INSERT INTO compet_attainment (competency_name_id, attainm_description_id) VALUES(1, 2);
INSERT INTO compet_attainment (competency_name_id, attainm_description_id) VALUES(1, 3);
INSERT INTO compet_attainment (competency_name_id, attainm_description_id) VALUES(1, 4);
INSERT INTO compet_attainment (competency_name_id, attainm_description_id) VALUES(2, 1);
INSERT INTO compet_attainment (competency_name_id, attainm_description_id) VALUES(2, 2);
INSERT INTO compet_attainment (competency_name_id, attainm_description_id) VALUES(2, 3);
INSERT INTO compet_attainment (competency_name_id, attainm_description_id) VALUES(3, 1);
INSERT INTO compet_attainment (competency_name_id, attainm_description_id) VALUES(3, 2);
INSERT INTO compet_attainment (competency_name_id, attainm_description_id) VALUES(3, 3);
INSERT INTO compet_attainment (competency_name_id, attainm_description_id) VALUES(3, 4);
INSERT INTO compet_attainment (competency_name_id, attainm_description_id) VALUES(4, 1);
INSERT INTO compet_attainment (competency_name_id, attainm_description_id) VALUES(4, 2);
INSERT INTO compet_attainment (competency_name_id, attainm_description_id) VALUES(4, 3);
INSERT INTO compet_attainment (competency_name_id, attainm_description_id) VALUES(4, 4);
INSERT INTO compet_attainment (competency_name_id, attainm_description_id) VALUES(4, 5);
INSERT INTO compet_attainment (competency_name_id, attainm_description_id) VALUES(5, 1);
INSERT INTO compet_attainment (competency_name_id, attainm_description_id) VALUES(5, 2);
INSERT INTO compet_attainment (competency_name_id, attainm_description_id) VALUES(5, 3);

INSERT INTO responsibilities (description, profession_name_id) VALUES("Документація програми", 1);
--INSERT INTO responsibilities (description, profession_name_id) VALUES("", 1);
--INSERT INTO responsibilities (description, profession_name_id) VALUES("", 1);
--INSERT INTO responsibilities (description, profession_name_id) VALUES("", 1);
--INSERT INTO responsibilities (description, profession_name_id) VALUES("", 1);
--INSERT INTO responsibilities (description, profession_name_id) VALUES("", 1);


INSERT INTO accountabilities (description, profession_name_id) VALUES("Апаратні компоненти", 1);
INSERT INTO accountabilities (description, profession_name_id) VALUES("Програмні компоненти", 1);
