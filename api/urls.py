from django.urls import path, include
from rest_framework.routers import DefaultRouter

# from api.views.file import someviewset

router = DefaultRouter()
# router.register(r"file", someviewset)

urlpatterns = router.urls
