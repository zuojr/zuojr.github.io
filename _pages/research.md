---
layout: page
permalink: /research/
title: Research
heading: Research
nav: true
nav_order: 2
---

<div class="publications">

<h2 class="publication-category">AI Agents & Human–AI Decision-Making</h2>
<p class="text-muted">I study when to delegate decisions to AI and how to evaluate and oversee its performance.</p>

{% bibliography --group_by none --query @*[research_category=ai_agents_human_ai_decision_systems]* %}

<h2 class="publication-category">Learning & Experimentation in Digital Platforms</h2>
<p class="text-muted">I develop learning and experimental methods to improve decision-making under uncertainty on digital platforms.</p>

{% bibliography --group_by none --query @*[research_category=online_learning_experimentation_platform_design]* %}

</div>
