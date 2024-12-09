Feature : Zakup produktu w sklepie internetowym smyk.com

Scenario : Użytkownik wyszukuje, dokonuje zakupu oraz waliduje zakup
  Given użytkownik jest na stronie głównej sklepu smyk.com
  When użytkownik wpisuje "klocki" w pole wyszukiwania
  And użytkownik klika przycisk "Szukaj"
  Then wyświetla się lista produktów "klocki"
  
  When użytkownik wybiera dowolny produkt z listy
  Then system przenosi użytkownika na stronę produktu
  
  When użytkownik klika przycisk "Dodaj do koszyka"
  Then  wyświetlona informacja - "Produkt dodany do koszyka"
  
  When użytkownik klika ikonę koszyka 
  Then system wyświetla zawartość koszyka

  When użytkownik klika przycisk "Przejdź dalej"
  Then system przenosi użytkownika do strony logowania

  When użytkownik uzupełnia dane logowania
  Then system przenosi użytkownika do formularza zamówienia
  
  When użytkownik wypełnia formularz zamówienia 
  And użytkownik klika przycisk "Zamów i zapłać"
  Then system kieruje na stronę płatności
  
  When użytkownik opłaca zamówienie
  Then system wyświetla potwierdzenie zakupu 