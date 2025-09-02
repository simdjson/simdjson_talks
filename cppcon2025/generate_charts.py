#!/usr/bin/env python3
import matplotlib.pyplot as plt
import numpy as np

# Set up the style
plt.style.use('default')
plt.rcParams['figure.facecolor'] = 'white'
plt.rcParams['axes.facecolor'] = 'white'
plt.rcParams['font.size'] = 12
plt.rcParams['font.weight'] = 'bold'

# Data for the charts
libraries = ['nlohmann::json', 'RapidJSON', 'Serde (Rust)', 'yyjson']
speeds = [242, 497, 1343, 2074]
colors = ['#2E86AB', '#A23B72', '#F18F01', '#C73E1D']

# Chart 1: Current Landscape (without simdjson)
fig, ax = plt.subplots(figsize=(12, 6))
bars = ax.barh(libraries, speeds, color=colors, height=0.6)
ax.set_xlabel('Speed (MB/s)', fontsize=14, fontweight='bold')
ax.set_title('Current JSON Serialization Landscape', fontsize=16, fontweight='bold')
ax.set_xlim(0, 2500)
ax.grid(axis='x', alpha=0.3, linestyle='--')

# Add value labels on bars
for bar, speed in zip(bars, speeds):
    ax.text(bar.get_width() + 50, bar.get_y() + bar.get_height()/2, 
            f'{speed} MB/s', va='center', fontweight='bold')

plt.tight_layout()
plt.savefig('/Users/random_person/Desktop/simdjson_talks/cppcon2025/images/perf_landscape.png', 
            dpi=150, bbox_inches='tight', facecolor='white')
plt.close()

# Chart 2: With simdjson reveal
libraries_with_simdjson = ['nlohmann::json', 'RapidJSON', 'Serde (Rust)', 'yyjson', 'simdjson']
speeds_with_simdjson = [242, 497, 1343, 2074, 3435]
colors_with_simdjson = ['#2E86AB', '#A23B72', '#F18F01', '#C73E1D', '#00A878']

fig, ax = plt.subplots(figsize=(14, 6))  # Wider figure
bars = ax.barh(libraries_with_simdjson, speeds_with_simdjson, color=colors_with_simdjson, height=0.6)
ax.set_xlabel('Speed (MB/s)', fontsize=14, fontweight='bold')
ax.set_title('JSON Serialization Performance Comparison', fontsize=16, fontweight='bold')
ax.set_xlim(0, 4000)  # Extended x-axis limit
ax.grid(axis='x', alpha=0.3, linestyle='--')

# Add value labels on bars
for bar, speed, lib in zip(bars, speeds_with_simdjson, libraries_with_simdjson):
    label = f'{speed} MB/s ⭐' if lib == 'simdjson' else f'{speed} MB/s'
    ax.text(bar.get_width() + 50, bar.get_y() + bar.get_height()/2, 
            label, va='center', fontweight='bold')

# Highlight simdjson bar
bars[-1].set_edgecolor('gold')
bars[-1].set_linewidth(3)

plt.tight_layout()
plt.savefig('/Users/random_person/Desktop/simdjson_talks/cppcon2025/images/perf_with_simdjson.png', 
            dpi=150, bbox_inches='tight', facecolor='white')
plt.close()

# Chart 3: Final comparison (sorted by performance)
libraries_sorted = ['simdjson', 'yyjson', 'Serde (Rust)', 'RapidJSON', 'nlohmann::json']
speeds_sorted = [3435, 2074, 1343, 497, 242]
colors_sorted = ['#00A878', '#C73E1D', '#F18F01', '#A23B72', '#2E86AB']

fig, ax = plt.subplots(figsize=(14, 6))  # Wider figure
bars = ax.barh(libraries_sorted, speeds_sorted, color=colors_sorted, height=0.6)
ax.set_xlabel('Speed (MB/s)', fontsize=14, fontweight='bold')
ax.set_title('Twitter Dataset (631KB) - Serialization Performance', fontsize=16, fontweight='bold')
ax.set_xlim(0, 4000)  # Extended x-axis limit
ax.grid(axis='x', alpha=0.3, linestyle='--')

# Add value labels on bars
for bar, speed, lib in zip(bars, speeds_sorted, libraries_sorted):
    label = f'{speed} MB/s ⭐' if lib == 'simdjson' else f'{speed} MB/s'
    ax.text(bar.get_width() + 50, bar.get_y() + bar.get_height()/2, 
            label, va='center', fontweight='bold')

# Highlight simdjson bar
bars[0].set_edgecolor('gold')
bars[0].set_linewidth(3)

plt.tight_layout()
plt.savefig('/Users/random_person/Desktop/simdjson_talks/cppcon2025/images/perf_comparison.png', 
            dpi=150, bbox_inches='tight', facecolor='white')
plt.close()

print("Charts generated successfully!")
print("- perf_landscape.png: Current landscape without simdjson")
print("- perf_with_simdjson.png: Performance comparison with simdjson")
print("- perf_comparison.png: Final sorted comparison")