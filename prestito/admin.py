

# File contenente le specifiche modifiche per la pagina
# dell'amministratore riguardanti i modelli della applicazione
# 'prestito'.

from django.contrib import admin
from .models import Book, UserProfile, Exchange

# Personalizzazione della visualizzazione dell'utente
# da parte dell'admin
class UserProfileAdmin (admin.ModelAdmin):
    list_display = ('user', 'first_name','last_name', 'email')

    # Ogni riga di utenti, sara' vista come un oggetto
    def email (self, obj):
        return obj.email

    def first_name (self, obj):
        return obj.nome

    def last_name (self, obj):
        return obj.cognome

    # Modifico l'ordine di ritorno dei parametri degli utenti
    def get_queryset(self, request):
        queryset = super(UserProfileAdmin, self).get_queryset(request)
        queryset = queryset.order_by('user')
        return queryset


# Personalizzazione del libro da parte dell'Admin
class BookAdmin (admin.ModelAdmin):
    list_display = ('titolo', 'autore')
    list_filter = ['autore']
    search_fields = ['titolo']

# Personalizzazione del modello 'exchange'.
class ExchangeAdmin (admin.ModelAdmin):
    list_display = ('utente', 'libro', 'data_inizio', 'data_fine')
    list_filter = ['data_inizio']

    def utente (self, obj):
        return obj.user_id

    def libro (self,obj):
        return obj.book_id


admin.site.register(Book, BookAdmin)
admin.site.register(UserProfile, UserProfileAdmin)
admin.site.register(Exchange, ExchangeAdmin)


