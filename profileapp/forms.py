from django.forms import ModelForm

from profileapp.models import Profile


class ProfileCreationFOrm(ModelForm):
    class Meta:
        model = Profile
        fields = ['images', 'nickname', 'message']
