

# Questa pagina viene utilizzata per andare ad implementare un
# sistema di Middleware nella applicazione Django.
# Il middleware e' un un sistema di agganci che servono
# per gestire meglio le logiche di invio/richieste di oggetti.

import re
from django.conf import settings
from django.shortcuts import redirect
from django.contrib.auth import logout
from django.urls import reverse


# Vengono inclusi direttamente gli urls che gli utenti
# non loggati possono vedere
EXEMPT_URLS = [re.compile(settings.LOGIN_URL.lstrip('/'))]
if hasattr(settings,'LOGIN_EXEMPT_URLS'):
    #list comprehension per definire gli urls
    EXEMPT_URLS += [re.compile(url) for url in settings.LOGIN_EXEMPT_URLS]


# Gestisc le view che richiede il login
class LoginRequiredMiddleware:

    def __init__(self, get_response):
        self.get_response = get_response

    def __call__(self, request):
        response = self.get_response(request)
        return response


    # Viene attivata quando si stanno per caricare le views
    def process_view (self, request, view_func, view_args, view_kwargs):
        #si assicura che l'oggetto 'user' esista
        assert hasattr(request, 'user')

        # path_info e' l'url della pagina
        # alla quale si tenta di accedere
        path = request.path_info.lstrip('/')
        url_is_exempt = (url.match(path) for url in EXEMPT_URLS)

        # Per eseguire il logout prima di attivare la effettiva view
        # in modo tale da farlo risultare tale anche al middleware
        if path == reverse('portal:logout_user'):
            logout(request)


        # L'utente e' in una pagina alla quale puo' accedere
        if request.user.is_authenticated or url_is_exempt:
            return None

        else:
            #L'utente non puo' vedere la pagina alla quale sta accedendo
            return redirect(settings.LOGIN_URL)









