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
      <td>Infinite lives, Auto-deathbomb, Invincibility (with hit sound), Invincibility (with hit sound) + HiScore as hit counter</td>
      <td>
        <p>TH16: ✅ enabled</p>
        <p>Other games: ❌ disabled</p>
      </td>
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
      <td>Invincibility (with hit sound)</td>
      <td>Invincibility</td>
      <td>✅ enabled</td>
      <td><pre lang="json">
"binhacks": {
  "Main/Invincible (with hit sound)": { "ignore": true },
  "Main/Invincible (with hit sound)#1": { "ignore": true },
  "Main/Invincible (with hit sound)#2": { "ignore": true }
}</pre></td>
      <td>Implemented for TH09.5, TH12.5, TH13 v0.01a, TH14 v0.01b, and TH14.3.</td>
    </tr>
    <tr>
      <td>Invincibility (with hit sound) + HiScore as hit counter</td>
      <td>Invincibility</td>
      <td>✅ enabled</td>
      <td><pre lang="json">
"binhacks": {
  "Main/Invincible (with hit sound) + HiScore as hit counter": { "ignore": true },
  "Main/Invincible (with hit sound) + HiScore as hit counter#1": { "ignore": true },
  "Main/Invincible (with hit sound) + HiScore as hit counter#2": { "ignore": true },
  "Main/Invincible (with hit sound) + HiScore as hit counter#3": { "ignore": true },
  "Main/Invincible (with hit sound) + HiScore as hit counter#4": { "ignore": true },
  "Main/Invincible (with hit sound) + HiScore as hit counter#5": { "ignore": true },
  "Main/Invincible (with hit sound) + HiScore as hit counter#6": { "ignore": true }
}</pre></td>
      <td>Implemented for TH06, TH07, TH08, TH10, Uwabami Breakers, TH11, TH12, TH12.8, TH13 v1.00c, TH14 v1.00b, and TH14.3.</td>
    </tr>
    <tr>
      <td>Do not erase enemy bullets on death</td>
      <td>Invincibility</td>
      <td>✅ enabled</td>
      <td><pre lang="json">
"binhacks": {
  "Main/Invincible (with hit sound) + HiScore as hit counter/Do not erase enemy bullets": { "ignore": true }
}</pre></td>
      <td>
        <p><b>Requires</b> the <i>Invincibility (with hit sound) + HiScore as hit counter</i> cheat.</p>
        <p>Implemented for TH10, Uwabami Breakers, TH11, TH12, and TH12.8.</p>
      </td>
    </tr>
    <tr>
      <td>Auto-deathbomb</td>
      <td>Invincibility</td>
      <td>✅ enabled</td>
      <td><pre lang="json">
"binhacks": {
  "Main/Auto-bomb": { "ignore": true },
  "Main/Auto-bomb#1": { "ignore": true },
  "Main/Auto-bomb#2": { "ignore": true },
  "Main/Auto-bomb#3": { "ignore": true },
  "Main/Auto-bomb#4": { "ignore": true }
}</pre></td>
      <td><ul>
        <li>TH08: Always uses the two-bomb Last Spell.</li>
        <li>TH13 Trial: Does not work with ≥1 flames on the trance gauge, see #18.</li>
      </ul></td>
    </tr>
    <tr>
      <td>Infinite lives</td>
      <td>Invincibility, Auto-deathbombing + Infinite bombs</td>
      <td>✅ enabled</td>
      <td><pre lang="json">
"binhacks": {
  "Main/Infinite lives": { "ignore": true },
  "Main/Infinite lives#1": { "ignore": true },
  "Main/Infinite lives#2": { "ignore": true },
  "Main/Infinite lives#3": { "ignore": true }
}</pre></td>
      <td><ul>
        <li>TH09: Gives infinite rounds until you have to continue, <i>not</i> infinite lives within a round.</li>
      </ul></td>
    </tr>
    <tr>
      <td>Uwabami Breakers: Freeze time</td>
      <td>nothing</td>
      <td>✅ enabled</td>
      <td><pre lang="json">
