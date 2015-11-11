## TODO and Done

Idea                                                              | Status      |
----------------------------------------------------------------- | ----------- |
hide label if it's input is empty and if a placeholder is given   | REFUSED     |
show label if it's input is fill                                  | REFUSED     |
Model verifications for Ajax                                      | OK          |
update Model information in Ajax                                  | OK          |
show/hide/udpate/delete other fields according to specifics rules | IN PROGRESS |
show a visual indicator in focused input                          |             |
show on an aside fixed area a visual step helper                  |             |
show in real-time the time spend on a form                        | IN PROGRESS |
use HTML5 validators (add/remove Bootstrap errors classes ?)      | IN PROGRESS |
if form status is online and hovered, display the lastest update  |             |
SASS transitions on v-if/v-show                                   |             |
when field is hidden, reset it's value                            |             |


pattern sur input pas forcément génial niveau UX (se fait sur keyup => tant que champs pas rempli, déclenche l'erreur)
Et collision avec Ajax en plus...a buter du coup

BUGS :

exemple : si phone pas dans Strong parameters (donc AR pas mis à jour),
Vue.js va quand même afficher que champs est enregistré et class has-sucess
