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
    insert GRAB_RELEASE_DATA, "moveset/GRAB_RELEASE_DATA.bin"
    GRAB:; Moveset.THROW_DATA(GRAB_RELEASE_DATA); insert "moveset/GRAB.bin"
    insert GRAB_PULL, "moveset/GRAB_PULL.bin"
    insert THROW_B_DATA,"moveset/THROW_B_DATA.bin"
    THROW_B:; Moveset.THROW_DATA(THROW_B_DATA); insert "moveset/THROW_B.bin"
    insert THROW_F_DATA,"moveset/THROW_F_DATA.bin"
    THROW_F:; Moveset.THROW_DATA(THROW_F_DATA); insert "moveset/THROW_F.bin"
    insert JAB1, "moveset/JAB1.bin"
    insert JAB2, "moveset/JAB2.bin"
    insert JAB3, "moveset/JAB3.bin"
    insert JAB3_LOOP_START, "moveset/JAB3_LOOP_START.bin"
    insert NEUTRAL_AERIAL, "moveset/NEUTRAL_AERIAL.bin"
    insert TAUNT, "moveset/TAUNT.bin"
    insert UP_AERIAL, "moveset/UP_AERIAL.bin"
    insert UP_SMASH, "moveset/UP_SMASH.bin"
    insert UP_TILT, "moveset/UP_TILT.bin"
    insert HAMMER, "moveset/HAMMER.bin"
    
    // Modify Action Parameters           // Action                      // Animation                    // Moveset Data           // Flags
    Character.edit_action_parameters(SPM, Action.Entry,                  File.SPM_IDLE,                  -1,                       -1)
    Character.edit_action_parameters(SPM, 0x006,                         File.SPM_IDLE,                  -1,                       -1)
    Character.edit_action_parameters(SPM, Action.Revive2,                File.SPM_DOWNSTANDD,            -1,                       -1)
    Character.edit_action_parameters(SPM, Action.ReviveWait,             File.SPM_IDLE,                  -1,                       -1)
    Character.edit_action_parameters(SPM, Action.Idle,                   File.SPM_IDLE,                  -1,                       -1)
    Character.edit_action_parameters(SPM, Action.Walk1,                  File.SPM_WALK1,                 -1,                       -1)
    Character.edit_action_parameters(SPM, Action.Walk2,                  File.SPM_WALK2,                 -1,                       -1)
    Character.edit_action_parameters(SPM, Action.Walk3,                  File.SPM_WALK3,                 -1,                       -1)
    Character.edit_action_parameters(SPM, 0x00E,                         File.SPM_WALKEND,               -1,                       -1)
    Character.edit_action_parameters(SPM, Action.Dash,                   File.SPM_DASH,                  -1,                       -1)
    Character.edit_action_parameters(SPM, Action.Run,                    File.SPM_RUN,                   -1,                       -1)
    Character.edit_action_parameters(SPM, Action.RunBrake,               File.SPM_RUNBRAKE,              -1,                       -1)
    Character.edit_action_parameters(SPM, Action.Turn,                   File.SPM_TURN,                  -1,                       -1)
    Character.edit_action_parameters(SPM, Action.TurnRun,                File.SPM_TURNRUN,               -1,                       -1)
    Character.edit_action_parameters(SPM, Action.JumpSquat,              File.SPM_LANDING,               -1,                       -1)
    Character.edit_action_parameters(SPM, Action.ShieldJumpSquat,        File.SPM_LANDING,               -1,                       -1)
    Character.edit_action_parameters(SPM, Action.JumpF,                  File.SPM_JUMPF,                 -1,                       -1)
    Character.edit_action_parameters(SPM, Action.JumpB,                  File.SPM_JUMPB,                 -1,                       -1)
    Character.edit_action_parameters(SPM, Action.JumpAerialF,            File.SPM_JUMPAERIALF,           -1,                       -1)
    Character.edit_action_parameters(SPM, Action.JumpAerialB,            File.SPM_JUMPAERIALB,           -1,                       -1)
    Character.edit_action_parameters(SPM, Action.Fall,                   File.SPM_FALL,                  -1,                       -1)
    Character.edit_action_parameters(SPM, Action.FallAerial,             File.SPM_FALLAERIAL,            -1,                       -1)
    Character.edit_action_parameters(SPM, Action.Crouch,                 File.SPM_CROUCH,                -1,                       -1)
    Character.edit_action_parameters(SPM, Action.CrouchIdle,             File.SPM_CROUCHIDLE,            -1,                       -1)
    Character.edit_action_parameters(SPM, Action.CrouchEnd,              File.SPM_CROUCHEND,             -1,                       -1)
    Character.edit_action_parameters(SPM, Action.LandingLight,           File.SPM_LANDING,               -1,                       -1)
    Character.edit_action_parameters(SPM, Action.LandingHeavy,           File.SPM_LANDING,               -1,                       -1)
    Character.edit_action_parameters(SPM, Action.Pass,                   File.SPM_PLATDROP,              -1,                       -1)
    Character.edit_action_parameters(SPM, Action.ShieldDrop,             File.SPM_PLATDROP,              -1,                       -1)
    Character.edit_action_parameters(SPM, Action.Teeter,                 File.SPM_TEETER,                -1,                       -1)
    Character.edit_action_parameters(SPM, Action.TeeterStart,            File.SPM_TEETERSTART,           -1,                       -1)
    Character.edit_action_parameters(SPM, Action.FallSpecial,            File.SPM_FALLSPECIAL,           -1,                       -1)
    Character.edit_action_parameters(SPM, Action.LandingSpecial,         File.SPM_LANDING,               -1,                       -1)
    Character.edit_action_parameters(SPM, Action.Tornado,                File.SPM_TUMBLE,                -1,                       -1)
    Character.edit_action_parameters(SPM, Action.EnterPipe,              File.SPM_ENTERPIPE,             -1,                       -1)
    Character.edit_action_parameters(SPM, Action.ExitPipe,               File.SPM_EXITPIPE,              -1,                       -1)
    Character.edit_action_parameters(SPM, Action.ExitPipeWalk,           File.SPM_EXITPIPEWALK,          -1,                       -1)
    Character.edit_action_parameters(SPM, Action.CeilingBonk,            File.SPM_CEILINGBONK,           -1,                       -1)
    Character.edit_action_parameters(SPM, Action.DownStandD,             File.SPM_DOWNSTANDD,            -1,                       -1)
    Character.edit_action_parameters(SPM, Action.DownStandU,             File.SPM_DOWNSTANDU,            -1,                       -1)
    Character.edit_action_parameters(SPM, Action.TechF,                  File.SPM_TECHF,                 -1,                       -1)
    Character.edit_action_parameters(SPM, Action.TechB,                  File.SPM_TECHB,                 -1,                       -1)
    Character.edit_action_parameters(SPM, Action.DownForwardD,           File.SPM_DOWNFORWARDD,          -1,                       -1)
    Character.edit_action_parameters(SPM, Action.DownForwardU,           File.SPM_DOWNFORWARDU,          -1,                       -1)
    Character.edit_action_parameters(SPM, Action.DownBackD,              File.SPM_DOWNBACKD,             -1,                       -1)
    Character.edit_action_parameters(SPM, Action.DownBackU,              File.SPM_DOWNBACKU,             -1,                       -1)
    Character.edit_action_parameters(SPM, Action.DownAttackD,            File.SPM_DOWNATTACKD,           -1,                       -1)
    Character.edit_action_parameters(SPM, Action.DownAttackU,            File.SPM_DOWNATTACKU,           -1,                       -1)
    Character.edit_action_parameters(SPM, Action.Tech,                   File.SPM_TECH,                  -1,                       -1)
    Character.edit_action_parameters(SPM, Action.ClangRecoil,            File.SPM_CLANGRECOIL,           -1,                       -1)
    Character.edit_action_parameters(SPM, Action.CliffClimbQuick2,       File.SPM_CLIFFCLIMBQUICK2,      -1,                       -1)
    Character.edit_action_parameters(SPM, Action.CliffClimbSlow2,        File.SPM_CLIFFCLIMBSLOW2,       -1,                       -1)
    Character.edit_action_parameters(SPM, Action.CliffAttackQuick2,      File.SPM_CLIFFATTACKQUICK2,     -1,                       -1)
    Character.edit_action_parameters(SPM, Action.CliffAttackSlow2,       File.SPM_CLIFFATTACKSLOW2,      -1,                       -1)
    Character.edit_action_parameters(SPM, Action.CliffEscapeQuick2,      File.SPM_CLIFFESCAPEQUICK2,     -1,                       -1)
    Character.edit_action_parameters(SPM, Action.CliffEscapeSlow2,       File.SPM_CLIFFESCAPESLOW2,      -1,                       -1)
    Character.edit_action_parameters(SPM, Action.LightItemPickup,        File.SPM_LIGHTITEMPICKUP,       -1,                       -1)
    Character.edit_action_parameters(SPM, Action.HeavyItemPickup,        File.SPM_HEAVYITEMPICKUP,       -1,                       -1)
    Character.edit_action_parameters(SPM, Action.ItemDrop,               File.SPM_ITEMDROP,              -1,                       -1)
    Character.edit_action_parameters(SPM, Action.ItemThrowDash,          File.SPM_ITEMTHROWDASH,         -1,                       -1)
    Character.edit_action_parameters(SPM, Action.ItemThrowF,             File.SPM_ITEMTHROWF,            -1,                       -1)
    Character.edit_action_parameters(SPM, Action.ItemThrowB,             File.SPM_ITEMTHROWF,            -1,                       -1)
    Character.edit_action_parameters(SPM, Action.ItemThrowU,             File.SPM_ITEMTHROWU,            -1,                       -1)
    Character.edit_action_parameters(SPM, Action.ItemThrowD,             File.SPM_ITEMTHROWD,            -1,                       -1)
    Character.edit_action_parameters(SPM, Action.ItemThrowSmashF,        File.SPM_ITEMTHROWF,            -1,                       -1)
    Character.edit_action_parameters(SPM, Action.ItemThrowSmashB,        File.SPM_ITEMTHROWF,            -1,                       -1)
    Character.edit_action_parameters(SPM, Action.ItemThrowSmashU,        File.SPM_ITEMTHROWU,            -1,                       -1)
    Character.edit_action_parameters(SPM, Action.ItemThrowSmashD,        File.SPM_ITEMTHROWD,            -1,                       -1)
    Character.edit_action_parameters(SPM, Action.ItemThrowAirF,          File.SPM_ITEMTHROWAIRF,         -1,                       -1)
    Character.edit_action_parameters(SPM, Action.ItemThrowAirB,          File.SPM_ITEMTHROWAIRF,         -1,                       -1)
    Character.edit_action_parameters(SPM, Action.ItemThrowAirU,          File.SPM_ITEMTHROWAIRU,         -1,                       -1)
    Character.edit_action_parameters(SPM, Action.ItemThrowAirD,          File.SPM_ITEMTHROWAIRD,         -1,                       -1)
    Character.edit_action_parameters(SPM, Action.ItemThrowAirSmashF,     File.SPM_ITEMTHROWAIRF,         -1,                       -1)
    Character.edit_action_parameters(SPM, Action.ItemThrowAirSmashB,     File.SPM_ITEMTHROWAIRF,         -1,                       -1)
    Character.edit_action_parameters(SPM, Action.ItemThrowAirSmashU,     File.SPM_ITEMTHROWAIRU,         -1,                       -1)
    Character.edit_action_parameters(SPM, Action.ItemThrowAirSmashD,     File.SPM_ITEMTHROWAIRD,         -1,                       -1)
    Character.edit_action_parameters(SPM, Action.HeavyItemThrowF,        File.SPM_HEAVYITEMTHROW,        -1,                       -1)
    Character.edit_action_parameters(SPM, Action.HeavyItemThrowB,        File.SPM_HEAVYITEMTHROW,        -1,                       -1)
    Character.edit_action_parameters(SPM, Action.HeavyItemThrowSmashF,   File.SPM_HEAVYITEMTHROW,        -1,                       -1)
    Character.edit_action_parameters(SPM, Action.HeavyItemThrowSmashB,   File.SPM_HEAVYITEMTHROW,        -1,                       -1)
    Character.edit_action_parameters(SPM, Action.BeamSwordNeutral,       File.SPM_ITEMNEUTRAL,           -1,                       -1)
    Character.edit_action_parameters(SPM, Action.BeamSwordTilt,          File.SPM_ITEMTILT,              -1,                       -1)
    Character.edit_action_parameters(SPM, Action.BeamSwordSmash,         File.SPM_ITEMSMASH,             -1,                       -1)
    Character.edit_action_parameters(SPM, Action.BeamSwordDash,          File.SPM_ITEMDASH,              -1,                       -1)
    Character.edit_action_parameters(SPM, Action.BatNeutral,             File.SPM_ITEMNEUTRAL,           -1,                       -1)
    Character.edit_action_parameters(SPM, Action.BatTilt,                File.SPM_ITEMTILT,              -1,                       -1)
    Character.edit_action_parameters(SPM, Action.BatSmash,               File.SPM_ITEMSMASH,             -1,                       -1)
    Character.edit_action_parameters(SPM, Action.BatDash,                File.SPM_ITEMDASH,              -1,                       -1)
    Character.edit_action_parameters(SPM, Action.FanNeutral,             File.SPM_ITEMNEUTRAL,           -1,                       -1)
    Character.edit_action_parameters(SPM, Action.FanTilt,                File.SPM_ITEMTILT,              -1,                       -1)
    Character.edit_action_parameters(SPM, Action.FanSmash,               File.SPM_ITEMSMASH,             -1,                       -1)
    Character.edit_action_parameters(SPM, Action.FanDash,                File.SPM_ITEMDASH,              -1,                       -1)
    Character.edit_action_parameters(SPM, Action.StarRodNeutral,         File.SPM_ITEMNEUTRAL,           -1,                       -1)
    Character.edit_action_parameters(SPM, Action.StarRodTilt,            File.SPM_ITEMTILT,              -1,                       -1)
    Character.edit_action_parameters(SPM, Action.StarRodSmash,           File.SPM_ITEMSMASH,             -1,                       -1)
    Character.edit_action_parameters(SPM, Action.StarRodDash,            File.SPM_ITEMDASH,              -1,                       -1)
    Character.edit_action_parameters(SPM, Action.RayGunShoot,            File.SPM_ITEMSHOOT,             -1,                       -1)
    Character.edit_action_parameters(SPM, Action.RayGunShootAir,         File.SPM_ITEMSHOOTAIR,          -1,                       -1)
    Character.edit_action_parameters(SPM, Action.FireFlowerShoot,        File.SPM_ITEMSHOOT,             -1,                       -1)
    Character.edit_action_parameters(SPM, Action.FireFlowerShootAir,     File.SPM_ITEMSHOOTAIR,          -1,                       -1)
    Character.edit_action_parameters(SPM, Action.HammerIdle,             File.SPM_HAMMERIDLE,            HAMMER,                   -1)
    Character.edit_action_parameters(SPM, Action.HammerWalk,             File.SPM_HAMMERMOVE,            HAMMER,                   -1)
    Character.edit_action_parameters(SPM, Action.HammerTurn,             File.SPM_HAMMERMOVE,            HAMMER,                   -1)
    Character.edit_action_parameters(SPM, Action.HammerJumpSquat,        File.SPM_HAMMERMOVE,            HAMMER,                   -1)
    Character.edit_action_parameters(SPM, Action.HammerAir,              File.SPM_HAMMERMOVE,            HAMMER,                   -1)
    Character.edit_action_parameters(SPM, Action.HammerLanding,          File.SPM_HAMMERMOVE,            HAMMER,                   -1)
    Character.edit_action_parameters(SPM, Action.ShieldOn,               File.SPM_SHIELDON,              -1,                       -1)
    Character.edit_action_parameters(SPM, Action.ShieldOff,              File.SPM_SHIELDOFF,             -1,                       -1)
    Character.edit_action_parameters(SPM, Action.RollF,                  File.SPM_ROLLF,                 -1,                       -1)
    Character.edit_action_parameters(SPM, Action.RollB,                  File.SPM_ROLLB,                 -1,                       -1)
    Character.edit_action_parameters(SPM, Action.StunStartD,             File.SPM_DOWNSTANDD,            -1,                       -1)
    Character.edit_action_parameters(SPM, Action.StunStartU,             File.SPM_DOWNSTANDU,            -1,                       -1)
    Character.edit_action_parameters(SPM, Action.Stun,                   File.SPM_STUN,                  -1,                       -1)
    Character.edit_action_parameters(SPM, Action.Sleep,                  File.SPM_STUN,                  -1,                       -1)
    Character.edit_action_parameters(SPM, Action.Grab,                   File.SPM_GRAB,                  GRAB,                     0x10000000)
    Character.edit_action_parameters(SPM, Action.GrabPull,               File.SPM_GRABPULL,              GRAB_PULL,                0x10000000)
    Character.edit_action_parameters(SPM, Action.ThrowF,                 File.SPM_THROWF,                THROW_F,                  -1)
    Character.edit_action_parameters(SPM, Action.ThrowB,                 File.SPM_THROWB,                THROW_B,                  -1)
    Character.edit_action_parameters(SPM, Action.CapturePulled,          File.SPM_CAPTUREPULLED,         -1,                       -1)
    Character.edit_action_parameters(SPM, Action.EggLayPulled,           File.SPM_CAPTUREPULLED,         -1,                       -1)
    Character.edit_action_parameters(SPM, Action.EggLay,                 File.SPM_IDLE,                  -1,                       -1)
    Character.edit_action_parameters(SPM, Action.Taunt,                  File.SPM_TAUNT,                 TAUNT,                    -1)
    Character.edit_action_parameters(SPM, Action.Jab1,                   File.SPM_JAB1,                  JAB1,                     -1)
    Character.edit_action_parameters(SPM, Action.Jab2,                   File.SPM_JAB2,                  JAB2,                     -1)
    Character.edit_action_parameters(SPM, 0xDC,                          File.SPM_ACTION_0DC,            JAB3,                     0x40000000)
    Character.edit_action_parameters(SPM, 0xDD,                          File.SPM_JAB1,                  JAB1,                     0)
    Character.edit_action_parameters(SPM, 0xDE,                          File.SPM_JAB2,                  JAB2,                     0)
    Character.edit_action_parameters(SPM, Action.DashAttack,             File.SPM_DASHATTACK,            DASH_ATTACK,              -1)
    Character.edit_action_parameters(SPM, Action.FTiltHigh,              0,                              0x80000000,               0)
    Character.edit_action_parameters(SPM, Action.FTiltMidHigh,           0,                              0x80000000,               0)
    Character.edit_action_parameters(SPM, Action.FTilt,                  File.SPM_FTILT,                 FORWARD_TILT,             -1)
    Character.edit_action_parameters(SPM, Action.FTiltMidLow,            0,                              0x80000000,               0)
    Character.edit_action_parameters(SPM, Action.FTiltLow,               0,                              0x80000000,               0)
    Character.edit_action_parameters(SPM, Action.UTilt,                  File.SPM_UTILT,                 UP_TILT,                  -1)
    Character.edit_action_parameters(SPM, Action.DTilt,                  File.SPM_DTILT,                 DOWN_TILT,                -1)
    Character.edit_action_parameters(SPM, Action.FSmashHigh,             0,                              0x80000000,               0)
    Character.edit_action_parameters(SPM, Action.FSmashMidHigh,          0,                              0x80000000,               0)
    Character.edit_action_parameters(SPM, Action.FSmash,                 File.SPM_FSMASH,                FORWARD_SMASH,            -1)
    Character.edit_action_parameters(SPM, Action.FSmashMidLow,           0,                              0x80000000,               0)
    Character.edit_action_parameters(SPM, Action.FSmashLow,              0,                              0x80000000,               0)
    Character.edit_action_parameters(SPM, Action.USmash,                 File.SPM_USMASH,                UP_SMASH,                 -1)
    Character.edit_action_parameters(SPM, Action.DSmash,                 File.SPM_DSMASH,                DOWN_SMASH,               -1)
    Character.edit_action_parameters(SPM, Action.AttackAirN,             File.SPM_ATTACKAIRN,            NEUTRAL_AERIAL,           -1)
    Character.edit_action_parameters(SPM, Action.AttackAirF,             File.SPM_ATTACKAIRF,            FORWARD_AERIAL,           -1)
    Character.edit_action_parameters(SPM, Action.AttackAirB,             File.SPM_ATTACKAIRB,            BACK_AERIAL,              -1)
    Character.edit_action_parameters(SPM, Action.AttackAirU,             File.SPM_ATTACKAIRU,            UP_AERIAL,                -1)
    Character.edit_action_parameters(SPM, Action.AttackAirD,             File.SPM_ATTACKAIRD,            DOWN_AERIAL,              -1)
    Character.edit_action_parameters(SPM, Action.LandingAirF,            File.SPM_LANDINGAIRF,           -1,                       -1)
    Character.edit_action_parameters(SPM, Action.LandingAirB,            File.SPM_LANDINGAIRB,           -1,                       -1)
    Character.edit_action_parameters(SPM, Action.LandingAirX,            File.SPM_LANDING,               -1,                       -1)
    Character.edit_action_parameters(SPM, 0xE0,                          File.SPM_ACTION_0E0,            ENTRY_1,                  0x40000008) //ENTRY_1_LEFT
	Character.edit_action_parameters(SPM, 0xE1,                          File.SPM_ACTION_0E1,            ENTRY_1,                  0x40000008) //ENTRY_1_RIGHT
	Character.edit_action_parameters(SPM, 0xE2,                          File.SPM_ACTION_0E2,            ENTRY_2,                  0x40000008) //ENTRY_2_LEFT
	Character.edit_action_parameters(SPM, 0xE3,                          File.SPM_ACTION_0E3,            ENTRY_2,                  0x40000008) //ENTRY_2_RIGHT

    // Modify Menu Action Parameters             // Action          // Animation                // Moveset Data             // Flags
    Character.edit_menu_action_parameters(SPM,   0x0,               File.SPM_IDLE,              -1,                         -1)          // CSS Idle
    Character.edit_menu_action_parameters(SPM,   0x1,               File.SPM_VICTORY_1,         VICTORY_1,                  -1)          // Victory1
    Character.edit_menu_action_parameters(SPM,   0x2,               File.SPM_VICTORY_2,         -1,                         -1)          // Victory2
    Character.edit_menu_action_parameters(SPM,   0x3,               File.SPM_VICTORY_3,         VICTORY_3,                  -1)          // Victory3
    Character.edit_menu_action_parameters(SPM,   0x4,               File.SPM_VICTORY_1,         VICTORY_1,                  -1)          // CSS Select
    Character.edit_menu_action_parameters(SPM,   0xD,               File.SPM_1P_POSE,           -1,                         -1)          // 1P Mode Pose
    Character.edit_menu_action_parameters(SPM,   0x5,               File.SPM_CLAP,              -1,                         -1)
    Character.edit_menu_action_parameters(SPM,   0x9,               File.SPM_CONTINUEFALL,      -1,                         -1)
    Character.edit_menu_action_parameters(SPM,   0xA,               File.SPM_CONTINUEUP,        -1,                         -1)

    Character.table_patch_start(rapid_jab, Character.id.SPM, 0x4)
    dw      Character.rapid_jab.DISABLED        // disable rapid jab
    OS.patch_end()

    // Set crowd chant FGM.
    //Character.table_patch_start(crowd_chant_fgm, Character.id.SPM, 0x2)
    //dh  0x031E
    //OS.patch_end()


    // Remove entry script (no Blue Falcon).
    Character.table_patch_start(entry_script, Character.id.SPM, 0x4)
    dw 0x8013DD68                           // skips entry script
    OS.patch_end()

    // Set default costumes
    Character.set_default_costumes(Character.id.SPM, 0, 1, 2, 3, 1, 2, 3)

    // Shield colors for costume matching
    Character.set_costume_shield_colors(SPM, BLUE, RED, GREEN, BLACK, BLUE, BLUE, YELLOW, WHITE)

    // @ Description
    // Spider-Man's extra actions
    scope Action {
        constant Jab3(0x0DC)
        constant JabLoop(0x0DD)
        constant JabLoopEnd(0x0DE)
        action_string_table:
        dw Action.COMMON.string_jab3
        dw 0 //Action.COMMON.string_jabloop
        dw 0 //dw Action.COMMON.string_jabloopend
    }
    // Set action strings
    Character.table_patch_start(action_string, Character.id.SPM, 0x4)
    dw  Action.CAPTAIN.action_string_table
    OS.patch_end()
}
