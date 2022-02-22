FROM python:3.9.0

WORKDIR /home/

RUN git clone https://github.com/ShinDoDam/pragmatic-review.git

WORKDIR /home/pragmatic/

RUN pip install -r requirements.txt

# 52강에서는 임시로 만들어 놓은 것인데 실제로 만들때는 이런식으로 하면 안됨
RUN echo "SECRET_KEY=django-insecure-=j^&#5k_ktjws8x4653inl6a*_hd$1i8#s_xb!pv^5pkgppp@k" > .env

RUN python manage.py migrate

EXPOSE 8000

CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]