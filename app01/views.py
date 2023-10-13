from django.shortcuts import render,HttpResponse
import datetime,socket
# Create your views here.

def index(request):
    server_ip = [(s.connect(('8.8.8.8', 53)), s.getsockname()[0], s.close()) for s in
          [socket.socket(socket.AF_INET, socket.SOCK_DGRAM)]][0][1]
    server_hostname=socket.gethostname()
    now_time=datetime.datetime.now()
    # return  HttpResponse(now_time)
    return  render(request,'index.html',{'data':now_time,'ip':server_ip,'hostname':server_hostname})