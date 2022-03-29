# Markdown Kullanımı

## Markdown Nedir, Ne Amaçla Kullanılır?

Markdown, yazılarımızı düz metin olarak yazmamıza imkan veren işaretleme/biçimlendirme dilidir (_markup language_).  Markdown'ın temel amacı, metnimizi kolayca hazırlamak ve düz metin haliyle bile metnin rahatça okunmasını sağlamaktır. <a href="http://example.com/" target="_blank">example</a>

## Örneklerle Sözdizim (_syntax_) kuralları

[Başlık](#Başlık)

[Vurgulama](#Vurgulama)

[Maddeleme ve Sıralama](#Maddeleme-ve-Sıralama)

[Bağlantı](#Bağlantı)

[Tablo](#Tablo)

[Resim](#Resim)

[Kod](#Kod)

[Alıntı](#Alıntı)


### Başlık

```
# 1. Başlık
## 2. Alt Başlık
### 3. Alt Başlık
```

# 1. Başlık
## 2. Alt Başlık
### 3. Alt Başlık

### Vurgulama

```
**kalın** __kalın__

*italik* _italik_

**_kalın ve italik_**
```

**kalın** __kalın__

*italik* _italik_

**_kalın ve italik_**

### Maddeleme ve Sıralama

*Maddeleme:*

```
- Maddde 1
- Madde 2
- Madde 3
  * Alt madde a
  * Alt madde b
    - Fıkra i
    - Fıkra ii
```
- Maddde 1
- Madde 2
- Madde 3
  * Alt madde a
  * Alt madde b
    - Fıkra i
    - Fıkra ii

*Sıralama:*

```
1. Birinci
2. İkinci
```
1. Birinci
2. İkinci


### Bağlantı

```
[Bağlantı](https://github.com/kaymal)

[Başlıklı Bağlantı](https://github.com/kaymal "GitHub Sayfam")
```

[Bağlantı](https://github.com/kaymal)

[Başlıklı Bağlantı](https://github.com/kaymal "GitHub Sayfam")


```
[Referans 1][1]
[Referans 2][2]

YazıYazıYazıYazıYazıYazıYazıYazıYazıYazı
YazıYazıYazıYazıYazıYazıYazıYazı.

Referanslar sayfanın en sonuna yazılabilir. Sayfada gozukmez.

[1]: https://github.com/kaymal
[2]: https://github.com/
```

[Referans 1][1]

[Referans 2][2]

YazıYazıYazıYazıYazıYazıYazıYazıYazıYazı
YazıYazıYazıYazıYazıYazıYazıYazı.

[1]: https://github.com/kaymal
[2]: https://github.com/



### Tablo
```
|   | Fiyat   | Adet  |
| --|:-------:| :-----|
| A | 1000TL  | 1     |
| B | 100TL   | 10    |
| C | 1TL     | 1000  |

```
|   | Fiyat   | Adet  |
| --|:-------:| -----:|
| A | 1000TL  | 1     |
| B | 100TL   | 10    |
| C | 1TL     | 1000  |

### Basit Tablo
Başlık-1|Başlık-2
--|--
do         |a..!do
cf         |a..!cf
gh         |a..!gh
isimt      |q..q
gmail      |a..!+
ydx.com.tr |a..++
turkiye    |dr++++
ffsync     |dr++
sahib      |q..sc
insta      |q..ig+
twitt      |q..tw
fb         |q..fb+



### Resim/Görsel
```
Resim: 
![alt yazı][resim]

[resim]: https://www.freeiconspng.com/uploads/github-logo-icon-0.png"Resim Başlığı"
```


Resim: 
![alt yazı][resim]

[resim]: https://www.freeiconspng.com/uploads/github-logo-icon-0.png "Resim Başlığı"

### Kod

#### Yazı İçinde Kod
```
asdf asdf adf `kod` asdf asdf.
```

asdf asdf adf `kod` asdf asdf.

#### Kod Bloğu
\```\
asdf

\```

```
asdf
```

### Alıntı
```
> Alıntı 1

>> Alıntı 2

>>> Alıntı 3
```
> Alıntı 1

>> Alıntı 2

>>> Alıntı 3

## Markdown Nedir

Markdown, düz-metin-biçimlendirme sözdizimine sahip hafif bir işaretleme dili. Tasarımı, birçok çıktı biçimine dönüştürülmesine izin verir, ancak aynı ada sahip orijinal araç yalnızca HTML'yi destekler.[5] Markdown genellikle BENİOKU (README) dosyalarını biçimlendirmek, çevrimiçi tartışma forumlarına mesaj yazmak ve düz metin düzenleyicisi kullanarak zengin metin oluşturmak için kullanılır.

Markdown’un ilk tanımı belirsizlikler ve cevaplanmamış sorular içerdiğinden, yıllar boyunca ortaya çıkan uygulamaların ince farklılıkları vardır ve çoğu sözdizimi, dosya uzantılarıyla birlikte gelir. 

## Tarihçe

John Gruber, Markdown dilini 2004 yılında Aaron Swartz ile sözdiziminde işbirliği yaparak oluşturdu, insanların okuma ve yazması kolay düz metin biçimini kullanarak isteğe bağlı olarak XHTML'ye veya HTML'e dönüştürme amacını taşıyordu.

Bir diğer güzel kaynak: https://prototurk.com/makaleler/markdown-nedir-nasil-kullanilir

