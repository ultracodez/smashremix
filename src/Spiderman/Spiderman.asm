// Spiderman.asm

// This file contains file inclusions, action edits, and assembly for Spider-Man.

scope Spiderman {
    // Insert Moveset files
    insert VICTORY_1, "moveset/VICTORY_1.bin"
    insert VICTORY_3, "moveset/VICTORY_3.bin"
	insert BACK_AERIAL, "moveset/BACK_AERIAL.bin"
    insert DASH_ATTACK, "moveset/DASH_ATTACK.bin"
    insert DOWN_AERIAL, "moveset/DOWN_AERIAL.bin"
    insert DOWN_SMASH, "moveset/DOWN_SMASH.bin"
    insert DOWN_TILT, "moveset/DOWN_TILT.bin"
    insert ENTRY_1, "moveset/ENTRY_1.bin"
    insert ENTRY_2, "moveset/ENTRY_2.bin"
    insert FORWARD_AERIAL, "moveset/FORWARD_AERIAL.bin"
    insert FORWARD_SMASH, "moveset/FORWARD_SMASH.bin"
    insert FORWARD_TILT, "moveset/FORWARD_TILT.bin"
    insert GRAB, "moveset/GRAB.bin"
    insert JAB1, "moveset/JAB1.bin"
    insert JAB2, "moveset/JAB2.bin"
    insert JAB3, "moveset/JAB3.bin"
    insert NEUTRAL_AERIAL, "moveset/NEUTRAL_AERIAL.bin"
    insert TAUNT, "moveset/TAUNT.bin"
    insert THROW_B, "moveset/THROW_B.bin"
    insert THROW_F, "moveset/THROW_F.bin"
    insert UP_AERIAL, "moveset/UP_AERIAL.bin"
    insert UP_SMASH, "moveset/UP_SMASH.bin"
    insert UP_TILT, "moveset/UP_TILT.bin"
    
    // Modify Action Parameters             // Action               // Animation                // Moveset Data             // Flags

    // Modify Menu Action Parameters             // Action          // Animation                // Moveset Data             // Flags
    Character.edit_menu_action_parameters(SPM,   0x0,               File.SPM_IDLE,              -1,                         -1)          // CSS Idle
    Character.edit_menu_action_parameters(SPM,   0x1,               File.SPM_VICTORY_1,         VICTORY_1,                  -1)          // Victory1
    Character.edit_menu_action_parameters(SPM,   0x2,               File.SPM_VICTORY_2,         -1,                         -1)          // Victory2
    Character.edit_menu_action_parameters(SPM,   0x3,               File.SPM_VICTORY_3,         VICTORY_3,                  -1)          // Victory3
    Character.edit_menu_action_parameters(SPM,   0x4,               File.SPM_VICTORY_1,         VICTORY_1,                  -1)          // CSS Select
    Character.edit_menu_action_parameters(SPM,   0xD,               File.SPM_1P_POSE,           -1,                         -1)          // Classic Mode Pose

    // Set crowd chant FGM.
    //Character.table_patch_start(crowd_chant_fgm, Character.id.SPM, 0x2)
    //dh  0x031E
    //OS.patch_end()


    // Set default costumes
    Character.set_default_costumes(Character.id.SPM, 0, 1, 2, 3, 1, 2, 3)

    // Shield colors for costume matching
    Character.set_costume_shield_colors(SPM, BLUE, RED, GREEN, BLACK, BLUE, BLUE, YELLOW, WHITE)

    // Set action strings
    Character.table_patch_start(action_string, Character.id.SPM, 0x4)
    dw  Action.CAPTAIN.action_string_table
    OS.patch_end()
}
