args2Obj = ->
  keys = Array::slice.apply(arguments)
  ->
    values = Array::slice.apply(arguments)
    keys.reduce ((result, key, index) ->
      result[key] = values[index]
      result
    ), {}

group = args2Obj("name", "sponsors")
sponsor = partner = args2Obj("name", "href", "image")
language = args2Obj("url", "title")
person = args2Obj("id", "name", "position", "image", "links")
link = args2Obj("icon", "on", "href")
t = (en,ka)->
  en:en, ka:ka || en

sponsorGroups = [
  # group('peta',[
  # ]),
  # group('tera',[
  # ]),
  # group('giga',[
  # ]),
  group('mega',[
    sponsor("Webintelligence", "http://webintelligence.de", "/images/sponsors/w3i.png")
  ]),
  # group('kilo',[
  # ])
]


mediaPartners = [
]

partners = [
]

team = [
  person("gtkesh", t("Giorgi Tkeshelashvili"), t("Co-Director"), "/images/team/gtkesh.jpg", [
    link("facebook", "facebook", "https://www.facebook.com/gtkesh")
    link("twitter", "twitter", "https://twitter.com/gtkesh")
    link("google-plus", "google+", "https://plus.google.com/u/0/+GiorgiTkeshelashvili")
    link("github", "github", "https://github.com/gtkesh")
  ])
  person("safareli", t("Irakli Safareli"), t("Co-Director"), "/images/team/safareli.jpg", [
    link("twitter", "twitter", "https://twitter.com/safareli")
    link("google-plus", "google+", "https://google.com/+IrakliSafareli")
    link("youtube-play", "youtube", "https://www.youtube.com/isafareli")
    link("linkedin", "linkedin", "https://www.linkedin.com/in/safareli")
    link("github", "github", "https://github.com/safareli")
  ])
  person("otarza", t("Otar Zakalashvili"), t("Director of Operations"), "/images/team/otarza.jpeg", [
    link("facebook", "facebook", "https://www.facebook.com/otarza")
    link("twitter", "twitter", "https://twitter.com/otarza")
    link("linkedin", "linkedin", "https://www.linkedin.com/pub/otar-zakalashvili/15/3a8/547/")
    link("google-plus", "google+", "https://plus.google.com/109734750145229671001")
  ])
  person("demonno", t("Demur Nodia"), t("Special Ops"), "/images/team/demonno.jpg", [
    link("facebook", "facebook", "https://www.facebook.com/demuri.nodia")
    link("twitter", "twitter", "https://twitter.com/demurnodia")
    link("google-plus", "google+", "https://plus.google.com/u/0/+DemurNodia")
    link("youtube-play", "youtube", "https://www.youtube.com/demurnodia")
  ])
]
speakers = [
  person('gmamaladze', t('George Mamaladze', 'გიორგი მამალაძე'), t('Architect at Siemens.'), '/images/speakers/mamaladze.jpeg', [
    link('twitter', 'twitter', 'https://twitter.com/gmamaladze')
    link('google-plus', 'google+', 'https://google.com/+GeorgeMamaladze')
  ]),
  person("safareli", t("Irakli Safareli"), t("Front-End Developer"), "/images/team/safareli.jpg", [
    link("twitter", "twitter", "https://twitter.com/safareli")
    link("google-plus", "google+", "https://google.com/+IrakliSafareli")
    link("youtube-play", "youtube", "https://www.youtube.com/isafareli")
    link("linkedin", "linkedin", "https://www.linkedin.com/in/safareli")
    link("github", "github", "https://github.com/safareli")
  ])
]



module.exports = 
  data:
    sponsorGroups: sponsorGroups
    mediaPartners: mediaPartners
    partners: partners
    speakers: speakers
    team: team
  defaultLanguageKey: 'en'
  locals:
    en:
      'META_SITE_URL': 'http://2015f.hacktbilisi.com'
      'META_TITLE': 'HackTbilisi 2015 Fall'
      'META_SITE_NAME': 'HackTbilisi.com'
      'META_DESCRIPTION': 'HackTBILISI - #HackathonThatLovesYou - DEC 18-20 - Free University, Tbilisi, Georgia',

      'Stay Tuned!': 'Stay Tuned!'
      'Your Email': 'Your Email'
      'Just a moment': 'Just a sec'
      'We\'ll be in touch!': 'We\'ll be in touch!'
      'dec':'dec'
      'contact us':'contact us'
      'nextLanguage': language('/','GEO')
      'languagePrefix': 'en'
      'languageKey': 'en'
      '%s on %s': '%s on %s'
      'Register': 'Register'
      'კითხვები': 'F.A.Q'
      'პარტნიორები': 'Partners'
      'მედია პარტნიორები': 'Media Partners'
      'სპონსორები': 'Sponsors'
      'Free university of Tbilisi': 'Free university of Tbilisi'
      'განრიგი': 'Agenda'
      'გუნდი': 'Team'
      'location': 'Location'
      'სპიკერები':'Speakers'
      'hours' : 'Hours'
      'hackers' : 'Hackers'
      'date' : 'December 18-20'
      'want_to_be_partner' : 'Want to partner with us?'
      'want_to_be_speaker' : 'Want to be a speaker?'
      'register_url' : 'https://hacktbilisi.typeform.com/to/v1fGHo'
    ka:
      'register_url' : 'https://hacktbilisi.typeform.com/to/nfRq9x'
      'want_to_be_speaker' : 'გსურთ იყოთ სპიკერი?'
      'want_to_be_partner' : 'გსურთ ჩვენთან პარტნიორობა?'
      'hours' : 'საათი'
      'hackers' : 'მონაწილე'
      'date' : '18-20 დეკემბერი'
      'განრიგი': 'განრიგი'
      'გუნდი': 'გუნდი'
      'location': 'ადგილი'
      'სპიკერები':'სპიკერები'
      'Free university of Tbilisi': 'თავისუფალი უნივერსიტეტი'
      'პარტნიორები': 'პარტნიორები'
      'მედია პარტნიორები': 'მედია პარტნიორები'
      'სპონსორები': 'სპონსორები'
      'კითხვები': 'კითხვები'
      'Register': 'რეგისტრაცია'
      'dec':'დეკ'
      'contact us':'დაგვიკავშირდით'
      'nextLanguage': language('/en','ENG')
      'languagePrefix': ''
      'languageKey': 'ka'
      '%s on %s': '%s %s-ზე'
      'Stay Tuned!': 'გამოიწერე!'
      'Your Email': 'თქვენი ელ-ფოსტა'
      'Just a moment': 'იტვირთება'
      'We\'ll be in touch!': 'დაგიკავშირდებით!'
