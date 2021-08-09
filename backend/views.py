from django.shortcuts import render
from django.http.response import JsonResponse
import pickle
import pandas as pd
import json
from django.views.decorators.csrf import csrf_exempt
from datetime import datetime, timedelta
import requests

@csrf_exempt
def backendView(request):
    complete = {"ticker":"getrekt","prediction":0,"adjClose":0,"score":0,"delta":0}
    return JsonResponse(complete,safe=False)