"binhacks": {
  "Main/Time/Freeze": { "ignore": true }
}</pre></td>
      <td></td>
    </tr>
    <tr>
      <td>Uwabami Breakers: Don't increase time on death</td>
      <td>nothing</td>
      <td>✅ enabled</td>
      <td><pre lang="json">
"binhacks": {
  "Main/Time/Don't increase on death": { "ignore": true }
}</pre></td>
      <td></td>
    </tr>
    <tr>
      <td>TH09.5 / TH12.5: Revive on hit</td>
      <td>Invincibility</td>
      <td>✅ enabled</td>
      <td><pre lang="json">
"binhacks": {
  "Main/Revive on hit": { "ignore": true },
  "Main/Revive on hit#1": { "ignore": true },
  "Main/Revive on hit#2": { "ignore": true },
  "Main/Revive on hit#3": { "ignore": true },
  "Main/Revive on hit#4": { "ignore": true }
}</pre></td>
      <td></td>
    </tr>
    <tr>
      <td>TH12.8: Max Motivation</td>
      <td>nothing</td>
      <td>✅ enabled</td>
      <td><pre lang="json">
"binhacks": {
  "Main/Max Motivation": { "ignore": true }
}</pre></td>
      <td></td>
    </tr>
    <tr>
      <td>Infinite bombs</td>
      <td>nothing</td>
      <td>✅ enabled</td>
      <td><pre lang="json">
"binhacks": {
  "Main/Infinite bombs": { "ignore": true },
  "Main/Infinite bombs#1": { "ignore": true },
  "Main/Infinite bombs#2": { "ignore": true },
  "Main/Infinite deathbombs": { "ignore": true }
}</pre></td>
      <td>TH10, Uwabami Breakers, TH11: Doesn't reduce power for a bomb. These games treat deathbombs separately, which are covered by the <tt>Main/Infinite deathbombs</tt> hack.</td>
    </tr>
    <tr>
      <td>Max Power</td>
      <td>nothing</td>
      <td>
        <p>Uwabami Breakers: ❌ disabled (crashes when loading Stage 2)</p>
        <p>Other games: ✅ enabled</p>
      </td>
      <td><pre lang="json">
"binhacks": {
  "Main/Power settings/Max Power": { "ignore": true },
  "Main/Power settings/Max Power#1": { "ignore": true },
  "Main/Power settings/Max Power#2": { "ignore": true }
}</pre></td>
      <td></td>
    </tr>
    <tr>
      <td>Power doesn't decrease on death</td>
      <td>nothing</td>
      <td>✅ enabled</td>
      <td><pre lang="json">
"binhacks": {
  "Main/Power settings/Doesn't decrease on death": { "ignore": true }
}</pre></td>
      <td>TH18: Power also doesn't decrease on buying a card.</td>
    </tr>
    <tr>
      <td>TH09.5, TH12.5, TH12.8, TH16.5: Charge rate is always 100%</td>
      <td>nothing</td>
      <td>✅ enabled</td>
      <td><pre lang="json">
