#!/usr/bin/python3

# import libraries
from bs4 import BeautifulSoup
import csv
import re
from requests import get
import urllib.request

# source
scholingua = 'https://www.scholingua.com/en/it/conjugation/'
schoget = get(scholingua)

# label: userInput
# get target word from input; wrap in unittest to test if the user input is a string
verb = input(" What verb will we be conjugating? ")
print(verb)

# label: targetUrl
# merge our URL and verb to define the verb's target URL
targeturl = scholingua + verb

# Get the target verb's URL
with urllib.request.urlopen(targeturl) as url:
        page = url.read()
        soup = BeautifulSoup(page, 'html.parser')
        # the target URL is the scholingua italian conjugation URL with the requested verb
        with urllib.request.urlopen(targeturl) as url:
                page = url.read()
                # grab the verb name from HTML for our "infinitive" column
                """
                <div>
                 <h1 id="titel_verbinfos">$verb</h1> == $0
                 """
                 verbsrc = soup.find('h1', attrs={'id': 'titel_verbinfos'})
                 verbinf = verbsrc.text.strip()
                 print("Did we get the correct verb? " + verbinf)


                 # Get the verb's definition
                 # The definition is contained within the following HTML:
                 """
                 <h3 style="font-size:0.95em;font-weight: normal;margin-top:6px;margin-bottom:25px;">
                 to go, to work</h3>
                 """
                 defsrc = soup.find('h3', attrs={'style': 'font-size:0.95em;font-weight: normal;margin-top:6px;margin-bottom:25px;'})
                 defvalue = defsrc.text.strip()
                 print("Did we get the right definition? " + defvalue)

                 # store our words after stripping html
                 clean_verbs_list = []
                 # Find all the verbs in page
                 get_verbs = soup.find_all('span', class_='vf')
                 for words in get_verbs:
                        clean_verbs_list.append(words.text.strip())
                                
                                # Output to file
                                with open('wordlist.csv', 'w') as csv_file:
                                        writer = csv.writer(csv_file)
                                        # Our data source treats masculine and feminine as a single string separated by '/'
                                        # we want to treat the masculine and feminie as separate items, so we invoke re.findall
                                            output_verbs = re.findall(r"[\w']+", ', '.join(clean_verbs_list))
                                            # the asterisk tells writer to pop each item without list brackets and quotes so we have clean output
                                            # The asterisk removes the list formatting so there's no brackets and quotes
                                                print_verbs = "\n".join(map(str, output_verbs))
                                                    writer.writerow([print_verbs])

