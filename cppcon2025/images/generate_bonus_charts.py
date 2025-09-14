import matplotlib.pyplot as plt
import matplotlib.patches as mpatches
import numpy as np

# Set style for better presentation visuals
plt.style.use('seaborn-v0_8-darkgrid')

# Create comprehensive instruction count comparison chart
fig = plt.figure(figsize=(16, 10))

# Chart 1: Field name encoding efficiency (moved from chart 3)
ax1 = plt.subplot(2, 3, 1)
field_approaches = ['Manual:\nByte-by-byte', 'Reflection:\n64-bit constants']
field_instructions = [200, 8]
field_colors = ['#FF6B6B', '#4ECDC4']

bars1 = ax1.bar(field_approaches, field_instructions, color=field_colors, 
                edgecolor='black', linewidth=2)

for bar in bars1:
    height = bar.get_height()
    ax1.text(bar.get_x() + bar.get_width()/2, height + 5,
            f'{int(height)} instructions', ha='center', va='bottom',
            fontsize=11, fontweight='bold')

ax1.set_ylabel('Instructions for Field Names', fontsize=12, fontweight='bold')
ax1.set_title('Field Name Operations (25x faster!)', fontsize=14, fontweight='bold')
ax1.set_ylim(0, 250)
ax1.grid(True, alpha=0.3, axis='y')

# Chart 2: Branch complexity
ax2 = plt.subplot(2, 3, 2)
branch_data = {
    'Manual': {'total': 311, 'types': [156, 78, 45, 32]},
    'Reflection': {'total': 20, 'types': [10, 5, 3, 2]}
}

x = np.arange(2)
width = 0.35
branch_colors = ['#FF4444', '#FF6666', '#FF8888', '#FFAAAA']
labels = ['je (equal)', 'jne (not equal)', 'jb (below)', 'ja (above)']

bottom_manual = np.zeros(1)
bottom_reflection = np.zeros(1)

for i, (label, color) in enumerate(zip(labels, branch_colors)):
    manual_val = branch_data['Manual']['types'][i]
    reflection_val = branch_data['Reflection']['types'][i]
    
    ax2.bar(0, manual_val, width*2, bottom=bottom_manual, 
           color=color, edgecolor='black', label=label)
    ax2.bar(1, reflection_val, width*2, bottom=bottom_reflection,
           color=color, edgecolor='black')
    
    bottom_manual += manual_val
    bottom_reflection += reflection_val

ax2.set_ylabel('Number of Branches', fontsize=12, fontweight='bold')
ax2.set_title('Branch Complexity (15x fewer!)', fontsize=14, fontweight='bold')
ax2.set_xticks([0, 1])
ax2.set_xticklabels(['Manual\n(311 total)', 'Reflection\n(20 total)'])
ax2.legend(loc='upper right', fontsize=9)
ax2.set_ylim(0, 350)
ax2.grid(True, alpha=0.3, axis='y')

# Chart 3: Total instruction comparison (simpler view)
ax3 = plt.subplot(2, 3, 3)
total_categories = ['Manual', 'Reflection']
total_values = [1635, 648]
total_colors = ['#FF6B6B', '#4ECDC4']

bars3 = ax3.bar(total_categories, total_values, color=total_colors,
                edgecolor='black', linewidth=2)

for bar in bars3:
    height = bar.get_height()
    ax3.text(bar.get_x() + bar.get_width()/2, height + 20,
            f'{int(height)}\ninstructions', ha='center', va='bottom',
            fontsize=11, fontweight='bold')

ax3.set_ylabel('Total Instructions', fontsize=12, fontweight='bold')
ax3.set_title('Overall Instruction Count (2.5x fewer!)', fontsize=14, fontweight='bold')
ax3.set_ylim(0, 1800)
ax3.grid(True, alpha=0.3, axis='y')

# Chart 4: Memory operation comparison
ax4 = plt.subplot(2, 3, 4)
mem_categories = ['String\nConcatenation', 'Escape\nProcessing', 'Memory\nAllocation']
manual_mem = [400, 600, 235]
reflection_mem = [50, 0, 20]

x = np.arange(len(mem_categories))
width = 0.35

bars4_1 = ax4.bar(x - width/2, manual_mem, width, label='Manual', 
                  color='#FF6B6B', edgecolor='black')
bars4_2 = ax4.bar(x + width/2, reflection_mem, width, label='Reflection',
                  color='#4ECDC4', edgecolor='black')

ax4.set_ylabel('Instructions', fontsize=12, fontweight='bold')
ax4.set_title('Memory & String Operations', fontsize=14, fontweight='bold')
ax4.set_xticks(x)
ax4.set_xticklabels(mem_categories)
ax4.legend(fontsize=10)
ax4.set_ylim(0, 700)
ax4.grid(True, alpha=0.3, axis='y')

