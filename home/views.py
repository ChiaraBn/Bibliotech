
from django.views.generic.base import TemplateView
from django.shortcuts import render

from prestito.models import Book


# Utilizzo di Django Class based View.
# Così facendo e' possibile modificare i metodi 'get' e 'post',
# per andare a definire operazioni piu' specifiche.
# In questo casdo si richiama  il template della pagina iniziale,
# passando come argomento l'insieme dei libri.

class HomeView (TemplateView):
    template_name = 'home/index.html'

    def get(self, request):
        books = Book.objects.all()

        args = {'books': books}
        return render(request, self.template_name, args)











