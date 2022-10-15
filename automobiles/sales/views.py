from django.shortcuts import render
from rest_framework import generics
from rest_framework.permissions import IsAuthenticatedOrReadOnly
from .models import *
from .serializers import *


class ZakazAPIList(generics.ListCreateAPIView):
    queryset = OrderBuy.objects.all()
    serializer_class = Zakaz


class ZakazAPIDetail(generics.RetrieveAPIView):
    queryset = OrderBuy.objects.all()
    serializer_class = Zakaz


class ZakazAPIUpdate(generics.RetrieveUpdateAPIView):
    queryset = OrderBuy.objects.all()
    serializer_class = Zakaz


class ZakazAPIDelete(generics.RetrieveDestroyAPIView):
    queryset = OrderBuy.objects.all()
    serializer_class = Zakaz


class ZakazAPIFilter(generics.ListAPIView):
    queryset = OrderBuy.objects.all().order_by('amount')
    serializer_class = Zakaz


class ZakazAPIFilterMarkAuto(generics.ListAPIView):
    queryset = OrderBuy.objects.all().order_by('auto_brand')
    serializer_class = Zakaz

