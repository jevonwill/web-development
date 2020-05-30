from django.shortcuts import render

reviews = [
        {
             'name': 'Jane Doe',
             'title': 'Great Experience',
             'content': 'Loved the deep tissue massage',   
             'rating': '5/5'
        },
        {
             'name': 'Juan Doe',
             'title': 'Great Time',
             'content': 'Loved the sports',   
             'rating': '5/5' 
        }
]


def home(request):
        context = {
                'reviews': reviews
        }
        return render(request, 'blog/home.html', context)

def about(request):
        return render(request, 'blog/about.html', {'title': 'About Us'})