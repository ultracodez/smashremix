// Spiderman.asm

// This file contains file inclusions, action edits, and assembly for Spider-Man.

scope Spiderman {
    // Insert Moveset files
    insert VICTORY_1, "moveset/VICTORY_1.bin"
    insert VICTORY_2, "moveset/VICTORY_2.bin"
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
    insert GRAB_PULL, "moveset/GRAB_PULL.bin"
    insert GRAB_RELEASE_DATA, "moveset/GRAB_RELEASE_DATA.bin"
    GRAB:; Moveset.THROW_DATA(GRAB_RELEASE_DATA); insert "moveset/GRAB.bin"
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
    insert SHIELD, "moveset/SHIELD.bin"
    insert NSP_GROUND,"moveset/NSP_GROUND.bin"
    insert NSP_AIR,"moveset/NSP_AIR.bin"
    insert JUMP2, "moveset/JUMP2.bin"
    insert DSP, "moveset/DSP.bin"
    insert USP_ULTIMATETHROW_DATA, "moveset/USP_ULTIMATETHROW_DATA.bin"
    USP_ATTACK:; Moveset.THROW_DATA(USP_ULTIMATETHROW_DATA); insert "moveset/USP_ATTACK.bin"
    insert USP_THROW_DATA, "moveset/USP_THROW_DATA.bin"
    USP:; Moveset.THROW_DATA(USP_THROW_DATA); insert "moveset/USP.bin"

    // @ Description
    // Spider-Man's extra actions
    scope Action {
        constant Jab3(0x0DC)
        constant JabLoopStart(0x0DD)
        constant JabLoop(0x0DE)
        constant JabLoopEnd(0x0DF)
        constant AppearLeft1(0x0E0)
        constant AppearRight1(0x0E1)
        constant AppearLeft2(0x0E2)
        constant AppearRight2(0x0E3)
        constant WebBall(0x0E4)
        constant WebBallAir(0x0E5)
        constant WebSwing(0x0E6)
        constant WebSwingCollide(0x0E7)
        //constant ?(0x0E8)
        constant WebSwingAir(0x0E9)
        //constant ?(0x0EA)
        //constant ?(0x0EB)
        //constant ?(0x0EC)
        //constant ?(0x0ED)
        //constant ?(0x0EE)
        constant WebGlide(0x0EF)
        constant WebGlideAir(0x0F0)
        constant WebGlidePull(0x0F1)
        constant WebGlideWallPull(0x0F2)
        constant UltimateWebThrow(0x0F3)
        constant WebGlideEnd(0x0F4)

        // strings!
        string_0x0DC:; String.insert("Jab3")
        string_0x0DD:; String.insert("JabLoopStart")
        string_0x0DE:; String.insert("JabLoop")
        string_0x0DF:; String.insert("JabLoopEnd")
        string_0x0E0:; String.insert("AppearLeft1")
        string_0x0E1:; String.insert("AppearRight1")
        string_0x0E2:; String.insert("AppearLeft1")
        string_0x0E3:; String.insert("AppearRight2")
        string_0x0E4:; String.insert("WebBall")
        string_0x0E5:; String.insert("WebBallAir")
        string_0x0E6:; String.insert("WebSwing")
        string_0x0E7:; String.insert("WebSwingCollide")
        // string_0x0E8;: String.insert("?")
        string_0x0E9:; String.insert("WebSwingAir")
        // string_0x0EA;: String.insert("?")
        // string_0x0EB;: String.insert("?")
        // string_0x0EC;: String.insert("?")
        // string_0x0ED;: String.insert("?")
        // string_0x0EE;: String.insert("?")
        string_0x0EF:; String.insert("WebGlide")
        string_0x0F0:; String.insert("WebGlideAir")
        string_0x0F1:; String.insert("WebGlidePull")
        string_0x0F2:; String.insert("WebGlideWallPull")
        string_0x0F3:; String.insert("UltimateWebThrow")
        string_0x0F4:; String.insert("WebGlideEnd")

        action_string_table:
        dw Action.COMMON.string_jab3
        dw string_0x0DD
        dw string_0x0DE
        dw string_0x0DF
        dw string_0x0E0
        dw string_0x0E1
        dw string_0x0E2
        dw string_0x0E3
        dw string_0x0E4
        dw string_0x0E5
        dw string_0x0E6
        dw string_0x0E7
        dw 0
        dw string_0x0E9
        dw 0
        dw 0
        dw 0
        dw 0
        dw 0
        dw string_0x0EF
        dw string_0x0F0
        dw string_0x0F1
        dw string_0x0F2
        dw string_0x0F3
        dw string_0x0F4
    }
    
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
    Character.edit_action_parameters(SPM, Action.JumpAerialF,            File.SPM_JUMPAERIALF,           JUMP2,                    -1)
    Character.edit_action_parameters(SPM, Action.JumpAerialB,            File.SPM_JUMPAERIALB,           JUMP2,                    -1)
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
    Character.edit_action_parameters(SPM, Action.HammerIdle,             File.SPM_HAMMERIDLE,            -1,                       -1)
    Character.edit_action_parameters(SPM, Action.HammerWalk,             File.SPM_HAMMERMOVE,            -1,                       -1)
    Character.edit_action_parameters(SPM, Action.HammerTurn,             File.SPM_HAMMERMOVE,            -1,                       -1)
    Character.edit_action_parameters(SPM, Action.HammerJumpSquat,        File.SPM_HAMMERMOVE,            -1,                       -1)
    Character.edit_action_parameters(SPM, Action.HammerAir,              File.SPM_HAMMERMOVE,            -1,                       -1)
    Character.edit_action_parameters(SPM, Action.HammerLanding,          File.SPM_HAMMERMOVE,            -1,                       -1)
    Character.edit_action_parameters(SPM, Action.ShieldOn,               -1,                             SHIELD,                   -1)
    Character.edit_action_parameters(SPM, Action.ShieldOff,              -1,                             SHIELD,                   -1)
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
    Character.edit_action_parameters(SPM, Action.Jab3,                   File.SPM_JAB3,                  JAB3,                      0x40000000)
    Character.edit_action_parameters(SPM, Action.JabLoopStart,           File.SPM_JAB1,                  JAB1,                     0)
    Character.edit_action_parameters(SPM, Action.JabLoop,                File.SPM_JAB2,                  JAB2,                     0)
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
    Character.edit_action_parameters(SPM, Action.AppearLeft1,            File.SPM_ENTRY_1_LEFT,          ENTRY_1,                  0x40000008)
	Character.edit_action_parameters(SPM, Action.AppearRight1,           File.SPM_ENTRY_1_RIGHT,         ENTRY_1,                  0x40000008)
	Character.edit_action_parameters(SPM, Action.AppearLeft2,            File.SPM_ENTRY_2_LEFT,          ENTRY_2,                  0x40000008)
	Character.edit_action_parameters(SPM, Action.AppearRight2,           File.SPM_ENTRY_2_RIGHT,         ENTRY_2,                  0x40000008)
    Character.edit_action_parameters(SPM, Action.WebBall,                File.SPM_NSP_GROUND,            NSP_GROUND,               -1)
    Character.edit_action_parameters(SPM, Action.WebBallAir,             File.SPM_NSP_AIR,               NSP_AIR,                  -1)
    Character.edit_action_parameters(SPM, Action.WebSwing,               File.SPM_DSP_GROUND,            DSP,                      0x40000000)          //DSP_Ground
    Character.edit_action_parameters(SPM, 0xE7,                          0,                              0x80000000,               0)          //DSP_Collide
    Character.edit_action_parameters(SPM, 0xE8,                          0,                              0x80000000,               0)          //DSP_Land
    Character.edit_action_parameters(SPM, Action.WebSwingAir,            File.SPM_DSP_AIR,               DSP,                      -1)          //DSP_Air
    Character.edit_action_parameters(SPM, 0xEA,                          0,                              0x80000000,               0)          
    Character.edit_action_parameters(SPM, 0xEB,                          0,                              0x80000000,               0)          //Originally USP starts here, however it seemed easier to set it up as new actions like Goemon DSP.
    Character.edit_action_parameters(SPM, 0xEC,                          0,                              0x80000000,               0)
    Character.edit_action_parameters(SPM, 0xED,                          0,                              0x80000000,               0)
    Character.edit_action_parameters(SPM, 0xEE,                          0,                              0x80000000,               0)

    // Modify Actions            // Action                      // Staling ID   // Main ASM                   // Interrupt/Other ASM          // Movement/Physics ASM       // Collision ASM
	Character.edit_action(SPM,   Action.WebBall,                -1,             SpidermanNSP.main,  	      -1,                             -1,                           -1)
	Character.edit_action(SPM,   Action.WebBallAir,             -1,             SpidermanNSP.main,  	      -1,                             SpidermanNSP.physics_,        SpidermanNSP.air_collision_)
    Character.edit_action(SPM,   Action.WebSwing,               -1,             -1,  		                  SpidermanDSP.change_direction_, SpidermanDSP.ground_physics_, SpidermanDSP.ground_collision_)
    Character.edit_action(SPM,   Action.WebSwingAir,            -1,             -1,                           SpidermanDSP.change_direction_, -1,                           SpidermanDSP.air_collision_)

    // Add Action Parameters             // Action Name      // Base Action  // Animation             // Moveset Data        // Flags
    Character.add_new_action_params(SPM, USPGround,          -1,             File.SPM_USP_GROUND,     USP,                   0x10000000)
    Character.add_new_action_params(SPM, USPAir,             -1,             File.SPM_USP_AIR,        USP,                   0x10000000)
    Character.add_new_action_params(SPM, USPAirPull,         -1,             File.SPM_USP_GRABPULL,   GRAB_PULL,             0x50000000)
    Character.add_new_action_params(SPM, USPAAttack,         -1,             File.SPM_USP_GRABTHROW,  USP_ATTACK,            0x10000000)
    Character.add_new_action_params(SPM, USPEnd,             -1,             File.SPM_USP_WALLEND,    0x80000000,            0x00000000) //temp anim

    // Add Actions                // Action Name     // Base Action  //Parameters                    // Staling ID   // Main ASM                        // Interrupt/Other ASM          // Movement/Physics ASM             // Collision ASM
    Character.add_new_action(SPM, USPGround,         -1,             ActionParams.USPGround,         0x11,           SpidermanUSP.main_,                SpidermanUSP.change_direction_, 0x800D8BB4,                         SpidermanUSP.ground_collision_)
    Character.add_new_action(SPM, USPAir,            -1,             ActionParams.USPAir,            0x11,           SpidermanUSP.main_,                SpidermanUSP.change_direction_, SpidermanUSP.air_physics_,          SpidermanUSP.air_collision_)
    Character.add_new_action(SPM, USPAirPull,        -1,             ActionParams.USPAirPull,        0x11,           SpidermanUSP.pull_main_,           0,                              0x800D93E4,                         SpidermanUSP.shared_air_collision_)
    Character.add_new_action(SPM, USPAirWallPull,    -1,             ActionParams.USPAirPull,        0x11,           SpidermanUSP.wall_pull_main_,      0,                              0x800D93E4,                         SpidermanUSP.shared_air_collision_)
    Character.add_new_action(SPM, USPAAttack,        -1,             ActionParams.USPAAttack,        0x11,           0x8014A0C0,                        0,                              SpidermanUSP.throw_air_physics_,    SpidermanUSP.throw_air_collision_)
    Character.add_new_action(SPM, USPEnd,            -1,             ActionParams.USPEnd,            0x11,           0x800D94E8,                        0,                              0x800D9160,                         0x800DE99C)

    // Modify Menu Action Parameters             // Action          // Animation                // Moveset Data             // Flags
    Character.edit_menu_action_parameters(SPM,   0x0,               File.SPM_IDLE,              -1,                         -1)          // CSS Idle
    Character.edit_menu_action_parameters(SPM,   0x1,               File.SPM_VICTORY_1,         VICTORY_1,                  -1)          // Victory1
    Character.edit_menu_action_parameters(SPM,   0x2,               File.SPM_VICTORY_2,         VICTORY_2,                  -1)          // Victory2
    Character.edit_menu_action_parameters(SPM,   0x3,               File.SPM_VICTORY_3,         VICTORY_3,                  -1)          // Victory3
    Character.edit_menu_action_parameters(SPM,   0x4,               File.SPM_VICTORY_1,         VICTORY_1,                  -1)          // CSS Select
    Character.edit_menu_action_parameters(SPM,   0xD,               File.SPM_1P_POSE,           -1,                         -1)          // 1P Mode Pose
    Character.edit_menu_action_parameters(SPM,   0xE,               File.SPM_CPU_POSE,          -1,                         -1)          // CPU Pose
    Character.edit_menu_action_parameters(SPM,   0x5,               File.SPM_CLAP,              -1,                         -1)
    Character.edit_menu_action_parameters(SPM,   0x9,               File.SPM_CONTINUEFALL,      -1,                         -1)
    Character.edit_menu_action_parameters(SPM,   0xA,               File.SPM_CONTINUEUP,        -1,                         -1)

    // Set action strings
    Character.table_patch_start(action_string, Character.id.SPM, 0x4)
    dw  Action.action_string_table
    OS.patch_end()

    Character.table_patch_start(ground_usp, Character.id.SPM, 0x4)
    dw      SpidermanUSP.ground_initial_
    OS.patch_end()
    Character.table_patch_start(air_usp, Character.id.SPM, 0x4)
    dw      SpidermanUSP.air_initial_
    OS.patch_end()
    Character.table_patch_start(ground_dsp, Character.id.SPM, 0x4)
    dw      SpidermanDSP.ground_initial_
    OS.patch_end()
    Character.table_patch_start(air_dsp, Character.id.SPM, 0x4)
    dw      SpidermanDSP.air_initial_
    OS.patch_end()

    Character.table_patch_start(rapid_jab, Character.id.SPM, 0x4)
    dw      Character.rapid_jab.DISABLED        // disable rapid jab
    OS.patch_end()

    Character.table_patch_start(variants, Character.id.SPM, 0x4)
    db      Character.id.NONE   // D-Pad Up Slot
    db      Character.id.NONE   // D-Pad Down Slot
    db      Character.id.NONE   // D-Pad Left Slot
    db      Character.id.SPM3   // D-Pad Right Slot
    OS.patch_end()

    // Set crowd chant FGM.
    //Character.table_patch_start(crowd_chant_fgm, Character.id.SPM, 0x2)
    //dh  0x031E
    //OS.patch_end()

    // Use Mario's initial/grounded script.
    Character.table_patch_start(initial_script, Character.id.SPM, 0x4)
    dw 0x800D7DCC
    OS.patch_end()
    Character.table_patch_start(grounded_script, Character.id.SPM, 0x4)
    dw 0x800DE428
    OS.patch_end()

    // Remove entry script (no Blue Falcon).
    Character.table_patch_start(entry_script, Character.id.SPM, 0x4)
    dw 0x8013DD68                           // skips entry script
    OS.patch_end()

    // Set default costumes
    Character.set_default_costumes(Character.id.SPM, 0, 1, 2, 3, 0, 4, 2)

    // Shield colors for costume matching
    Character.set_costume_shield_colors(SPM, BLUE, RED, GREEN, BLACK, BLUE, BLUE, YELLOW, WHITE)
}
