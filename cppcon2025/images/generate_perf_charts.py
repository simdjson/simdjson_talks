import matplotlib.pyplot as plt
plt.rcParams.update({'font.size': 16})

# Chart 1: Current landscape (without simdjson)
libraries_landscape = ["nlohmann::json", "RapidJSON", "Serde (Rust)", "yyjson"]
speeds_landscape = [174, 529, 1710, 1909]
colors_landscape = ['#8B8680', '#6495ED', '#FF6F61', '#2ECC71']

plt.figure(figsize=(10, 6))
bars = plt.bar(libraries_landscape, speeds_landscape, color=colors_landscape, edgecolor='black')

ax = plt.gca()
ax.spines['top'].set_visible(False)
ax.spines['right'].set_visible(False)

lang_labels = ["C++", "C++", "Rust", "C"]
for i, bar in enumerate(bars):
    yval = bar.get_height()
    plt.text(bar.get_x() + bar.get_width()/2, yval + 50, f'{int(yval)} MB/s',
             ha='center', va='bottom', fontsize=12)
    plt.text(bar.get_x() + bar.get_width()/2, yval + 150, lang_labels[i],
             ha='center', va='bottom', fontsize=12, color='black', fontweight='bold', style='italic')

plt.ylabel('Throughput (MB/s)', fontsize=14)
plt.ylim(0, 2500)
plt.title('Current JSON Serialization Landscape', fontsize=16)
plt.text(0.01, 0.99, 'Apple Silicon (M3 MAX)', transform=ax.transAxes,
         fontsize=14, ha='left', va='top', style='italic', color='black')

plt.text(0.01, 0.89, 'twitter.json', transform=ax.transAxes,
         fontsize=14, ha='left', va='top', style='italic', color='black')
plt.tight_layout()
plt.savefig('perf_landscape.png', dpi=300, bbox_inches='tight')
plt.close()

# Chart 2: With simdjson reveal
libraries_with = ["nlohmann::json", "RapidJSON", "Serde (Rust)", "yyjson", "simdjson"]
speeds_with = [174, 529, 1710, 1909, 3598]
colors_with = ['#8B8680', '#6495ED', '#FF6F61', '#2ECC71', '#FFD700']

plt.figure(figsize=(10, 6))
bars = plt.bar(libraries_with, speeds_with, color=colors_with, edgecolor='black')

ax = plt.gca()
ax.spines['top'].set_visible(False)
ax.spines['right'].set_visible(False)

lang_labels = ["C++", "C++", "Rust", "C", "C++"]
for i, bar in enumerate(bars):
    yval = bar.get_height()
    label = f'{yval} MB/s ' if libraries_with[i] == 'simdjson' else f'{yval} MB/s'
    plt.text(bar.get_x() + bar.get_width()/2, yval + 50, label,
             ha='center', va='bottom', fontsize=12)
    plt.text(bar.get_x() + bar.get_width()/2, yval + 180, lang_labels[i],
             ha='center', va='bottom', fontsize=12, color='black', fontweight='bold', style='italic')

# Highlight simdjson
bars[-1].set_linewidth(3)
bars[-1].set_edgecolor('#FF0000')

plt.ylabel('Throughput (MB/s)', fontsize=14)
plt.ylim(0, 4000)
plt.title('JSON Serialization Performance', fontsize=16)
plt.text(0.01, 0.99, 'Apple Silicon (M3 MAX)', transform=ax.transAxes,
         fontsize=14, ha='left', va='top', style='italic', color='black')
plt.text(0.01, 0.89, 'twitter.json', transform=ax.transAxes,
         fontsize=14, ha='left', va='top', style='italic', color='black')
plt.tight_layout()
plt.savefig('perf_with_simdjson.png', dpi=300, bbox_inches='tight')
plt.close()

# Chart 2b: Parsing only (same style)
plt.figure(figsize=(10, 6))
bars = plt.bar(libraries_with, [172, 658, 1720, 2637, 4170], color=colors_with, edgecolor='black')
ax = plt.gca()
ax.spines['top'].set_visible(False)
ax.spines['right'].set_visible(False)
lang_labels = ["C++", "C++", "Rust", "C", "C++"]
for i, bar in enumerate(bars):
    yval = bar.get_height()
    label = f'{yval} MB/s ' if libraries_with[i] == 'simdjson' else f'{yval} MB/s'
    plt.text(bar.get_x() + bar.get_width()/2, yval + 50, label,
             ha='center', va='bottom', fontsize=12)
    plt.text(bar.get_x() + bar.get_width()/2, yval + 180, lang_labels[i],
             ha='center', va='bottom', fontsize=12, color='black', fontweight='bold', style='italic')
bars[-1].set_linewidth(3)
bars[-1].set_edgecolor('#FF0000')
plt.ylabel('Throughput (MB/s)', fontsize=14)
plt.ylim(0, 4500)
plt.title('JSON Parsing Performance', fontsize=16)
plt.text(0.01, 0.99, 'Apple Silicon (M3 MAX)', transform=ax.transAxes,
         fontsize=14, ha='left', va='top', style='italic', color='black')
plt.text(0.01, 0.89, 'twitter.json', transform=ax.transAxes,
         fontsize=14, ha='left', va='top', style='italic', color='black')
plt.tight_layout()
plt.savefig('perf_with_simdjson_parsing.png', dpi=300, bbox_inches='tight')
plt.close()






print("Performance charts generated successfully!")