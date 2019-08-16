---
title: Major Update
author: James
layout: post
---

<p>We do not have a versioning system for the RIS as it has a rolling development cycle. However this update can be compared to a major version change. </p>

<h3>Changes Include</h3>
<ul>
	<li>Adjusted chart/map system to accept null data values</li>
	<li>Re-labelled interface and back-end for data (national, local instead of Country, PA) to help generalize the data</li>
	<li>Added titles to the map legends</li>
	<li>Adjusted scroll boundaries so headings are always visible in certain areas (menu, indicator cards)</li>
	<li>Tweaked CSS for better cross browser compatibility</li>
	<li>Split Indicator and data creation steps to make it easier.</li>
	<li>Added function to show country names in the chart if the chart is linked to the map using any ISO country code.</li>
	<li>Automatically update indicator card if settings are changed asynchronously.</li>
	<li>Added the statistical Analysis tool (image below)</li>
</ul>
<img src="{{ 'assets/images/stat_tool.gif' | relative_url }}" alt="Statistical Analysis Tool" />