

# File contenente la struttura personalizzata
# del form di registrazione di un utente.


from django import forms
from django.contrib.auth.models import User
from django.contrib.auth.forms import UserCreationForm, \
    UserChangeForm, ReadOnlyPasswordHashField
from prestito.models import UserProfile


# Eredita dal modello il form di base da UserCreationForm.
# Per essere piu' completo, viene aggiunto anche un campo email,
# che verra' salvato poi nella base di dati.

class RegistrationForm (UserCreationForm):
    email = forms.EmailField(required=True)

    # Questa classe conterra' i meta-dati della classe di registrazione
    class Meta:
        model = User
        fields = [
            'username',
            'first_name',
            'last_name',
            'email',
            'password1',
            'password2'
        ]

    def save(self, commit=True):
        user = super (RegistrationForm, self).save(commit=False)
        user.first_name = self.cleaned_data['first_name']
        user.last_name = self.cleaned_data['last_name']
        user.email = self.cleaned_data['email']
        password = self.cleaned_data['password1']

        # crifra la password per essere salvata nel db
        user.set_password(password)
        user.save()

        nuovo = UserProfile(
            user = user,
            email = user.email,
            nome = user.first_name,
            cognome = user.last_name
        )
        nuovo.save()

        return user


# Viene creato questo form, che eredita dal form predefinito
# 'UserChangeForm', per dare la possiblità all'utente di modificare
# le proprie credenziali inserite in fase di registrazione.

class EditProfileForm (UserChangeForm):

    password = ReadOnlyPasswordHashField()

    #Specifica i meta-dati per la classe di modifica delle informazioni
    #dell'utente registrato
    class Meta:
        model = User
        fields = [
            'email',
            'username',
            'first_name',
            'last_name',
            'password'
        ]

    # Modifica email, nome e cognome
    def elementi(self):
        email = self.cleaned_data['email']
        nome = self.cleaned_data['first_name']
        cognome = self.cleaned_data['last_name']

        lista = [email, nome, cognome]
        return lista






