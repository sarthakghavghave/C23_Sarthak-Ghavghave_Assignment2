from django.urls import path
from .views import home, page1

urlpatterns = [
    path('', home, name='home'),
    path('page1/', page1, name='page1'),
]