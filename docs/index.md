# VSCI Laboratory CRAG: Exploring the Architecture of Techno-Realism

Welcome to the independent digital garden and research repository led by **Vivien Yor** (ORCID: [0009-0009-7030-8151](https://orcid.org)) — **CRAG: Centre for Research & Analysis of Geopolitics**.

This platform serves as a sovereign intellectual outpost dedicated to the structural analysis of global civilizational fluctuations, the fragmentation of the Westphalian system, and the physical underpinnings of digital power.

---

## ⚖️ The Core Paradigm: Pragmatic Techno-Realism

Modern political economy and strategic studies are deeply corrupted by the illusion of "virtual abstraction." Concepts like "the cloud," "metaverse," and "frictionless borderless connectivity" disguise a much harsher reality. 

> **Digital power is profoundly material, physical, and geomorphological.**

The VSCI Laboratory operates on three non-negotiable principles:

!!! info "💾 Physical Determinism"
    Cyber-sovereignty is anchored to the ocean floor (subsea fiber-optic cables), pre-determined maritime choke points, rare-earth supply chains, and specialized deep-sea or cryogenic hardware.

!!! abstract "⚙️ Algorithmic Enclosure"
    Trans-national digital platforms (Big Tech) have assumed the roles of historical feudal lords, demanding data-rent, imposing private corporate justice, and systematically eroding state monopolies on identity and information.

!!! danger "🔮 The Cyber-Baroque Condition"
    The contemporary information landscape operates as a neo-baroque theater where geopolitical hysteria and calculated panic are weaponized to sustain the dominance of the digital aristocracy.

---

<!-- 📅 Laboratory Chronicle (Stream) -->
<div class="language-filter" style="margin: 20px 0; padding: 12px 0; border-bottom: 1px solid var(--md-typeset-color--light); display: flex; gap: 25px; font-size: 0.85em; align-items: center; -webkit-user-select:none; user-select:none;"> 
    <span style="color: #757575; font-weight: 500; text-transform: uppercase; letter-spacing: 0.05em;">Circuit:</span> 
    <span onclick="filterLang('all', this)" class="lang-btn" style="cursor:pointer; color: #000000; font-weight: 700; transition: all 0.2s;">All</span> 
    <span onclick="filterLang('en', this)" class="lang-btn" style="cursor:pointer; color: #757575; font-weight: 400; transition: all 0.2s;">EN</span> 
    <span onclick="filterLang('ru', this)" class="lang-btn" style="cursor:pointer; color: #757575; font-weight: 400; transition: all 0.2s;">RU</span> 
    <span onclick="filterLang('fr', this)" class="lang-btn" style="cursor:pointer; color: #757575; font-weight: 400; transition: all 0.2s;">FR</span> 
    <span onclick="filterLang('es', this)" class="lang-btn" style="cursor:pointer; color: #757575; font-weight: 400; transition: all 0.2s;">ES</span> 
</div>

<ul id="stream-list" style="list-style: none; padding-left: 0;">
    <li id="loading-status" style="color: #757575; font-style: italic;">Loading chronicle stream...</li>
</ul>

<script>
const flags = { 'ru': '🇷🇺', 'en': '🇬🇧', 'fr': '🇫🇷', 'es': '🇪🇸' };

async function loadChronicleAutomatically() {
    const listElement = document.getElementById('stream-list');
    let articlesData = [];
    
    try {
        const responseIndex = await fetch('search/search_index.json');
        if (!responseIndex.ok) throw new Error("Search index not found");
        const searchData = await responseIndex.json();
        
        const articles = searchData.docs.filter(doc => doc.location.includes('articles/') && !doc.location.includes('#'));
        
        articles.forEach(art => {
            const segments = art.location.split('/').filter(Boolean);
            if (segments.length === 0 || segments[segments.length - 1] === 'articles') return;

            const titleText = art.title || segments[segments.length - 1];
            const locationText = art.location.toLowerCase();
            const titleLower = titleText.toLowerCase();

            // Автоматическое определение языка
            let artLang = "en"; // По умолчанию

            // 1. Проверка на русский язык
            if (/[а-яА-ЯёЁ]/.test(titleText)) {
                artLang = "ru";
            } 
            // 2. Проверка на испанский язык (артикли, предлоги и суффиксы файлов)
            else if (
                titleLower.startsWith('el ') || 
                titleLower.startsWith('la ') || 
                titleLower.startsWith('los ') || 
                titleLower.startsWith('las ') || 
                titleLower.includes(' de ') || 
                titleLower.includes(' del ') || 
                locationText.endsWith('_es') || 
                locationText.includes('/es/')
            ) {
                artLang = "es";
            } 
            // 3. Проверка на французский язык (артикли и суффиксы файлов)
            else if (
                titleLower.startsWith('le ') || 
                titleLower.startsWith('la ') || 
                titleLower.startsWith('les ') || 
                titleLower.startsWith('un ') || 
                titleLower.startsWith('une ') || 
                locationText.endsWith('_fr') || 
                locationText.includes('/fr/')
            ) {
                artLang = "fr";
            }

            // Парсинг даты из URL
            let artDate = "2026-09-02"; 
            const dateFromUrl = art.location.match(/([0-9]{4}-[0-9]{2}-[0-9]{2})/);
            if (dateFromUrl) {
                artDate = dateFromUrl[1];
            }

            articlesData.push({
                date: artDate,
                lang: artLang,
                title: titleText,
                link: art.location
            });
        });
        
        // Сортировка: свежие сверху
        articlesData.sort((a, b) => b.date.localeCompare(a.date));
        
        listElement.innerHTML = '';
        if (articlesData.length === 0) {
            listElement.innerHTML = '<li style="color: #757575; font-style: italic;">No articles found in the directory.</li>';
            return;
        }
        
        // Отрисовка
        articlesData.forEach(item => {
            const flag = flags[item.lang] || '🌐';
            const li = document.createElement('li');
            li.className = `stream-item ${item.lang}`;
            li.style = "margin-bottom: 16px; padding-bottom: 10px; border-bottom: 1px dashed var(--md-typeset-color--light); display: flex; flex-direction: column; gap: 4px;";
            
            li.innerHTML = `
                <div style="font-size: 0.85em; display: flex; gap: 8px; align-items: center;">
                    <code>${item.date}</code> — ${flag}
                </div>
                <div style="font-size: 0.92em; line-height: 1.4;">
                    <a href="${item.link}" style="font-weight: bold; text-decoration: none;">${item.title}</a>
                </div>
            `;
            listElement.appendChild(li);
        });
        
    } catch (error) {
        console.error("Global auto-fetch error:", error);
        listElement.innerHTML = '<li style="color: #757575; font-style: italic;">Error loading chronicle stream.</li>';
    }
}

function filterLang(lang, btn) {
    document.querySelectorAll('.lang-btn').forEach(b => {
        b.style.color = '#757575';
        b.style.fontWeight = '400';
    });
    btn.style.color = '#000000';
    btn.style.fontWeight = '700';
    
    document.querySelectorAll('.stream-item').forEach(item => {
        if (lang === 'all' || item.classList.contains(lang)) {
            item.style.display = 'flex';
        } else {
            item.style.display = 'none';
        }
    });
}

document.addEventListener("DOMContentLoaded", loadChronicleAutomatically);
</script>



---

## 📚 Project Septology: The 7-Volume Framework (2026–2027)

This repository functions as the public launchpad for a comprehensive, multi-lingual seven-volume monograph designed to reframe global digital governance metrics prior to forthcoming doctoral proceedings at the London School of Economics (LSE).

1. **Foundations of Techno-Realism** (Published | Language: EN) — *Laying out the VSCI Index methodologies.*
2. **The Age of Cyber-Baroque** (Published | Language: FR) — *Deconstructing cognitive weaponization and algorithmic excess.*
3. **Post-Westphalian Sovereignty** (Published | Language: ES) — *The rise of digital fiefdoms vs. state constitutions.*
4. **The Geometry of Exclaves and Spatial Stability** (Published | Language: RU) — *Modeling the endurance of isolated sovereign nodes.*
5. **Beneficiaries of Chaos** (Published | Language: RU) — *The grey-zone privates and proxy wars of tech cartels.*
6. **Deep-Sea Sovereignty & The Polar Perimeter** (Forthcoming | Language: EN) — *The battle for the ocean bed, DARPA programs, and Arctic/Antarctic infrastructure.*
7. **The Mathematical Apparatus of Future Civilizations** (Forthcoming | Language: EN) — *Formalized predictive equations for regional autarkies.*

---

## 🗺️ Navigating the Laboratory

*   [📐 Concepts & VSCI Matrix](concepts.md) — The structured terminology, mathematical balance equations, and core infrastructural vectors.
*   [👤 About the Author](about.md) — Formal academic biography, executive profile and cryptographic keys.

<p style="font-size: 0.85em; font-style: italic; opacity: 0.8; text-align: center; margin-top: 2rem;">
All formal texts and manuscripts are systematically timestamped and deposited under international DOI registries via Zenodo (CERN) within the repository infrastructure, ensuring absolute copyright sovereignty.
</p>

<script>
function filterLang(lang, element) {
  const isDark = document.body.getAttribute('data-md-color-scheme') === 'slate';
  
  const buttons = document.querySelectorAll('.language-filter .lang-btn');
  buttons.forEach(btn => {
    btn.style.color = '#757575';
    btn.style.fontWeight = '400';
  });
  
  if (element) {
    element.style.color = isDark ? '#ffffff' : '#000000';
    element.style.fontWeight = '700';
  }

  const items = document.querySelectorAll('.stream-item');
  items.forEach(item => {
    if (lang === 'all' || item.classList.contains(lang)) {
      item.style.display = 'list-item';
    } else {
      item.style.display = 'none';
    }
  });
}
</script>
