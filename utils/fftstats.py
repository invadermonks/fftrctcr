import sys

def calculate_stat(level, stat_name, gender, growth, multiplier):
    # Initial raw stats based on gender
    raw_stats = {
        'Male': {'Sp': 98304, 'PA': 81920, 'MA': 65536, 'HP': (491520, 524287), 'MP': (229376, 245759)},
        'Female': {'Sp': 98304, 'PA': 65536, 'MA': 81920, 'HP': (458752, 491519), 'MP': (245760, 262143)},
        'Monster': {'Sp': 81920, 'PA': (81920, 98303), 'MA': (81920, 98303), 'HP': (573440, 622591), 'MP': (8304, 147455)}
    }
    
    if gender not in raw_stats:
        raise ValueError("Invalid gender specified.")
    
    # Select the correct raw stat range or value
    raw_stat = raw_stats[gender][stat_name]
    if isinstance(raw_stat, tuple):
        # If the stat is given as a range, just take the maximum value
        raw_stat = max(raw_stat)
    # Calculate growth bonus across levels assuming linear growth
    for lv in range(2, level + 1):  # Start from level 2 to the specified level
        bonus = raw_stat / (growth + lv - 1)
        raw_stat += bonus
    
    # Calculate final stat
    divisor = 1638400 if stat_name in ['HP', 'MP', 'Sp', 'PA', 'MA'] else 163840
    final_stat = (raw_stat * multiplier) / divisor
    # round final stat to 2 decimal places
    final_stat = max(1, round(final_stat, 2))  # Ensure minimum stat of 1
    
    return final_stat

if __name__ == "__main__":
    if len(sys.argv) != 6:
        print("Usage: fftstats.py <level> <statname> <gender> <growth> <multiplier>")
        sys.exit(1)
    
    level = int(sys.argv[1])
    stat_name = sys.argv[2]
    gender = sys.argv[3]
    growth = float(sys.argv[4])
    multiplier = float(sys.argv[5])

    result = calculate_stat(level, stat_name, gender, growth, multiplier)
    print(f"The calculated {stat_name} at level {level} is: {result}")
