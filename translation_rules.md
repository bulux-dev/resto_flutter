Translate the provided JSON data into the target language, adhering to the following *STRICT and DETAILED* rules.  These rules should be applied *literally*, even if the resulting translation appears awkward or unnatural. The goal is to provide a consistent and predictable output based on the defined rules, not necessarily the most fluent or natural-sounding translation. Fluency and naturalness will be addressed in a later review stage.

**I. Placeholder and Key Handling (Crucial):**

1.  **Untouchable Placeholders:** Leave placeholders like `${...}` and `@:<namespace>.<key>` *completely and absolutely untouched*.  Do *not* translate *any* text within these placeholders.  They represent dynamic values or keys that will be populated later.  Translating them will break the application.

2.  **Key Preservation:**  Specifically, for entries like `"key": "@:<namespace>.<key>"`, the *value* (e.g., `"@:common.logout"`) should *not* be translated.

3.  **All-Key Strings:** Strings that consist *exclusively* of `@:<namespace>.<key>` references (or `${...}` placeholders), with *no other text*, should be left completely untranslated. This is because they represent keys to be resolved at runtime.  For example:

    ```json
    "fullAddress": "@:address.street @:address.city @:address.zip" // Do NOT translate this
    ```

4. **Text Outside Keys (Crucial):** English words or phrases that are *outside* of the `@:<namespace>.<key>` values *must* be translated. This applies even if the text is adjacent to a key or within the same string. The key itself *must not* be translated.  **Crucially, strings containing keys *must* be *parsed* to identify individual words. The presence of spaces or punctuation *outside* the `@:<namespace>.<key>` structure indicates that the adjacent text is *not* part of the key and *must* be translated.**

   **Example 1:**
   ```json
   "myKadId": "@:common.myKad ID"  // Translate "ID" because it is separate text. "@:common.myKad" is a key and is not translated.
   ```

   **Example 2:**
   ```json
   "nomineeMobile": {
     "short": "@:common.nominee Mo. No.", // Translate "Mo. No." because it is separate text. "@:common.nominee" is a key and is not translated.
     "full": "@:common.nominee @:common.mobileNumber" // Do NOT translate this (all keys)
   },
   "officeMobileNo": "Office @:common.mobileNumber" // Translate "Office" because it is separate text. "@:common.mobileNumber" is a key and is not translated.
   ```

   **Example 3 (Addressing the specific issue):**
   ```json
   "relationWith": "@:common.relation With", // Translate "With" because it is separate text. "@:common.relation" is a key and is not translated.
   "relationWithYou": "@:common.relationWith You" // Translate "You" because it is separate text. "@:common.relationWith" is a key and is not translated.
   ```

   **Example 4 (More Varied Examples):**
   ```json
   "welcomeMessage": "Welcome to @:appName!" // Translate "Welcome to"
   "termsAndConditions": "Accept @:common.terms & @:common.conditions" // Translate "Accept", "&"
   "productDetails": "@:product.name - @:product.description" // Translate "-"
   "contactUs": "Contact @:company.name - @:company.email"  // Translate "Contact", "-"
   ```

   **Explanation:** The presence of spaces or punctuation *within* a string containing a key indicates that the text is not part of the key itself and therefore *must* be translated.  The key (`@:<namespace>.<key>`) *always* remains untranslated.
   
    4a. **Adjacent Text Rule:** Text immediately adjacent to a key, but separated by a space, punctuation, or other delimiter, is *not* considered part of the key and *must* be translated. The `@:<namespace>.<key>` structure defines an *absolute and inviolable boundary*. Text *outside* this boundary is always translatable, even if it appears visually close to the key.  **Example:**
    ```json
    "welcomeMessage": "Welcome to @:appName!" // Translate "Welcome to"
    "termsAndConditions": "Accept @:common.terms & @:common.conditions" // Translate "Accept", "&"
    "productDetails": "@:product.name - @:product.description" // Translate "-"
    "contactUs": "Contact @:company.name - @:company.email"  // Translate "Contact", "-"
     "version": "Version @:app.version (@:build.number)" // Translate "Version", "(", ")"


5. **Abbreviations:** Abbreviations that are *not* part of a key placeholder (i.e., they are text outside the `@:<namespace>.<key>` structure) *must* be translated. However, if the abbreviation is commonly understood and used *in the target language* (e.g., "ID," "No." in some languages), it *can* be retained in its original form. If unsure, *provide both the translated and original abbreviation* with an explanation of the context and which option you recommend.  **Example 1 (Spanish):** If translating to Spanish, and the string is `"Doc. No."`, you might provide: `"Nro. de Documento (Doc. No.)"`. Explain that "Nro. de Documento" is the standard Spanish abbreviation for "Número de Documento" (Document Number), but "Doc. No." is also commonly understood, and recommend which one you believe would be most appropriate. **Example 2 (German):** If translating to German and the string is `"Mo. No."`, you might provide: `"Mobilnummer (Mo. No.)"`. Explain that "Mobilnummer" is the standard German word for "Mobile Number," but "Mo. No." (or a similar German abbreviation) might also be understood in some contexts. Recommend which option you believe would be most appropriate. **Example 3 (French):** If translating to French and the string is `"Office Ph. No."`, you might provide: `"Numéro de téléphone du bureau (Office Ph. No.)"`. Explain that "Numéro de téléphone du bureau" is the standard French phrase for "Office Phone Number," but "Office Ph. No." is also commonly understood, and recommend which one you believe would be most appropriate.  **Example 4 (Japanese):** If translating to Japanese and the string is `"Dept. Head"`, you might provide: `"部署長 (Dept. Head)"`. Explain that "部署長" (busho-chō) is the standard Japanese translation for "Department Head," but "Dept. Head" might also be understood in some business contexts. Recommend which one you believe would be most appropriate. **Example 5 (Arabic):** If translating to Arabic and the string is `"Bldg. No."`, you might provide: `"رقم المبنى (Bldg. No.)"`. Explain that "رقم المبنى" (raqm al-mabnā) is the standard Arabic for "Building Number", but "Bldg. No." might be acceptable. Recommend which you believe is more appropriate. **Example 6 (Chinese):** If translating to Chinese and the string is `"Appt. Time"`, you might provide: `"预约时间 (Appt. Time)"`. Explain that "预约时间" (yù yuē shí jiān) is the standard Chinese for "Appointment Time," but "Appt. Time" is also commonly understood, especially in international contexts. Recommend which you believe is most appropriate. **Example 7:** If translating to Italian and the string is `"Mr. Smith"`, you might provide: `"Sig. Smith (Mr. Smith)"`. Explain that "Sig." is the common Italian abbreviation for "Signore" (Mr.), but "Mr." is also often used, especially in international contexts. Recommend which you believe is more appropriate.

**Example 1 (Spanish):** If translating to Spanish, and the string is `"Doc. No."`, you might provide: `"Nro. de Documento (Doc. No.)"`. Explain that "Nro. de Documento" is the standard Spanish abbreviation for "Número de Documento" (Document Number), but "Doc. No." is also commonly understood, and recommend which one you believe would be most appropriate.

**Example 2 (German):** If translating to German and the string is `"Mo. No."`, you might provide: `"Mobilnummer (Mo. No.)"`. Explain that "Mobilnummer" is the standard German word for "Mobile Number," but "Mo. No." (or a similar German abbreviation) might also be understood in some contexts.  Recommend which option you believe would be most appropriate.

**Example 3 (French):** If translating to French and the string is `"Office Ph. No."`, you might provide: `"Numéro de téléphone du bureau (Office Ph. No.)"`. Explain that "Numéro de téléphone du bureau" is the standard French phrase for "Office Phone Number," but "Office Ph. No." is also commonly understood, and recommend which one you believe would be most appropriate.

**Example 4 (Japanese):** If translating to Japanese and the string is `"Dept. Head"`, you might provide: `"部署長 (Dept. Head)"`. Explain that "部署長" (busho-chō) is the standard Japanese translation for "Department Head," but "Dept. Head" might also be understood in some business contexts. Recommend which one you believe would be most appropriate.

**Example 5 (Arabic):** If translating to Arabic and the string is `"Bldg. No."`, you might provide:  `"رقم المبنى (Bldg. No.)"`. Explain that "رقم المبنى" (raqm al-mabnā) is the standard Arabic for "Building Number", but "Bldg. No." might be acceptable. Recommend which you believe is more appropriate.

**Example 6 (Chinese):** If translating to Chinese and the string is `"Appt. Time"`, you might provide: `"预约时间 (Appt. Time)"`. Explain that "预约时间" (yù yuē shí jiān) is the standard Chinese for "Appointment Time," but "Appt. Time" is also commonly understood, especially in international contexts. Recommend which you believe is more appropriate.

**II. Context and Nuance:**

6.  **Context is King:** Pay extremely close attention to the context of each word and phrase.  Even seemingly simple words (e.g., "ID," "With," "You," "No") can have significantly different translations depending on how they are used in the sentence.  If unsure, provide multiple possible translations with explanations of the different contexts.

7.  **Nuance and Accuracy:** Strive for accurate and nuanced translations.  Avoid literal translations that might sound awkward or unnatural in the target language.  Prioritize conveying the *meaning* and *intent* of the original text.

**III. Contextual Examples:**

*   **"ID":** If "ID" refers to an identification number (e.g., "User ID"), the translation might be "ID" or "رقم التعريف". If it refers to a general identity, it could be "هوية" or "شخصية". Provide the correct translation *and explain the context*.

*   **"With":** "Relation With" could translate to "صلة القرابة مع". "Coffee With Milk" would be "قهوة مع حليب". Again, provide the translation *and the context*.

*   **"You":** "Relation With You" translates to "صلة القرابة معك". "Thank You" is "شكرا لك". Provide the translation *and the context*.

*   **(Add more examples as needed)**

**IV. Terminology and Style:**

8.  **Terminology Research:**  For specialized terms, abbreviations (e.g., "SSM No."), technical jargon, or proper nouns, research the correct translation or transliteration in the target language.  Direct translations are not always appropriate.  Provide the most accurate and commonly used equivalent.  If an abbreviation should be retained, explain why.

9.  **Style and Tone:** Maintain a consistent style and tone throughout the translation.  Consider the target audience and the overall tone of the application.  Should the translation be formal or informal?  Maintain consistency in tone throughout. Specify if you are unsure.

**V. Formatting and Structure:**

10. **Rich Text Handling:** Translate the text *outside* of rich text formatting instructions (e.g., `${note(...)}`, `${complete(...)}`), while leaving the instructions themselves *completely intact*.  Do *not* translate the text *inside* the parentheses of these instructions.

11. **JSON Structure:** Preserve the original JSON structure *exactly*. Do not add, remove, or modify any keys, values, or elements. Only translate the *values* of the keys, according to the rules above. The translated JSON must be a *perfect structural copy* of the original JSON.  **Example of what NOT to do:** If the original JSON contains `{"name": "John"}`, the translated JSON must *not* be `{"name": "Juan", "age": 30}`. Adding the `"age"` key is a violation of this rule.  **Further Examples of what NOT to do:**
    *   If the original JSON contains `{"address": {"street": "123 Main St"}}`, the translated JSON must *not* be `{"address": {"street": "Calle Principal 123", "city": "Madrid"}}`. Adding the `"city"` key *within* the nested `"address"` object is a violation of this rule.
    *   If the original JSON contains `{"contact": {"phone": "123-456-7890"}}`, the translated JSON must *not* be `{"contact": {"phone": "987-654-3210", "email": "test@example.com"}}`. Adding the `"email"` key *within* the nested `"contact"` object is a violation of this rule.
    *   If the original JSON contains `{"items": [{"name": "item1"}, {"name": "item2"}]}`, the translated JSON must *not* be `{"items": [{"name": "item1", "price": 10}, {"name": "item2"}]}`. Adding the `"price"` key to the first item in the array is a violation.  Similarly, adding or removing items from the array itself is a violation.
    *   If the original JSON contains `"greeting": "Hello, world!"`, the translated JSON must not be `{"greeting": "Hola, mundo!", "farewell": "Adiós"}`. Adding the `"farewell"` key at the top level is a violation.

**VI. Ambiguous Cases:**

If you encounter a word or phrase that has multiple possible meanings or translations, *provide all possible translations* along with a brief explanation of the different contexts in which each translation would be appropriate.  This will allow for better decision-making during the review process.  Do not make assumptions.

**VII. Tone and Register:** Consider the target audience and the overall tone of the application. Should the translation be formal or informal? Maintain consistency in tone throughout. Specify if you are unsure.

**VIII. Back-Translation (Optional but Recommended):**  If requested, provide a back-translation of your translated text into the original language (English).  This will help verify that the meaning has been accurately preserved.

**IX. Preferred Terminology (If Applicable):** If there are any specific terms or phrases that the client prefers to use (e.g., brand names, product names), these should be provided in advance. Otherwise, use the most common and appropriate translation.

**X. Feedback and Iteration:** Translation is an iterative process. Provide your initial translation, and be prepared to revise it based on feedback. A collaborative approach will ensure the best possible results.

**XI. Clarification:** If any part of the JSON is unclear or ambiguous, ask for clarification *before* starting the translation. It's better to ask questions upfront than to make assumptions that could lead to errors.

**XII. Target Language Code:** Provide the JSON data you want translated along with the correct target language code (e.g., "ar_AR Arabic", "bg_BG Bulgarian", "es_ES Spanish"). Use the appropriate language code format.

**XIII. Comment Handling:** JSON data *must not* contain comments. Any comments within the provided JSON will be removed before translation. Explanations or notes about the JSON (including suggestions for adding keys) should be provided *separately* from the JSON data, either before or after it, as shown in the examples. The JSON itself *must* be valid and parsable without any modifications.  Do not include comments within the JSON suggesting changes to the structure.

**XIV. JSON Structure Preservation (Crucial and Absolute):** The translated JSON *must* maintain the *exact, identical* structure as the original JSON. This means a *one-to-one* correspondence between the keys in the original JSON and the keys in the translated JSON. **Absolutely no keys, values, or elements may be added or removed.** The translated JSON should be a *perfect structural copy* of the original JSON, with only the *values* of the keys translated according to the other rules. Any deviation from this rule is considered a *strict error*.
**Specifically:**

*   **No New Keys:** If a key is not present in the original JSON, it *cannot* be added to the translated JSON, even if it seems logical, related, or improves consistency with other parts of the JSON.  **This rule is absolute.**

*   **No Comments about Added Keys:**  Do *not* add comments within the JSON or alongside it explaining why a key was added.  The JSON *must* remain a perfect structural copy.  If you believe a key *should* be added, discuss it *separately* from the translation, *before* making any changes to the JSON itself.

*   **No Changes to Nesting:** The nesting of objects and arrays within the JSON must be preserved exactly.  Do not add or remove levels of nesting.

**Examples of what NOT to do (Adding keys):**

Original JSON:
```json
{
  "name": "John Doe",
  "age": 30
}
```

Incorrect Translated JSON (Adding a key):
```json
{
  "name": "Juan Pérez",
  "age": 30,
  "country": "USA" // Key "country" added - NOT ALLOWED
}
```

Incorrect Translated JSON (Adding a key and a comment):
```json
{
  "name": "Juan Pérez",
  "age": 30,
  "country": "USA" // Key "country" added - NOT ALLOWED
  // Added "country" because it's relevant... - Comment NOT ALLOWED
}
```

Incorrect Translated JSON (Adding a key within a nested object):
```json
{
  "contact": {
    "email": "[email address removed]",
    "phone": "123-456-7890",
    "address": {
      "street": "123 Main St",
      "city": "Anytown",
      "country": "USA" // Key "country" added within nested "address" - NOT ALLOWED
    }
  }
}
```

Correct Translated JSON (Only translating values):
```json
{
  "name": "Juan Pérez",
  "age": 30
}
```

Correct Translated JSON (Only translating values within nested objects):
```json
{
  "contact": {
    "email": "[email address removed]",
    "phone": "987-654-3210",
    "address": {
      "street": "Calle Principal 123",
      "city": "Ciudad Ejemplo"
    }
  }
}
```


**XV. Test Cases:**
**Test Case 1:**
Original JSON:
```json
{"greeting": "Hello, @:user.name!"}
```
Correct Translated JSON (Spanish):
```json
{"greeting": "Hola, @:user.name!"}
```
**Test Case 2:**
Original JSON:
```json
{"product": "@:product.name - @:product.description (Size: @:product.size)"}
```
Correct Translated JSON (German):
```json
{"product": "@:product.name - @:product.beschreibung (Größe: @:product.size)"}
```

**XVI. Tooling Support:**
It is highly recommended to use tools that can assist with the translation process and ensure adherence to these rules.  Such tools might include:

* Placeholder identification and flagging.
* JSON structure validation.
* Translation memory and suggestion features.
Using these tools can significantly improve the efficiency and accuracy of the translation process.  (i.e slang_flutter or flutter_localization for flutter projects)