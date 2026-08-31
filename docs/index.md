# VSCI Laboratory

Welcome to the digital perimeter of Vivien Yor's sovereign research space. This repository operates as a personal intelligence ledger and decentralized database, tracking the fragmentation of global infrastructure layers in the era of Cybernetic Baroque.

---

## 🧱 Core Structural Pillars (VSCI Index)

Our monitoring and forecasting architecture evaluates the critical level of technological insulation across four non-negotiable dimensions of sovereignty:

<!-- НАЧАЛО БЛОЧНОЙ СЕТКИ (GRID) -->
<div class="grid cards" style="display: grid; grid-template-columns: repeat(auto-fit, minmax(240px, 1fr)); gap: 1rem; margin-top: 1.5rem;">

  <!-- Карточка 1 -->
  <div class="card" style="border: 1px solid var(--md-typeset-color--light); padding: 1.2rem; border-radius: 6px; background: var(--md-code-bg-color);">
    <h3 style="margin-top: 0;">💾 Silicon Layer</h3>
    <p style="font-size: 0.9em; margin-bottom: 0; line-height: 1.4;">Physical semiconductor autarky, cleanroom dominance, and absolute lithography control.</p>
  </div>

  <!-- Карточка 2 -->
  <div class="card" style="border: 1px solid var(--md-typeset-color--light); padding: 1.2rem; border-radius: 6px; background: var(--md-code-bg-color);">
    <h3 style="margin-top: 0;">⚙️ Software Stack</h3>
    <p style="font-size: 0.9em; margin-bottom: 0; line-height: 1.4;">Proprietary algorithmic perimeters, verified code repositories, and closed large language models.</p>
  </div>

  <!-- Карточка 3 -->
  <div class="card" style="border: 1px solid var(--md-typeset-color--light); padding: 1.2rem; border-radius: 6px; background: var(--md-code-bg-color);">
    <h3 style="margin-top: 0;">⚡ Energy Grid</h3>
    <p style="font-size: 0.9em; margin-bottom: 0; line-height: 1.4;">Autonomous power matrices capable of sustaining regional data fortresses during structural rifts.</p>
  </div>

  <!-- Карточка 4 -->
  <div class="card" style="border: 1px solid var(--md-typeset-color--light); padding: 1.2rem; border-radius: 6px; background: var(--md-code-bg-color);">
    <h3 style="margin-top: 0;">🌐 Data Sovereignty</h3>
    <p style="font-size: 0.9em; margin-bottom: 0; line-height: 1.4;">Locally insulated storage networks and absolute defense against external data extraction.</p>
  </div>

</div>
<!-- КОНЕЦ БЛОЧНОЙ СЕТКИ -->

---

## 📅 Laboratory Chronicle (Stream)

Articles enter this stream automatically. Filter the chronicle by your operational language circuit below:

<div class="language-filter" style="margin: 20px 0; padding: 10px; background: var(--md-code-bg-color); border-radius: 4px; display: flex; gap: 8px; flex-wrap: wrap; align-items: center;">
  <strong>🌐 Filter:</strong> 
  <button onclick="filterLang('all')" style="cursor:pointer; background:none; border:1px solid var(--md-typeset-color); color:var(--md-typeset-color); padding:4px 12px; border-radius:4px; font-size:0.85em;">All Circuits</button>
  <button onclick="filterLang('en')" style="cursor:pointer; background:none; border:1px solid var(--md-typeset-color); color:var(--md-typeset-color); padding:4px 12px; border-radius:4px; font-size:0.85em;">🇬🇧 EN</button>
  <button onclick="filterLang('ru')" style="cursor:pointer; background:none; border:1px solid var(--md-typeset-color); color:var(--md-typeset-color); padding:4px 12px; border-radius:4px; font-size:0.85em;">🇷🇺 RU</button>
  <button onclick="filterLang('fr')" style="cursor:pointer; background:none; border:1px solid var(--md-typeset-color); color:var(--md-typeset-color); padding:4px 12px; border-radius:4px; font-size:0.85em;">🇫🇷 FR</button>
  <button onclick="filterLang('es')" style="cursor:pointer; background:none; border:1px solid var(--md-typeset-color); color:var(--md-typeset-color); padding:4px 12px; border-radius:4px; font-size:0.85em;">🇪🇸 ES</button>
</div>

<ul class="stream-list" style="list-style: none; padding-left: 0;">
  <li class="stream-item ru" style="margin-bottom: 12px; padding-bottom: 8px; border-bottom: 1px dashed var(--md-typeset-color--light);">
    <code>2026-08-20</code> — 🇷🇺 <a href="concepts.md#westphalia" style="font-weight: bold;">Технологическая Вестфалия: Раздел мира между Pax Silica и Китайским симбиозом</a>
  </li>
  <li class="stream-item en" style="margin-bottom: 12px; padding-bottom: 8px; border-bottom: 1px dashed var(--md-typeset-color--light);">
    <code>2026-08-11</code> — 🇬🇧 <a href="concepts.md#technorealism" style="font-weight: bold;">Vivien Yor's Technorealism — How the Three Worlds of AI and the VSCI Index Rewrite Global Rules</a>
  </li>
  <li class="stream-item fr" style="margin-bottom: 12px; padding-bottom: 8px; border-bottom: 1px dashed var(--md-typeset-color--light);">
    <code>2026-08-05</code> — 🇫🇷 <a href="concepts.md#baroque" style="font-weight: bold;">L'asymétrie numérique et la fin de l'utopie globale</a>
  </li>
  <li class="stream-item es" style="margin-bottom: 12px; padding-bottom: 8px; border-bottom: 1px dashed var(--md-typeset-color--light);">
    <code>2026-07-29</code> — 🇪🇸 <a href="concepts.md#sovereignty" style="font-weight: bold;">El absolutismo de las plataformas y el nuevo orden feudal</a>
  </li>
</ul>

---

## 🗺️ Navigation Ledger

* **[Concepts & Glossary](concepts.md)** — The core mathematical architecture of the VSCI Index, weight coefficients, and fundamental philosophical vocabulary.
* **[About the Author & Laboratory](about.md)** — Operational stance, intellectual perimeter, context, and background of the laboratory.

<script>
function filterLang(lang) {
  const items = document.querySelectorAll('.stream-item');
  items.forEach(item => {
    if (lang === 'all' || item.classList.contains(lang)) {
      item.style.display = 'block';
    } else {
      item.style.display = 'none';
    }
  });
}
</script>
