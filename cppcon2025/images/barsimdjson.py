import matplotlib.pyplot as plt

# Data from the user
processors = [
    "AMD Ryzen 9 9950X3D",
    "Intel Core Ultra 9 285K",
    "Snapdragon X Elite X1E78100",
    "ARMv8 Neoverse-V2 72-Core"
]
gb_per_second = [13.64, 10.07, 4.27, 4.06]


# Define colors for each processor type
colors = ['#FF6F61', "#0655F1", '#2ECC71', '#2ECC71']  # AMD: coral, Intel: gray, ARM: green

# Create bar chart
plt.figure(figsize=(10, 6))
bars = plt.bar(processors, gb_per_second, color=colors, edgecolor='black')

# Remove top and right spines
ax = plt.gca()
ax.spines['top'].set_visible(False)
ax.spines['right'].set_visible(False)

# Add data labels on top of each bar
for bar in bars:
    yval = bar.get_height()
    plt.text(bar.get_x() + bar.get_width()/2, yval + 0.2, f'{yval:.2g} GB/s',
             ha='center', va='bottom', fontsize=14)

plt.ylabel('Throughput (GB/s)', fontsize=14)

# Add legend
plt.legend(handles=[
    plt.Rectangle((0,0),1,1,fc=colors[0],edgecolor='black'),
    plt.Rectangle((0,0),1,1,fc=colors[1],edgecolor='black'),
    plt.Rectangle((0,0),1,1,fc=colors[2],edgecolor='black')
], labels=['AMD', 'Intel', 'ARM'], loc='upper right', fontsize=16, frameon=False)
plt.tight_layout()

# Save the plot as PNG
plt.savefig('simdjson_benchmark.png', dpi=300, bbox_inches='tight')
plt.close()
