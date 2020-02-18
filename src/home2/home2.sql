DROP DATABASE if exists library ;

CREATE DATABASE library;

USE library;

CREATE TABLE books (
id int not null primary key auto_increment,
title varchar (120) not null,
description text,
date_of_publication date not null default "2018-01-01",
category varchar (50) not null default "Категорія відсутня",
isbn bigint (30) unique not null,
count_of_pages int  not null,
name_of_author varchar (45) not null,
sername_of_author varchar (45) not null,
email_of_author varchar (50) not null unique,
age_of_author int(10) not null,
data_of_birthday date not null,
author_awards varchar(120) 
);

INSERT INTO books (title, description, date_of_publication, category, isbn, count_of_pages, name_of_author, 
sername_of_author, email_of_author, age_of_author, data_of_birthday, author_awards)
VALUES 
("Чартер со смертью",
"Шкипер Алексей с напарником Тимуром по поручению хозяина перегоняют недавно купленную яхту в порт Дубровника. Узнав, что хозяин яхты отправился на трехнедельный отдых в Индокитай, Леша с Тимуром решают подзаработать — провести «левый» чартер. Через Интернет они находят желающих отправиться в Грецию. Но из-за личных обстоятельств Тимур отказывается от затеи. И напарницей Леши становится Света, с которой он случайно знакомится в аэропорту. Парень рассказывает ей о предстоящем путешествии на яхте, и Света соглашается на заманчивое предложение. Она и не догадывается, чем обернется для нее эта авантюра…",
"2015-09-07",
"Детективы",
"9786171271388",
"336",
"Сергей",
"Пономаренко",
"ponomarenko.s@mail.com",
"43",
"1965-12-05",
null
),
("Маленькие женщины",
"У кожній з юних сестер Марч було щось особливе. Серйозна не по роках красуня Маргарет, життєрадісна Джо, добросерда Бет і чарівна Емі. Вони стали одна для одної міцною опорою і підтримкою, коли їхній батько відправився на війну. Всі радості ділилися на чотирьох. Всі прикрощі - теж. Але безтурботне дитинство змінюється новими дорослими проблемами і почуттями. І не всі вже можна поділити на чотирьох. Особливо якщо мова йде про кохання - перше і палке, привабливе і п'янке...",
"2005-06-10",
default,
"9786171247635",
"576",
"Луїза",
"Олкот",
"luiza@mail.com",
"50",
"1950-09-26",
"АБС-премия"
),
("Хроніки Нарнії. Повна історія чарівного світу",
"Колись добіжить кінця вік чарівної яблуні і з її стовбура виготовлять велику платтяну шафу. Довгі роки вона слугуватиме лише для зберігання пальт і шуб у будинку самотнього професора. Та одного дощового дня Пітер, Сьюзан, Едмунд і Люсі заховаються в ній від суворої домогосподарки. І потраплять у Нарнію — країну, яка відчиняє потаємні двері лише тим, хто щиро вірить у дива. Могутній лев Аслан — цар звірів і володар усього сущого, зла Біла Чаклунка з крижаним серцем, дивовижні казкові істоти та звірі, що вміють розмовляти, четверо дітей, які стануть нарнійськими королями й королевами та раз у раз повертатимуться зі світу людей, щоб урятувати Нарнію від темних сил… На сторінках семи частин фентезійної хроніки герої Льюїса вкотре доведуть, що зло завжди буде переможене добром. Для цього треба лише повірити хоча б у малесеньке диво!",
"1969-08-07",
"Детям от 12 лет , Книги для подростков",
"9786171271227",
"912",
"Клайв",
"Льюїс",
"klaiv@mail.com",
"45",
"1964-07-04",
"Гонкуровская премия"
),
("Колдовское Таро. Открой свою судьбу",
"Карты Таро — один из древнейших способов предсказания грядущего. Карты дадут ответы на вопросы о будущем, любви, деньгах, карьере и многом другом. Нужно только знать, как правильно задать вопросы и уметь прочесть ответы. Теперь и у вас будет своя колода карт Таро, чтобы сразу приступить к практике!",
 "2019-07-19",
"Эзотерика",
"9786171268853",
"304",
"Эллен",
"Друган",
"drugan@mail.com",
"32",
"1985-11-25",
"Гонкуровская премия"
),
("Мазепа",
"На сторінках роману читачі зустрінуться з відомими історичними персонажами...",
"2011-02-23",
"Роман",
9789664815175,
478,
"Богдан",
"Лепкий",
"lepkiy@gmail.com",
68,
"1872-11-04",
null
),
("Все,що я хотіла сьогодні",
"Цю книжку я написала спеціально для молодих дівчат,щоб вони не робили дурних помилок і завжди залишалися собою",
"2014-09-21",
"Роман",
9789661447119,
236,
"Ірен",
"Роздобудько",
"rosdobudko@ukr.net",
"57",
"1962-11-03",
null
),
("Агнес Грей",
"Юная Агнес вынуждена искать любую работу, чтобы помочь своей семье. Скромная и застенчивая, девушка видит свое призвание в воспитании детей. Агнес становится гувернанткой в богатой семье. Избалованные дети ужасают девушку своим бессердечием. Но у нее нет выбора, кроме как смириться и продолжать свою работу, несмотря ни на что. Однажды Агнес знакомится с молодым священником в местной церкви, Уэстоном. Его слова рождают в ней неведомые ранее чувства. Но вскоре девушка вынуждена покинуть родные края. Уэстон понимает, что, отпустив ее, рискует потерять навсегда. Если только судьба не даст им шанс встретиться снова…",
"2013-08-27",
"Классика",
"9786171276123",
"288",
"Энн  ",
"Бронте ",
"bronte@mail.com",
"74",
"1932-07-06",
"Пулитцеровская премия "
),
("Я всегда буду с тобой",
"Александр получает от старого друга Антона предложение занять высокий пост в фирме. Антон поднялся из самых низов и теперь задумал новый проект в столице. На новом месте Саша знакомится с Катей — главным бухгалтером фирмы Антона. В эту рыжеволосую зеленоглазую красавицу невозможно было не влюбиться. Да и сама Катя совсем не против ухаживаний со стороны Александра. Внезапно фирму Антона начинает атаковать опасный конкурент. На почту приходят анонимные угрозы с требованием продать бизнес и убраться с чужой территории. Чудом удается предотвратить теракт в цеху. Кажется, атака успешно отбита. Но кто-то похищает Лилию, жену Антона. Самое ценное, что есть у него в его жизни. Мужчины вступают в опасную игру…",
"2020-01-07",
"Романы о любви",
"9786171274655",
"400",
"Светлана",
"Алексеева",
"svet.alex@mail.com",
"34",
"1982-05-05",
null
),
("Ті,що співають у терні",
"У центрі сюжету — життя сім'ї Клірі. Родина зробила шлях від новозеландських бідняків до управителів одного з найбільших австралійських маєтків Дрогеди.",
"2017-02-05",
"Роман",
9786171224667,
685,
"Колін",
"Маккалоу",
"kolin@gmail.com",
"77",
"1937-06-01",
null
),
("Останнє полювання",
"Через кілька років після справи, яка зламала його фізично й душевно, легендарний детектив П’єр Ньєман нарешті знову в ділі. Зі своєю ученицею й напарницею Іваною він вирушає до Німеччини, у Чорнолісся — край легенд, де досі живуть привиди давно минулих років, гніздяться найтемніші кошмари, а під гіллям гінких сосен ховаються найстрашніші таємниці. Ньєман починає нове розслідування: про вбивство спадкоємця багатого аристократичного роду. Чоловіка було не просто вбито, а зарізано, неначе кабана, на якого він так любив полювати у своїх володіннях. Ньєманові не звикати до кривавих злочинів, але він іще не знає, що під час розслідування йому доведеться зустрітися з найбільшим страхом усього свого життя. І зазирнути в його чорні, мов ліс, очі… ",
"2017-02-27",
"Детективы",
"9786171274433",
"384",
"Жан-Крістоф",
"Ґранже",
"granggge@mail.com",
"37",
"1988-08-03",
null
),
("Психологія впливу",
"Ця книга, яка вже давно стала підручником для менеджерів, підприємців і взагалі всіх, хто бажає опанувати мистецтво впливу, навчить вас розуміти поведінку інших, уникати маніпуляторів людською свідомістю та спілкуватися, завжди досягаючи поставлених задач.",
default,
"Психология , Бизнес и саморазвитие",
"9786171233522",
"352",
"Роберт",
"Чалдині",
"chaldini@mail.com",
"47",
"1978-10-29",
"Премия Х.К. Андерсена"
),
("Містер Мерседес",
"Спогади про нерозкритий злочин не дають спокою колишньому поліцейському Біллу Годжесу. Він мав упіймати злочинця, який на вкраденому «мерседесі» навмисне вбив та покалічив десятки людей, але…",
"1956-09-12",
"Сучасна проза",
9786171274744,
544,
"Стівен",
"Кінг",
"king@gmail.com",
"72",
"1947-09-21",
null
),
("Кристин, дочь Лавранса",
"Историческая трилогия норвежской писательницы Сигрид Унсет была удостоена Нобелевской премии 1929 года. Действие происходит в средневековой Норвегии. Юная Кристин – дочь богатого землевладельца Лавранса. Девушка живет, повинуясь голосу сердца. Вопреки условностям и традициям, она связала свою судьбу с легкомысленным рыцарем Эрландом. Много страданий выпадает на долю прекрасной женщины. С годами приходит к ней мудрость и сила духа. Это история о любви и верности, о высокой цене, которую порой приходится платить за исполнение желаний. В издание входят все три части романа — «Венец», «Хозяйка» и «Крест».",
"2005-09-28",
"Приключенческие",
"9785389135697",
"1120",
"Сингрид ",
"Унсет ",
"sinred@mail.com",
"36",
"1985-09-26",
"Премия Х.К. Андерсена"
),
("Нова стара баба",
default,
"2013-01-01",
"Роман",
9789661463041,
268,
"Лариса",
"Денисенко",
"denysenlo@gmail.com",
"46",
"1973-06-17",
null
),
("Королівський убивця. Assassin 2",
"Позашлюбний син принца-наступника. Той, кого переслідувала смерть. Той, хто сам став смертю. Маленький хлопчик, що виріс у холоднокровного найманого вбивцю. На нього чекав шлях мовчазного найманця, покірного служки свого короля. Але тепер Фітц — мисливець на «перекованих», людей, у яких було знищено все людське. Його місія небезпечна. Одна похибка може вартувати життя. Та Фітц не сам. Слід у слід за ним ступає приручений та вихований ним вовк Нічноокий. Наближається час перевороту. Час, коли Фітц має виконати своє призначення. Його переслідуватимуть, на нього полюватимуть. І якщо він хоче врятуватися — він має забути про людську подобу. І стати вовком…",
"2009-10-08",
"Фантастика, фэнтези",
"9786171261891",
"688",
"Гобб  ",
"Робін  ",
"gobb.robin@mail.com",
"54",
"1968-09-26",
"Книжная премия Рунета"
),
("Позывной «Крест»",
"Виктор Лавров, бывший спецназовец КГБ, получает задание от настоятеля монастыря найти похищенную реликвию, десницу Иоанна Крестителя. Напарницей Лаврова становится Светлана Соломина, по легенде сербка из Белграда. Но настоящее прошлое девушки под грифом «секретно». Следы похищенной десницы ведут в Сирию, раздираемую гражданской войной. Лавров и Соломина оказываются в самом пекле. ",
"2003-11-01",
default,
"9786171274402",
"496",
"Константин",
"Стогний ",
"k.stognyn@mail.com",
"44",
"1988-02-16",
null
),
("Чарлі і великий скляний ліфт",
"Роальда Дала називають одним з найбільших дитячих письменників ХХ століття і «літературним батьком» Джоан Ролінґ. «Чарлі і великий скляний ліфт» — карколомне продовження найпопулярнішої повісті Р. Дала «Чарлі і шоколадна фабрика» — однієї з тих книжок, які необхідно прочитати кожній дитині. Великий скляний ліфт, створений незрівнянним містером Віллі Вонкою, злітає у відкритий космос, і тут починається просто неймовірний сюжет...",
"2014-06-18",
"Детям 7-12 лет",
"9786175851760",
"272",
"Роальд",
"Дал ",
"ro.dal@mail.com",
"55",
"1987-03-18",
null
),
("Грозовой Перевал",
"Это история роковой любви Хитклифа, приемного сына владельца поместья Грозовой Перевал, к дочери хозяина Кэтрин.
Начало событиям положил один вроде бы добрый и безобидный поступок: хозяин поместья спас и приютил маленького беспризорного мальчика Хитклифа. Если бы он знал, к какому бурному круговороту событий это приведет...",
"2001-05-11",
"Классика",
"9786171270985",
"416",
"Эмили ",
"Бронте",
"brontee@mail.com",
"64",
"1968-03-18",
"200 лучших книг по версии BBC"
),
("Містер Мерседес",
"Спогади про нерозкритий злочин не дають спокою колишньому поліцейському Біллу Годжесу. Він мав упіймати злочинця, який на вкраденому «мерседесі» навмисне вбив та покалічив десятки людей, але… Одного дня Білл отримує листа від того самого таємничого вбивці. Він обіцяє, що наступного разу жертв буде більше! Це був тільки початок… Білл знову повертається до роботи. Ставки в цій смертельній грі надто високі…",
"2017-06-08",
"Современные авторы",
"9786171274754",
"544",
"Стивен ",
"Кинг",
"king@mail.com",
"55",
"1975-02-08",
"Букеровская премия"
),
("Гніздо Кажана",
"Данило Кажанівський продав душу дияволу. Скільки дівочих душ він занапастив! Коли одна дівчина наклала на себе руки, козак Ілько Косозуб зібрав людей для помсти, і Данила спалили. 
Минуло майже сто років. У Миргороді планує весілля Роман Кажанівський, його наречена Ліза мала б радіти… якби не цей холод між ними. Натомість вона все частіше думає про Ярослава, кузена Романа та господаря маєтку «Гніздо Кажана». Чорні язики кажуть, що він ще гірший від свого предка. Та її нестримно тягне до нього. Між ними — прірва і гострі уламки минулого. Аби не втратити Лізу, Роман розповідає, що Ярослав — справжнє чудовисько. Та поступово Ліза усвідомлює, що справжній монстр не завжди той, що з чорними крилами…",
default,
"Историко-приключенческие",
"9786171271357",
"336",
"Дарина ",
"Гнатко",
"gnatko.d@mail.com",
"35",
"1985-03-18",
"Книжная премия Рунета "
),
("Аномалія",
"Гамбург, наші дні. Науковця Александера Бунге знаходять мертвим у власному кабінеті. Він був одним з учасників експериментів з виявлення гравітаційної аномалії в кристалах. Агент спецслужби Маркус Бруннер починає розслідування. ",
"2018-09-28",
default,
"9786171274358",
"384",
"Андрій ",
"Новік",
"anovik@mail.com",
"35",
"1990-02-08",
null
),
("Sapiens. Людина розумна. Історія людства від минулого до майбутнього",
"Дослідження, що ламає усталені уявлення про земну історію від появи людини й народження мови до наших днів та примушує задуматись: шлях розвитку наших предків міг бути зовсім іншим. Долучіться до історичної розвідки, і вас приголомшать неочікувані й сміливі припущення. У книжці ви не знайдете нудної хронології і сухих дат, але разом з автором будете розмірковувати про численні «чому?»",
"2015-06-18",
"Учебная литература",
"9786171215313",
"544",
"Юваль",
"Харари",
"hararari@mail.com",
"39",
"1981-02-08",
"Світовий бестселер № 1 за версією The New York Times"
),
("Мэри Бартон",
"Мэри Бартон — дочь манчестерского ткача. Она красива и ума, но бедна, как и вся ее семья. Девушка мечтает вырваться из нищеты. И ухаживания богатого Гарри Карсона оказываются очень кстати. Желая выйти за него замуж, девушка отвергает влюбленного в нее Джема Уилсона, простого парня и друга детства. Казалось бы, сделанный выбор подарит Мэри счастье. Ее семья больше не будет нуждаться и нищенствовать. Их будут почитать и уважать. Трагическая и внезапная смерть Гарри перечеркивает все. В убийстве юноши обвиняют Джема. Но он невиновен. И Мэри единственная может спасти его. И себя. Ведь только его она любила по-настоящему все это время…",
default,
default,
"9786171274518",
"528",
"Мэри",
"Бартон",
"bartoon@mail.com",
"33",
"1988-02-08",
null
),

