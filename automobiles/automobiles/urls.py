from .yasg import urlpatterns as doc_url
from django.contrib import admin
from django.urls import path
from sales.views import *

urlpatterns = [
    path('admin/', admin.site.urls),
    path('api/zakaz/', ZakazAPIList.as_view()),
    path('api/zakaz/<int:pk>/', ZakazAPIDetail.as_view()),
    path('api/zakaz/update/<int:pk>/', ZakazAPIUpdate.as_view()),
    path('api/zakaz/delete/<int:pk>/', ZakazAPIDelete.as_view()),
    path('api/zakaz/sort/', ZakazAPIFilter.as_view()),
    path('api/zakaz/sort_auto/', ZakazAPIFilter.as_view()),

]

urlpatterns += doc_url
