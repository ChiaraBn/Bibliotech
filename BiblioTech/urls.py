"""BiblioTech URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/2.1/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""

from django.contrib import admin
from django.conf.urls import url, include
from django.contrib.staticfiles.urls import staticfiles_urlpatterns

from . import views

# Indirizzi principali per la navigazione del progetto.
# Essendo nella applicazione principale, il compito di questo
# file e' quello di indirizzare, in base all'operazione, sui file
# specifici delle singole applicazioni presenti.

urlpatterns = [
    url(r'^$', include (('home.urls', 'home'), namespace='home')),
    url(r'^prestito/', include(('prestito.urls', 'prestito'), namespace='prestito')),
    url(r'^admin/', admin.site.urls),
    url(r'^recensione/', include(('recensione.urls','recensione'), namespace='recensione')),
    url(r'^portal/', include(('portal.urls', 'portal'), namespace='portal'))
]

urlpatterns += staticfiles_urlpatterns()








