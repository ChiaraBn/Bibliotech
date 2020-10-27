
from django.contrib import admin
from .models import Review


# Classe specifica che modifica la visualizzazione
# delle recensioni nella pagina dell'amministratore.
class ReviewAdmin(admin.ModelAdmin):
    list_display = ('user', 'book', 'data', 'voto', 'testo')
    list_filter = ['data']

    def user(self, obj):
        return obj.user_id

    def book(self, obj):
        return obj.book_id

    def data(self, obj):
        return obj.data

    def voto(self, obj):
        return obj.voto

    def testo(self, obj):
        return obj.testo


admin.site.register (Review, ReviewAdmin)