"binhacks": {
  "Main/Charge rate is always 100%": { "ignore": true },
  "Main/Charge rate is always 100%#1": { "ignore": true },
  "Main/Charge rate is always 100%#2": { "ignore": true }
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
    <tr>
      <td>Boss timer freeze</td>
      <td>nothing</td>
      <td>
        <p>TH09.5, Uwabami Breakers, TH12.5: ✅ enabled</p>
        <p>Other games: ❌ disabled</p>
      </td>
      <td><pre lang="json">
"binhacks": {
  "Main/Power settings/Boss timer freeze": { "ignore": false },
  "Main/Power settings/Boss timer freeze#1": { "ignore": false },
  "Main/Power settings/Boss timer freeze#2": { "ignore": false }
}</pre></td>
      <td>Disabled by default in all games with survival spell cards, all of which do not end with this cheat enabled.</td>
    </tr>
    <tr>
      <td>TH06: Carry over Graze to the next stage</td>
      <td>nothing</td>
      <td>✅ enabled</td>
      <td><pre lang="json">
"binhacks": {
  "Main/Carry over/Graze": { "ignore": true }
}</pre></td>
      <td>Also keeps the value between runs.</td>
    </tr>
    <tr>
      <td>TH06: Carry over score items to the next stage</td>
      <td>nothing</td>
      <td>✅ enabled</td>
      <td><pre lang="json">
"binhacks": {
  "Main/Carry over/Score items": { "ignore": true }
}</pre></td>
      <td>Also keeps the value between runs.</td>
    </tr>
    <tr>
      <td>TH06: Don't cap Graze at 9,999</td>
      <td>nothing</td>
      <td>✅ enabled</td>
      <td><pre lang="json">
"binhacks": {
  "Main/Remove Graze cap": { "ignore": true }
}</pre></td>
      <td>Affects score calculation, which is why it's here and not in <tt>base_tsa</tt>. </td>
    </tr>
    <tr>
      <td>TH06, TH07, TH08: PoC even if not on Max Power</td>
      <td>nothing</td>
      <td>✅ enabled</td>
      <td><pre lang="json">
"binhacks": {
  "Main/PoC even if not on Max Power": { "ignore": true }
}</pre></td>
      <td></td>
    </tr>
    <tr>
      <td>TH11, TH15: Auto-collect items</td>
      <td>nothing</td>
      <td>✅ enabled</td>
      <td><pre lang="json">
"binhacks": {
  "Main/Auto-collect items": { "ignore": true }
}</pre></td>
      <td>TH11: Permanently sets the communication gauge to max strength.</td>
    </tr>
    <tr>
      <td>TH13: Auto-collect spirit items</td>
      <td>nothing</td>
      <td>✅ enabled</td>
      <td><pre lang="json">
"binhacks": {
  "Main/Auto-collect spirit items": { "ignore": true }
}</pre></td>
      <td></td>
    </tr>
    <tr>
      <td>TH13: Start with full trance gauge</td>
      <td>nothing</td>
      <td>✅ enabled</td>
      <td><pre lang="json">
"binhacks": {
  "Main/Trance/Start with full gauge": { "ignore": true }
}</pre></td>
      <td></td>
    </tr>
    <tr>
      <td>TH13: Keep trance gauge maxed</td>
      <td>nothing</td>
      <td>✅ enabled</td>
      <td><pre lang="json">
"binhacks": {
  "Main/Trance/Keep maxed": { "ignore": true }
}</pre></td>
      <td></td>
    </tr>
    <tr>
      <td>TH13: Freeze trance timer</td>
      <td>nothing</td>
      <td>✅ enabled</td>
      <td><pre lang="json">
"binhacks": {
  "Main/Trance/Freeze timer": { "ignore": true }
}</pre></td>
      <td></td>
    </tr>
    <tr>
      <td>TH13: Don't decrease trance on death</td>
      <td>Auto-deathbomb, Freeze trance timer</td>
      <td>✅ enabled</td>
      <td><pre lang="json">
"binhacks": {
  "Main/Trance/Doesn't decrease on death": { "ignore": true }
}</pre></td>
      <td>Obviously only has an effect with < 1 flame on the gauge, since anything more will start a trance on death and deplete the gauge.</td>
    </tr>
    <tr>
      <td>TH16: Start with full season gauge</td>
      <td>nothing</td>
      <td>✅ enabled</td>
      <td><pre lang="json">
"binhacks": {
  "Main/Season/Start with full gauge(Stage 1, Extra stage)": { "ignore": true },
  "Main/Season/Start with full gauge(rest of the stages)#1": { "ignore": true },
  "Main/Season/Start with full gauge(rest of the stages)#2": { "ignore": true }
}</pre></td>
      <td></td>
    </tr>
    <tr>
      <td>TH16: Keep season gauge maxed</td>
      <td>nothing</td>
      <td>✅ enabled</td>
      <td><pre lang="json">
"binhacks": {
  "Main/Season/Keep maxed(spring, autumn, winter)": { "ignore": true },
  "Main/Season/Keep maxed(summer, dog days)": { "ignore": true }
}</pre></td>
      <td></td>
    </tr>
    <tr>
      <td>TH17: Freeze Roaring Timer</td>
      <td>nothing</td>
      <td>✅ enabled</td>
      <td><pre lang="json">
"binhacks": {
  "Main/Roaring/Freeze Roaring Timer#1": { "ignore": true },
  "Main/Roaring/Freeze Roaring Timer#2": { "ignore": true },
  "Main/Roaring/Freeze Roaring Timer#3": { "ignore": true },
  "Main/Roaring/Freeze Roaring Timer#4": { "ignore": true }
}</pre></td>
      <td></td>
    </tr>
    <tr>
      <td>TH17: Doesn't decrease roaring on firing</td>
      <td>nothing</td>
      <td>✅ enabled</td>
      <td><pre lang="json">
"binhacks": {
  "Main/Roaring/Doesn't decrease on firing#1": { "ignore": true },
  "Main/Roaring/Doesn't decrease on firing#2": { "ignore": true }
}</pre></td>
      <td></td>
    </tr>
    <tr>
      <td>TH17: Max Graze</td>
      <td>nothing</td>
      <td>❌ disabled</td>
      <td><pre lang="json">
"binhacks": {
  "Main/Max Graze": { "ignore": false }
}</pre></td>
      <td></td>
    </tr>
    <tr>
      <td>TH17: Max Point item</td>
      <td>nothing</td>
      <td>✅ enabled</td>
      <td><pre lang="json">
"binhacks": {
  "Main/Max Point item#1": { "ignore": true },
  "Main/Max Point item#2": { "ignore": true }
}</pre></td>
      <td></td>
    </tr>
    <tr>
      <td>TH18: Max Money</td>
      <td>nothing</td>
      <td>✅ enabled</td>
      <td><pre lang="json">
"binhacks": {
  "Main/Max Money#1": { "ignore": true },
  "Main/Max Money#2": { "ignore": true }
}</pre></td>
      <td></td>
    </tr>
    <tr>
      <td>TH18: Money doesn't decrease on death</td>
      <td>nothing</td>
      <td>✅ enabled</td>
      <td><pre lang="json">
"binhacks": {
  "Main/Money doesn't decrease on death": { "ignore": true }
}</pre></td>
      <td></td>
    </tr>
    <tr>
      <td>TH18: Money doesn't decrease on buying a card</td>
      <td>nothing</td>
      <td>✅ enabled</td>
      <td><pre lang="json">
"binhacks": {
  "Main/Money doesn't decrease on buying a card": { "ignore": true }
}</pre></td>
      <td></td>
    </tr>
    <tr>
      <td>TH18: Remove cooldown time on active cards.</td>
      <td>nothing</td>
      <td>✅ enabled</td>
      <td><pre lang="json">
"binhacks": {
  "Main/Remove cooldown time#1": { "ignore": true },
  "Main/Remove cooldown time#2": { "ignore": true },
  "Main/Remove cooldown time#3": { "ignore": true },
  "Main/Remove cooldown time#4": { "ignore": true },
  "Main/Remove cooldown time#5": { "ignore": true },
  "Main/Remove cooldown time#6": { "ignore": true },
  "Main/Remove cooldown time#7": { "ignore": true },
  "Main/Remove cooldown time#8": { "ignore": true },
  "Main/Remove cooldown time#9": { "ignore": true },
  "Main/Remove cooldown time#10": { "ignore": true },
  "Main/Remove cooldown time#11": { "ignore": true },
  "Main/Remove cooldown time#12": { "ignore": true }
}</pre></td>
      <td></td>
    </tr>
  </tbody>
</table>

## Credits
Original SpoilerAL files by:
- niL
  - TH06 - TH14.3: http://cheater.up.seesaa.net/th/thssg.zip
  - Uwabami Breakers: http://cheater.seesaa.net/article/231376319.html
- tama (TH15 - TH18): http://www7b.biglobe.ne.jp/~chibimi/

English translations by CreepyNinja_: https://www.shrinemaiden.org/forum/index.php?topic=21105.0

Consistency edits by Nmlgc and rosenrose.
