from django.shortcuts import render,HttpResponse
import datetime
# Create your views here.

def index(request):
    now_time=datetime.datetime.now()
    return  HttpResponse(now_time)
    # return  render(request,'index.html',{'data':now_time})