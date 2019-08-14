#!/bin/bash
i3-msg "append_layout ~/.config/i3/workspace_reading.json"
# And finally we fill the containers with the programs they had
(mendeleydesktop&)
(polar-bookshelf &)
