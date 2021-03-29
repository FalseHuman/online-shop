from celery import task
from django.core.mail import send_mail
from .models import Order

@task
def order_created(order_id):
    """
      Задача отправки email-уведомлений при успешном оформлении заказа.
    """
    order = Order.objects.get(id=order_id)
    subject = 'Заказ №{}'.format(order.id)
    message = 'Дорогой {},\n\nВы успешно оформили заказ.\
                   Номер вашего заказа {}.'.format(order.first_name,
                                            order.id)
    mail_sent = send_mail(subject,
                          message,
                          'admin@myshop.com',
                          [order.email])
    return mail_sent