("Джедайські техніки",
"Щоб усе встигнути — розставляй пріоритети. Знайома істина? Ще б пак! Та коли папка «Вхідні» от-от вибухне непрочитаними листам, невиконані справи буквально засипають з головою, а запас мислепалива падає до нульової позначки, здається, що час кликати на допомогу джедаїв. Однак не такий страшний дедлайн, як його малюють. І від прокрастинації втекти легше, аніж від Дарта Вейдера. Головне — навчитися максимально ефективно користуватися ресурсами, «мозковими» та часовими. І тут вже не обійтися без Майстра Йоди у сфері продуктивності.",
"2015-06-06",
"Психология",
"9786171251106",
"240",
"Максим",
"Дорофеев",
"m.dorofee@mail.com",
"45",
"1987-02-08",
null
),
("Чо́рна ра́да",
 default, 
 "1857-02-01",
 "Історичний роман",
 "978617121313",
 "323",
 "Пантелеймон",
 "Куліш", 
 "kylish@mail.com",
 "85",
 "1932-08-01",
 null
 );

select * from books;
select * from books where id = 5 or id = 10 or id = 13;
select * from books where count_of_pages > 150;
select * from books where age_of_author > 30;
select * from books where author_awards is null;
select * from books where email_of_author = "bartoon@mail.com";
select * from books where isbn = "9786171251106";
select * from books where category = "Психология";
select * from books where count_of_pages > 200 and age_of_author > 35;
select * from books where category = "Учебная литература" or category = "Историко-приключенческие";
select * from books order by title ASC;
select * from books order by email_of_author ASC;
select * from books order by count_of_pages DESC;
select distinct category from books;
select distinct name_of_author from books;
select * from books where date_of_publication > "2000-01-01";
select * from books where date_of_publication < "2000-01-01";