# Add value labels
for bars in [bars4_1, bars4_2]:
    for bar in bars:
        height = bar.get_height()
        if height > 0:
            ax4.text(bar.get_x() + bar.get_width()/2, height + 10,
                    f'{int(height)}', ha='center', va='bottom', fontsize=9)

# Chart 5: Developer experience (simplified without error prone)
ax5 = plt.subplot(2, 3, 5)
dev_metrics = ['Lines of\nC++ Code', 'Escape\nLogic\nRequired']
manual_scores = [70, 100]
reflection_scores = [1, 0]

x = np.arange(len(dev_metrics))
width = 0.35

bars5_1 = ax5.bar(x - width/2, manual_scores, width, label='Manual',
                  color='#FF6B6B', edgecolor='black')
bars5_2 = ax5.bar(x + width/2, reflection_scores, width, label='Reflection',
                  color='#4ECDC4', edgecolor='black')

for bars in [bars5_1, bars5_2]:
    for bar in bars:
        height = bar.get_height()
        if height > 0:
            ax5.text(bar.get_x() + bar.get_width()/2, height + 2,
                    f'{int(height)}', ha='center', va='bottom', fontsize=10)

ax5.set_ylabel('Complexity Units', fontsize=12, fontweight='bold')
ax5.set_title('Developer Experience', fontsize=14, fontweight='bold')
ax5.set_xticks(x)
ax5.set_xticklabels(dev_metrics)
ax5.legend(fontsize=10)
ax5.set_ylim(0, 120)
ax5.grid(True, alpha=0.3, axis='y')

# Chart 6: Performance summary
ax6 = plt.subplot(2, 3, 6)
perf_metrics = ['Total\nInstructions', 'Branch\nPredictions', 'Cache\nEfficiency', 'Developer\nProductivity']
improvements = [2.5, 15, 10, 43]
colors6 = ['#FFD700', '#FFA500', '#FF8C00', '#FF4500']

bars6 = ax6.barh(perf_metrics, improvements, color=colors6, edgecolor='black', linewidth=2)

for bar in bars6:
    width = bar.get_width()
    ax6.text(width + 0.5, bar.get_y() + bar.get_height()/2,
            f'{width}x better', ha='left', va='center',
            fontsize=11, fontweight='bold')

ax6.set_xlabel('Improvement Factor', fontsize=12, fontweight='bold')
ax6.set_title('Overall Performance Gains', fontsize=14, fontweight='bold')
ax6.set_xlim(0, 50)
ax6.grid(True, alpha=0.3, axis='x')

plt.suptitle('Assembly Analysis: Manual vs Reflection Serialization', 
            fontsize=18, fontweight='bold', y=1.02)
plt.tight_layout()
plt.savefig('bonus_instruction_analysis.png', dpi=300, bbox_inches='tight', facecolor='white')
plt.close()

# Create a simpler summary chart for quick reference
fig2, (ax1, ax2) = plt.subplots(1, 2, figsize=(14, 6))

# Simple instruction count
labels = ['Manual\n1,635 instr', 'Reflection\n648 instr']
sizes = [1635, 648]
colors = ['#FF6B6B', '#4ECDC4']
explode = (0.05, 0)

wedges, texts, autotexts = ax1.pie(sizes, labels=labels, colors=colors, 
                                    autopct='%1.0f%%', explode=explode,
                                    startangle=90, textprops={'fontsize': 12, 'fontweight': 'bold'})

for w in wedges:
    w.set_edgecolor('black')
    w.set_linewidth(2)

ax1.set_title('Instruction Count Distribution\n(2.5x improvement)', 
             fontsize=14, fontweight='bold')

# Key benefits
ax2.axis('off')
benefits = [
    ('✓ 2.5x fewer instructions', '#4ECDC4'),
    ('✓ 15x fewer branches', '#95E77E'),
    ('✓ 25x faster field names', '#FFD700'),
    ('✓ Zero escape loops', '#FFA500'),
    ('✓ 43x less code to write', '#FF4500')
]

y_pos = 0.8
for benefit, color in benefits:
    ax2.text(0.1, y_pos, benefit, fontsize=16, fontweight='bold',
            color=color, transform=ax2.transAxes,
            bbox=dict(boxstyle='round,pad=0.5', facecolor='white', 
                     edgecolor=color, linewidth=2))
    y_pos -= 0.15

ax2.set_title('Key Performance Benefits', fontsize=16, fontweight='bold',
             transform=ax2.transAxes, x=0.5, y=0.95)

plt.suptitle('Reflection: Better Performance with Less Code', 
            fontsize=18, fontweight='bold', y=1.02)
plt.tight_layout()
plt.savefig('bonus_summary.png', dpi=300, bbox_inches='tight', facecolor='white')
plt.close()

print("Bonus section charts generated successfully!")