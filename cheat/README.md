## Overview
As we don't have a GUI yet, cheats have to be enabled or disabled through the
run configuration by enabling or disabling the individual binary hacks. This
patch enables most of them by default; see the table below for configuration
snippets to change their default activiity.

If a cheat *conflicts with* anything, these cheats **must** be disabled for
the cheat to work as intended.
<table>
  <thead>
    <tr>
      <th>Cheat</th>
      <th>Conflicts with</th>
      <th>Default activity</th>
      <th>Enabling / Disabling code</th>
      <th>Notes</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>Invincibility</td>
      <td>nothing</td>
      <td>✅ enabled</td>
      <td><pre lang="json">
"binhacks": {
  "Main/Invincible": { "ignore": true },
  "Main/Invincible#1": { "ignore": true },
  "Main/Invincible#2": { "ignore": true },
  "Main/Invincible#3": { "ignore": true }
}</pre></td>
      <td></td>
    </tr>
    <tr>
      <td>Max Power</td>
      <td>nothing</td>
      <td>✅ enabled</td>
      <td><pre lang="json">
"binhacks": {
  "Main/Power settings/Max Power": { "ignore": true },
  "Main/Power settings/Max Power#1": { "ignore": true },
  "Main/Power settings/Max Power#2": { "ignore": true }
}</pre></td>
      <td></td>
    </tr>
    <tr>
      <td>TH09.5 / TH12.5: Loading rate is always 100%</td>
      <td>nothing</td>
      <td>✅ enabled</td>
      <td><pre lang="json">
"binhacks": {
  "Main/Loading rate is always 100%": { "ignore": true }
}</pre></td>
      <td></td>
    </tr>
    <tr>
      <td>TH14.3: Items don't deplete</td>
      <td>nothing</td>
      <td>✅ enabled</td>
      <td><pre lang="json">
"binhacks": {
  "Main/Items don't deplete#1": { "ignore": true },
  "Main/Items don't deplete#2": { "ignore": true },
  "Main/Items don't deplete#3": { "ignore": true },
  "Main/Items don't deplete#4": { "ignore": true },
  "Main/Items don't deplete#5": { "ignore": true },
  "Main/Items don't deplete#6": { "ignore": true },
  "Main/Items don't deplete#7": { "ignore": true },
  "Main/Items don't deplete#8": { "ignore": true },
  "Main/Items don't deplete#9": { "ignore": true },
  "Main/Items don't deplete#10": { "ignore": true },
  "Main/Items don't deplete#11": { "ignore": true },
  "Main/Items don't deplete#12": { "ignore": true },
  "Main/Items don't deplete#13": { "ignore": true },
  "Main/Items don't deplete#14": { "ignore": true },
  "Main/Items don't deplete#14": { "ignore": true },
  "Main/Items don't deplete#15": { "ignore": true },
  "Main/Items don't deplete#16": { "ignore": true },
  "Main/Items don't deplete#17": { "ignore": true },
  "Main/Items don't deplete#18": { "ignore": true }
}</pre></td>
      <td>Still won't let you take more than 7
  pictures in a single run.</td>
    </tr>
  </tbody>
</table>

## Credits
Original SpoilerAL files by:
- niL
  - TH06 - TH14.3: http://cheater.up.seesaa.net/th/thssg.zip
  - Uwabami Breakers: http://cheater.seesaa.net/article/231376319.html
- tama (TH15 - TH16): http://www7b.biglobe.ne.jp/~chibimi/

English translations by CreepyNinja_: https://www.shrinemaiden.org/forum/index.php?topic=21105.0

Consistency edits by Nmlgc.
