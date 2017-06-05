from django.conf.urls import url
from frequencies import views

urlpatterns = [
                url(r'^$', views.index, name='index')
              ]
