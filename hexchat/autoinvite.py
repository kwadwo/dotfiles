#!/usr/bin/env python3
#
# AutoAccept Invite - Automatically accepts invites
# Copyright (C) 2013  Chryyz  <@gmx.com>
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.
#
# If for any reason you need to contact me, see copyright above.
 
 
__module_name__ = "AutoAccept Invite"
__module_version__ = "0.1"
__module_description__ = "Automatically accepts invites"
 
import xchat
 
aa_nick = ['First', 'Second', 'Third']
aa_chan = ['One', 'Two', 'Three']
 
 
def chan_invite(word, word_eol, _):
    mform = word[0].index('!')
    nick = word[0][1:mform]
    chan = word[3][1:]
    if nick in aa_nick or chan in aa_chan:
        xchat.command('join {}'.format(chan))
    else:
        pass
    return xchat.EAT_NONE
 
 
xchat.hook_server("INVITE", chan_invite)
