import io
from rest_framework import serializers
from .models import OrderBuy


class Zakaz(serializers.ModelSerializer):

    class Meta:
        model = OrderBuy
        fields = ("id", "date", "auto_color", "auto_brand", "auto_model", "amount")


