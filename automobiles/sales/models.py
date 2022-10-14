from datetime import datetime
from django.db import models


class Color(models.Model):
    color = models.CharField(verbose_name='цвет авто', max_length=30)

    class Meta:
        verbose_name = 'Цвет'
        verbose_name_plural = 'Цвета'

    def __str__(self):
        return self.color


class BrandAuto(models.Model):
    brand = models.CharField(verbose_name='марка авто', max_length=50)

    class Meta:
        verbose_name = 'Марка авто'
        verbose_name_plural = 'Марки авто'

    def __str__(self):
        return self.brand


class ModelAuto(models.Model):
    brand_auto = models.ForeignKey(BrandAuto, on_delete=models.CASCADE, default=1)
    model_auto = models.CharField(verbose_name='модель авто', max_length=100)

    class Meta:
        verbose_name = 'Модель авто'
        verbose_name_plural = 'Модели авто'

    def __str__(self):
        return self.model_auto


class OrderBuy(models.Model):
    auto_color = models.ForeignKey(Color, on_delete=models.PROTECT)
    auto_brand = models.ForeignKey(BrandAuto, on_delete=models.CASCADE, default=1)
    auto_model = models.ForeignKey(ModelAuto, on_delete=models.CASCADE)
    amount = models.IntegerField(default=1)
    date = models.DateTimeField(default=datetime.now)

    def __str__(self):
        return self.pk

    class Meta:
        verbose_name = 'Заказ'
        verbose_name_plural = 'Заказы'
