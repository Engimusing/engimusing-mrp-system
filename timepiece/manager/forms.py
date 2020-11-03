from django import forms
from django.contrib.auth.models import User
from django.contrib.auth.forms import UserCreationForm, UserChangeForm
from django.forms.models import inlineformset_factory
from timepiece.manager.models import Project, ProjectRelationship
from timepiece.fields import UserModelMultipleChoiceField


class CreateEditProjectForm(forms.ModelForm):
    
    class Meta:
        model = Project
        fields = ('name', 'inactive') 

class EditProjectRelationshipForm(forms.ModelForm):
    user = forms.ModelMultipleChoiceField(widget=forms.CheckboxSelectMultiple(), queryset=User.objects.filter(is_active=True).order_by('first_name'))
    class Meta:
        model = ProjectRelationship
        exclude = ('project',)

ProjectRelationshipFormSet = inlineformset_factory(Project,
                                                   ProjectRelationship,
                                                   form=EditProjectRelationshipForm,
                                                   extra=1)

class ProjectCreateForm(forms.Form):
    name = forms.CharField(label='Name', max_length=60)
    inactive = forms.BooleanField(required=False)
    users = forms.ModelMultipleChoiceField(widget=forms.CheckboxSelectMultiple,
                                           queryset=User.objects.filter(is_active=True).order_by('first_name'), required=False)
   # activities = forms.CharField(label='Activities', widget=forms.TextInput(attrs={'rows': 1, 'cols': 90, 'max_length': 250}), required=True)


class EditUserForm(UserChangeForm):
    password1 = forms.CharField(
        required=False, max_length=36, label='Password',
        widget=forms.PasswordInput(render_value=False))
    password2 = forms.CharField(
        required=False, max_length=36, label='Repeat Password',
        widget=forms.PasswordInput(render_value=False))

    class Meta:
        model = User
        fields = ('username', 'first_name', 'last_name', 'email', 'is_active',
                  'is_staff', 'groups')

    def __init__(self, *args, **kwargs):
        super(EditUserForm, self).__init__(*args, **kwargs)
        self.fields['groups'].widget = forms.CheckboxSelectMultiple()
        self.fields['groups'].help_text = None

        # In 1.4 this field is created even if it is excluded in Meta.
        if 'password' in self.fields:
            del(self.fields['password'])

    def clean(self):
        super(EditUserForm, self).clean()
        password1 = self.cleaned_data.get('password1', None)
        password2 = self.cleaned_data.get('password2', None)
        if password1 and password1 != password2:
            raise forms.ValidationError('Passwords must match.')
        return self.cleaned_data

    def save(self, commit=True):
        instance = super(EditUserForm, self).save(commit=False)
        password1 = self.cleaned_data.get('password1', None)
        if password1:
            instance.set_password(password1)
        if commit:
            instance.save()
            self.save_m2m()
        return instance


class EditUserSettingsForm(forms.ModelForm):

    class Meta:
        model = User
        fields = ('first_name', 'last_name', 'email')

    def __init__(self, *args, **kwargs):
        super(EditUserSettingsForm, self).__init__(*args, **kwargs)
        for name in self.fields:
            self.fields[name].required = True

#used in Project detail view to assign to users
class SelectMultipleUserForm(forms.Form):
    user = UserModelMultipleChoiceField(label='', queryset=None, required=False)

    def __init__(self, *args, **kwargs):
        super(SelectMultipleUserForm, self).__init__(*args, **kwargs)
        queryset = User.objects.order_by('first_name')
        self.fields['user'].queryset = queryset

    def get_user(self):
        users = []
        user1 = self.cleaned_data['user'] if self.is_valid() else None
        for user in user1:
            users.append(user)
        return users


class DateForm(forms.DateInput):
    input_type = 'date'
    # input_formats = '%m-%d-%Y'


class SelectPayrollDate(forms.Form):
    # widget=DateForm, input_formats=['%m-%d-%Y']
    date = forms.DateField()


