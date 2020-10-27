

# File che gestisce la navigigazione della pagina
# principale e quella dell'amministratore.

from django.conf.urls import url
from django.contrib import admin
from home import views

urlpatterns = [
    url(r'^$', views.HomeView.as_view(), name='index'),
    url(r'^/admin/', admin.site.urls)

]