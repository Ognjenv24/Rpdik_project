# Projekat: Multiplekser 32/1

## Predmet: Računarsko projektovanje digitalnih integrisanih kola

**Mentor:** Kristina Nikolić  
**Autor:** Ognjen Višnjić, EE 217/2020  
**Datum:** 23.01.2024.  

---

## Sadržaj

1. [Uvod](#uvod)
2. [Teorijska analiza](#teorijska-analiza)
3. [Projektovanje multipleksera](#projektovanje-multipleksera)
   - [Multiplekser 4/1](#multiplekser-4/1)
   - [Multiplekser 8/1](#multiplekser-8/1)
   - [Multiplekser 32/1](#multiplekser-32/1)
4. [Implementacija u VHDL-u](#implementacija-u-vhdl-u)
   - [Kod za multiplekser 4/1](#kod-za-multiplekser-4/1)
   - [Kod za multiplekser 8/1](#kod-za-multiplekser-8/1)
   - [Kod za multiplekser 32/1](#kod-za-multiplekser-32/1)
   - [Testiranje multipleksera 32/1](#testiranje-multipleksera-32/1)
5. [Sinteza i implementacija](#sinteza-i-implementacija)
6. [Zaključak](#zaključak)

---

## Uvod

Tema ovog projekta je realizacija **multipleksera 32/1** korišćenjem **multipleksera 8/1**, koji su izvedeni iz **multipleksera 4/1** uz dodatna logička kola. Ovaj projekat uključuje teorijsku analizu, implementaciju u VHDL-u, simulaciju, sintezu i fizičku implementaciju kola.

---

## Teorijska analiza

**Multiplekser** je digitalno kolo koje prosleđuje jedan od više ulaznih signala na izlaz u zavisnosti od kontrolnog signala.

Karakteristike:
- **Brzina prenosa** zavisi od propagacionog kašnjenja.
- **Veličina kontrolnog signala** direktno utiče na broj ulaza.
- **Osetljivost na šum** može uticati na tačnost rada kola.

Formula za proračun izlaznog napona:
\[ V_{out} = f(V_{in}, V_{th}) \]

gde su:
- \( V_{in} \) - ulazni napon,
- \( V_{out} \) - izlazni napon,
- \( V_{th} \) - prag napona tranzistora.

---

## Projektovanje multipleksera

### Multiplekser 4/1
- **Ulazi:** \( D_0, D_1, D_2, D_3 \)
- **Selektorski signal:** \( S_1, S_0 \)
- **Izlaz:** \( Y \)

| \( S_1S_0 \) | \( Y \)  |
|------|------|
| 00   | D0   |
| 01   | D1   |
| 10   | D2   |
| 11   | D3   |

### Multiplekser 8/1
- **Ulazi:** \( D_0, D_1, ..., D_7 \)
- **Selektorski signal:** \( S_2, S_1, S_0 \)
- **Izlaz:** \( Y \)

| \( S_2S_1S_0 \) | \( Y \)  |
|------|------|
| 000  | D0   |
| 001  | D1   |
| ...  | ...  |
| 111  | D7   |

### Multiplekser 32/1
- **Ulazi:** \( D_0, D_1, ..., D_{31} \)
- **Selektorski signal:** \( S_4, S_3, S_2, S_1, S_0 \)
- **Izlaz:** \( Y \)

Realizacija je izvedena **korišćenjem isključivo multipleksera 8/1**.

---

## Implementacija u VHDL-u

### Kod za multiplekser 4/1
VHDL kod implementira osnovni **4-na-1 multiplekser**.

### Kod za multiplekser 8/1
Realizovan **koristeći dva 4/1 multipleksera** i dodatnu logiku za selekciju.

### Kod za multiplekser 32/1
**Koristi 4 multipleksera 8/1** kako bi se dobio konačni izlaz.

### Testiranje multipleksera 32/1
- Testbench simulira rad multipleksera.
- Verifikuje da li izlaz odgovara selektovanom ulazu.

---

## Sinteza i implementacija

### Sinteza u **Genus Synthesis Solution**
- Projektovan **šematik multipleksera 32/1** u **0.35µm AMS (C35B4) tehnologiji**.

### Implementacija u **Innovus Implementation System**
- Generisan **lejaut** kola u istoj tehnologiji.

---

## Zaključak

Projekat je obuhvatio:
- Teorijsku analizu rada multipleksera.
- Implementaciju u VHDL-u.
- Simulaciju funkcionalnosti.
- Sintezu i fizičku implementaciju.

### Prednosti:
- Modularnost dizajna.
- Skalabilnost sistema.

### Ograničenja:
- Propagaciono kašnjenje kroz više nivoa multipleksera.
- Povećanje složenosti logičkih kola.

Projekat pruža osnovu za dalje istraživanje i optimizaciju multipleksera 32/1 u VHDL-u i FPGA implementaciji.

