## TODO and Done

Idea                                                              | Status      |
----------------------------------------------------------------- | ----------- |
show/hide/udpate/delete other fields according to specifics rules | IN PROGRESS |
show in real-time the time spend on a form                        | IN PROGRESS |
use HTML5 validators (add/remove Bootstrap errors classes ?)      | IN PROGRESS |
for person form, store lat, lon ?                                 | IN PROGRESS |
for person form, display a map if address is given                |             |
show on an aside fixed area a visual step helper                  |             |
try the "defer" directive for Ajax calls                          |             |
I18n                                                              |             |

pattern sur input pas forcément génial niveau UX (se fait sur keyup => tant que champs pas rempli, déclenche l'erreur)
Et collision avec Ajax en plus...a buter du coup

BUGS :

exemple : si phone pas dans Strong parameters (donc AR pas mis à jour),
Vue.js va quand même afficher que champs est enregistré et class has-sucess
