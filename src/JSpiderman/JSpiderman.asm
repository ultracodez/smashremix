// JSpiderman.asm

// This file contains file inclusions, action edits, and assembly for J Spider-Man.

scope JSpiderman {

    // @ Description
    // J Spider-Man's extra actions
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
        constant WebGlideAirPull(0x0F1)
        constant WebGlideWallPull(0x0F2)
        constant UltimateWebThrow(0x0F3)
        constant WebGlideEnd(0x0F4)
        constant WebGlideGroundPull(0x0F5)
        constant WebGlideGroundThrow(0x0F6)

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
        string_0x0F1:; String.insert("WebGlideAirPull")
        string_0x0F2:; String.insert("WebGlideWallPull")
        string_0x0F3:; String.insert("UltimateWebThrow")
        string_0x0F4:; String.insert("WebGlideEnd")
        string_0x0F5:; String.insert("WebGlideGroundPull")
        string_0x0F6:; String.insert("WebGlideGroundThrow")

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
        dw string_0x0F5
        dw string_0x0F6
    }
    
    // Modify Action Parameters           // Action                      // Animation                    // Moveset Data           // Flags
    Character.edit_action_parameters(JSPM, Action.Entry,                  File.SPM_IDLE,                  -1,                       -1)
    Character.edit_action_parameters(JSPM, 0x006,                         File.SPM_IDLE,                  -1,                       -1)
    Character.edit_action_parameters(JSPM, Action.Revive2,                File.SPM_DOWNSTANDD,            -1,                       -1)
    Character.edit_action_parameters(JSPM, Action.ReviveWait,             File.SPM_IDLE,                  -1,                       -1)
    Character.edit_action_parameters(JSPM, Action.Idle,                   File.SPM_IDLE,                  -1,                       -1)
    Character.edit_action_parameters(JSPM, Action.Walk1,                  File.SPM_WALK1,                 -1,                       -1)
    Character.edit_action_parameters(JSPM, Action.Walk2,                  File.SPM_WALK2,                 -1,                       -1)
    Character.edit_action_parameters(JSPM, Action.Walk3,                  File.SPM_WALK3,                 -1,                       -1)
    Character.edit_action_parameters(JSPM, 0x00E,                         File.SPM_WALKEND,               -1,                       -1)
    Character.edit_action_parameters(JSPM, Action.Dash,                   File.SPM_DASH,                  -1,                       -1)
    Character.edit_action_parameters(JSPM, Action.Run,                    File.SPM_RUN,                   -1,                       -1)
    Character.edit_action_parameters(JSPM, Action.RunBrake,               File.SPM_RUNBRAKE,              -1,                       -1)
    Character.edit_action_parameters(JSPM, Action.Turn,                   File.SPM_TURN,                  -1,                       -1)
    Character.edit_action_parameters(JSPM, Action.TurnRun,                File.SPM_TURNRUN,               -1,                       -1)
    Character.edit_action_parameters(JSPM, Action.JumpSquat,              File.SPM_LANDING,               -1,                       -1)
    Character.edit_action_parameters(JSPM, Action.ShieldJumpSquat,        File.SPM_LANDING,               -1,                       -1)
    Character.edit_action_parameters(JSPM, Action.JumpF,                  File.SPM_JUMPF,                 Spiderman.JUMP1,                    -1)
    Character.edit_action_parameters(JSPM, Action.JumpB,                  File.SPM_JUMPB,                 Spiderman.JUMP1,                    -1)
    Character.edit_action_parameters(JSPM, Action.JumpAerialF,            File.SPM_JUMPAERIALF,           Spiderman.JUMP2,                    -1)
    Character.edit_action_parameters(JSPM, Action.JumpAerialB,            File.SPM_JUMPAERIALB,           Spiderman.JUMP2,                    -1)
    Character.edit_action_parameters(JSPM, Action.Fall,                   File.SPM_FALL,                  -1,                       -1)
    Character.edit_action_parameters(JSPM, Action.FallAerial,             File.SPM_FALLAERIAL,            -1,                       -1)
    Character.edit_action_parameters(JSPM, Action.Crouch,                 File.SPM_CROUCH,                -1,                       -1)
    Character.edit_action_parameters(JSPM, Action.CrouchIdle,             File.SPM_CROUCHIDLE,            -1,                       -1)
    Character.edit_action_parameters(JSPM, Action.CrouchEnd,              File.SPM_CROUCHEND,             -1,                       -1)
    Character.edit_action_parameters(JSPM, Action.LandingLight,           File.SPM_LANDING,               -1,                       -1)
    Character.edit_action_parameters(JSPM, Action.LandingHeavy,           File.SPM_LANDING,               -1,                       -1)
    Character.edit_action_parameters(JSPM, Action.Pass,                   File.SPM_PLATDROP,              -1,                       -1)
    Character.edit_action_parameters(JSPM, Action.ShieldDrop,             File.SPM_PLATDROP,              -1,                       -1)
    Character.edit_action_parameters(JSPM, Action.Teeter,                 File.SPM_TEETER,                0x80000000,               -1)
    Character.edit_action_parameters(JSPM, Action.TeeterStart,            File.SPM_TEETERSTART,           0x80000000,               -1)
    Character.edit_action_parameters(JSPM, Action.FallSpecial,            File.SPM_FALLSPECIAL,           -1,                       -1)
    Character.edit_action_parameters(JSPM, Action.LandingSpecial,         File.SPM_LANDING,               -1,                       -1)
    Character.edit_action_parameters(JSPM, Action.Tornado,                File.SPM_TUMBLE,                -1,                       -1)
    Character.edit_action_parameters(JSPM, Action.EnterPipe,              File.SPM_ENTERPIPE,             -1,                       -1)
    Character.edit_action_parameters(JSPM, Action.ExitPipe,               File.SPM_EXITPIPE,              -1,                       -1)
    Character.edit_action_parameters(JSPM, Action.ExitPipeWalk,           File.SPM_EXITPIPEWALK,          -1,                       -1)
    Character.edit_action_parameters(JSPM, Action.CeilingBonk,            File.SPM_CEILINGBONK,           -1,                       -1)
    Character.edit_action_parameters(JSPM, Action.DownStandD,             File.SPM_DOWNSTANDD,            -1,                       -1)
    Character.edit_action_parameters(JSPM, Action.DownStandU,             File.SPM_DOWNSTANDU,            -1,                       -1)
    Character.edit_action_parameters(JSPM, Action.TechF,                  File.SPM_TECHF,                 -1,                       -1)
    Character.edit_action_parameters(JSPM, Action.TechB,                  File.SPM_TECHB,                 -1,                       -1)
    Character.edit_action_parameters(JSPM, Action.DownForwardD,           File.SPM_DOWNFORWARDD,          -1,                       -1)
    Character.edit_action_parameters(JSPM, Action.DownForwardU,           File.SPM_DOWNFORWARDU,          -1,                       -1)
    Character.edit_action_parameters(JSPM, Action.DownBackD,              File.SPM_DOWNBACKD,             -1,                       -1)
    Character.edit_action_parameters(JSPM, Action.DownBackU,              File.SPM_DOWNBACKU,             -1,                       -1)
    Character.edit_action_parameters(JSPM, Action.DownAttackD,            File.SPM_DOWNATTACKD,           -1,                       -1)
    Character.edit_action_parameters(JSPM, Action.DownAttackU,            File.SPM_DOWNATTACKU,           -1,                       -1)
    Character.edit_action_parameters(JSPM, Action.Tech,                   File.SPM_TECH,                  -1,                       -1)
    Character.edit_action_parameters(JSPM, Action.ClangRecoil,            File.SPM_CLANGRECOIL,           -1,                       -1)
    Character.edit_action_parameters(JSPM, Action.CliffClimbQuick2,       File.SPM_CLIFFCLIMBQUICK2,      -1,                       -1)
    Character.edit_action_parameters(JSPM, Action.CliffClimbSlow2,        File.SPM_CLIFFCLIMBSLOW2,       -1,                       -1)
    Character.edit_action_parameters(JSPM, Action.CliffAttackQuick2,      File.SPM_CLIFFATTACKQUICK2,     -1,                       -1)
    Character.edit_action_parameters(JSPM, Action.CliffAttackSlow2,       File.SPM_CLIFFATTACKSLOW2,      -1,                       -1)
    Character.edit_action_parameters(JSPM, Action.CliffEscapeQuick2,      File.SPM_CLIFFESCAPEQUICK2,     -1,                       -1)
    Character.edit_action_parameters(JSPM, Action.CliffEscapeSlow2,       File.SPM_CLIFFESCAPESLOW2,      -1,                       -1)
    Character.edit_action_parameters(JSPM, Action.LightItemPickup,        File.SPM_LIGHTITEMPICKUP,       -1,                       -1)
    Character.edit_action_parameters(JSPM, Action.HeavyItemPickup,        File.SPM_HEAVYITEMPICKUP,       -1,                       -1)
    Character.edit_action_parameters(JSPM, Action.ItemDrop,               File.SPM_ITEMDROP,              -1,                       -1)
    Character.edit_action_parameters(JSPM, Action.ItemThrowDash,          File.SPM_ITEMTHROWDASH,         -1,                       -1)
    Character.edit_action_parameters(JSPM, Action.ItemThrowF,             File.SPM_ITEMTHROWF,            -1,                       -1)
    Character.edit_action_parameters(JSPM, Action.ItemThrowB,             File.SPM_ITEMTHROWF,            -1,                       -1)
    Character.edit_action_parameters(JSPM, Action.ItemThrowU,             File.SPM_ITEMTHROWU,            -1,                       -1)
    Character.edit_action_parameters(JSPM, Action.ItemThrowD,             File.SPM_ITEMTHROWD,            -1,                       -1)
    Character.edit_action_parameters(JSPM, Action.ItemThrowSmashF,        File.SPM_ITEMTHROWF,            -1,                       -1)
    Character.edit_action_parameters(JSPM, Action.ItemThrowSmashB,        File.SPM_ITEMTHROWF,            -1,                       -1)
    Character.edit_action_parameters(JSPM, Action.ItemThrowSmashU,        File.SPM_ITEMTHROWU,            -1,                       -1)
    Character.edit_action_parameters(JSPM, Action.ItemThrowSmashD,        File.SPM_ITEMTHROWD,            -1,                       -1)
    Character.edit_action_parameters(JSPM, Action.ItemThrowAirF,          File.SPM_ITEMTHROWAIRF,         -1,                       -1)
    Character.edit_action_parameters(JSPM, Action.ItemThrowAirB,          File.SPM_ITEMTHROWAIRF,         -1,                       -1)
    Character.edit_action_parameters(JSPM, Action.ItemThrowAirU,          File.SPM_ITEMTHROWAIRU,         -1,                       -1)
    Character.edit_action_parameters(JSPM, Action.ItemThrowAirD,          File.SPM_ITEMTHROWAIRD,         -1,                       -1)
    Character.edit_action_parameters(JSPM, Action.ItemThrowAirSmashF,     File.SPM_ITEMTHROWAIRF,         -1,                       -1)
    Character.edit_action_parameters(JSPM, Action.ItemThrowAirSmashB,     File.SPM_ITEMTHROWAIRF,         -1,                       -1)
    Character.edit_action_parameters(JSPM, Action.ItemThrowAirSmashU,     File.SPM_ITEMTHROWAIRU,         -1,                       -1)
    Character.edit_action_parameters(JSPM, Action.ItemThrowAirSmashD,     File.SPM_ITEMTHROWAIRD,         -1,                       -1)
    Character.edit_action_parameters(JSPM, Action.HeavyItemThrowF,        File.SPM_HEAVYITEMTHROW,        -1,                       -1)
    Character.edit_action_parameters(JSPM, Action.HeavyItemThrowB,        File.SPM_HEAVYITEMTHROW,        -1,                       -1)
    Character.edit_action_parameters(JSPM, Action.HeavyItemThrowSmashF,   File.SPM_HEAVYITEMTHROW,        -1,                       -1)
    Character.edit_action_parameters(JSPM, Action.HeavyItemThrowSmashB,   File.SPM_HEAVYITEMTHROW,        -1,                       -1)
    Character.edit_action_parameters(JSPM, Action.BeamSwordNeutral,       File.SPM_ITEMNEUTRAL,           -1,                       -1)
    Character.edit_action_parameters(JSPM, Action.BeamSwordTilt,          File.SPM_ITEMTILT,              -1,                       -1)
    Character.edit_action_parameters(JSPM, Action.BeamSwordSmash,         File.SPM_ITEMSMASH,             -1,                       -1)
    Character.edit_action_parameters(JSPM, Action.BeamSwordDash,          File.SPM_ITEMDASH,              -1,                       -1)
    Character.edit_action_parameters(JSPM, Action.BatNeutral,             File.SPM_ITEMNEUTRAL,           -1,                       -1)
    Character.edit_action_parameters(JSPM, Action.BatTilt,                File.SPM_ITEMTILT,              -1,                       -1)
    Character.edit_action_parameters(JSPM, Action.BatSmash,               File.SPM_ITEMSMASH,             -1,                       -1)
    Character.edit_action_parameters(JSPM, Action.BatDash,                File.SPM_ITEMDASH,              -1,                       -1)
    Character.edit_action_parameters(JSPM, Action.FanNeutral,             File.SPM_ITEMNEUTRAL,           -1,                       -1)
    Character.edit_action_parameters(JSPM, Action.FanTilt,                File.SPM_ITEMTILT,              -1,                       -1)
    Character.edit_action_parameters(JSPM, Action.FanSmash,               File.SPM_ITEMSMASH,             -1,                       -1)
    Character.edit_action_parameters(JSPM, Action.FanDash,                File.SPM_ITEMDASH,              -1,                       -1)
    Character.edit_action_parameters(JSPM, Action.StarRodNeutral,         File.SPM_ITEMNEUTRAL,           -1,                       -1)
    Character.edit_action_parameters(JSPM, Action.StarRodTilt,            File.SPM_ITEMTILT,              -1,                       -1)
    Character.edit_action_parameters(JSPM, Action.StarRodSmash,           File.SPM_ITEMSMASH,             -1,                       -1)
    Character.edit_action_parameters(JSPM, Action.StarRodDash,            File.SPM_ITEMDASH,              -1,                       -1)
    Character.edit_action_parameters(JSPM, Action.RayGunShoot,            File.SPM_ITEMSHOOT,             -1,                       -1)
    Character.edit_action_parameters(JSPM, Action.RayGunShootAir,         File.SPM_ITEMSHOOTAIR,          -1,                       -1)
    Character.edit_action_parameters(JSPM, Action.FireFlowerShoot,        File.SPM_ITEMSHOOT,             -1,                       -1)
    Character.edit_action_parameters(JSPM, Action.FireFlowerShootAir,     File.SPM_ITEMSHOOTAIR,          -1,                       -1)
    Character.edit_action_parameters(JSPM, Action.HammerIdle,             File.SPM_HAMMERIDLE,            -1,                       -1)
    Character.edit_action_parameters(JSPM, Action.HammerWalk,             File.SPM_HAMMERMOVE,            -1,                       -1)
    Character.edit_action_parameters(JSPM, Action.HammerTurn,             File.SPM_HAMMERMOVE,            -1,                       -1)
    Character.edit_action_parameters(JSPM, Action.HammerJumpSquat,        File.SPM_HAMMERMOVE,            -1,                       -1)
    Character.edit_action_parameters(JSPM, Action.HammerAir,              File.SPM_HAMMERMOVE,            -1,                       -1)
    Character.edit_action_parameters(JSPM, Action.HammerLanding,          File.SPM_HAMMERMOVE,            -1,                       -1)
    // Character.edit_action_parameters(JSPM, Action.ShieldOn,               File.SPM_SHIELDON,              SHIELD_ON,                -1)
    // Character.edit_action_parameters(JSPM, Action.ShieldOff,              File.SPM_SHIELDOFF,             SHIELD_OFF,               -1)
    Character.edit_action_parameters(JSPM, Action.RollF,                  File.SPM_ROLLF,                 -1,                       -1)
    Character.edit_action_parameters(JSPM, Action.RollB,                  File.SPM_ROLLB,                 -1,                       -1)
    Character.edit_action_parameters(JSPM, Action.StunStartD,             File.SPM_DOWNSTANDD,            -1,                       -1)
    Character.edit_action_parameters(JSPM, Action.StunStartU,             File.SPM_DOWNSTANDU,            -1,                       -1)
    Character.edit_action_parameters(JSPM, Action.Stun,                   File.SPM_STUN,                  -1,                       -1)
    Character.edit_action_parameters(JSPM, Action.Sleep,                  File.SPM_STUN,                  -1,                       -1)
    Character.edit_action_parameters(JSPM, Action.Grab,                   File.SPM_GRAB,                  Spiderman.GRAB,                     0x10000000)
    Character.edit_action_parameters(JSPM, Action.GrabPull,               File.SPM_GRABPULL,              Spiderman.GRAB_PULL,                0x10000000)
    Character.edit_action_parameters(JSPM, Action.ThrowF,                 File.SPM_THROWF,                Spiderman.THROW_F,                  -1)
    Character.edit_action_parameters(JSPM, Action.ThrowB,                 File.SPM_THROWB,                Spiderman.THROW_B,                  -1)
    Character.edit_action_parameters(JSPM, Action.CapturePulled,          File.SPM_CAPTUREPULLED,         -1,                       -1)
    Character.edit_action_parameters(JSPM, Action.EggLayPulled,           File.SPM_CAPTUREPULLED,         -1,                       -1)
    Character.edit_action_parameters(JSPM, Action.EggLay,                 File.SPM_IDLE,                  -1,                       -1)
    Character.edit_action_parameters(JSPM, Action.Taunt,                  File.SPM_TAUNT,                 Spiderman.TAUNT,                    -1)
    Character.edit_action_parameters(JSPM, Action.Jab1,                   File.SPM_JAB1,                  Spiderman.JAB1,                     -1)
    Character.edit_action_parameters(JSPM, Action.Jab2,                   File.SPM_JAB2,                  Spiderman.JAB2,                     -1)
    Character.edit_action_parameters(JSPM, Action.Jab3,                   File.SPM_JAB3,                  Spiderman.JAB3,                      0x40000000)
    Character.edit_action_parameters(JSPM, Action.JabLoopStart,           File.SPM_JAB1,                  Spiderman.JAB1,                     0)
    Character.edit_action_parameters(JSPM, Action.JabLoop,                File.SPM_JAB2,                  Spiderman.JAB2,                     0)
    Character.edit_action_parameters(JSPM, Action.DashAttack,             File.SPM_DASHATTACK,            Spiderman.DASH_ATTACK,              -1)
    Character.edit_action_parameters(JSPM, Action.FTiltHigh,              0,                              0x80000000,               0)
    Character.edit_action_parameters(JSPM, Action.FTiltMidHigh,           0,                              0x80000000,               0)
    Character.edit_action_parameters(JSPM, Action.FTilt,                  File.SPM_FTILT,                 Spiderman.FORWARD_TILT,             -1)
    Character.edit_action_parameters(JSPM, Action.FTiltMidLow,            0,                              0x80000000,               0)
    Character.edit_action_parameters(JSPM, Action.FTiltLow,               0,                              0x80000000,               0)
    Character.edit_action_parameters(JSPM, Action.UTilt,                  File.SPM_UTILT,                 Spiderman.UP_TILT,                  -1)
    Character.edit_action_parameters(JSPM, Action.DTilt,                  File.SPM_DTILT,                 Spiderman.DOWN_TILT,                -1)
    Character.edit_action_parameters(JSPM, Action.FSmashHigh,             0,                              0x80000000,               0)
    Character.edit_action_parameters(JSPM, Action.FSmashMidHigh,          0,                              0x80000000,               0)
    Character.edit_action_parameters(JSPM, Action.FSmash,                 File.SPM_FSMASH,                Spiderman.FORWARD_SMASH,            -1)
    Character.edit_action_parameters(JSPM, Action.FSmashMidLow,           0,                              0x80000000,               0)
    Character.edit_action_parameters(JSPM, Action.FSmashLow,              0,                              0x80000000,               0)
    Character.edit_action_parameters(JSPM, Action.USmash,                 File.SPM_USMASH,                Spiderman.UP_SMASH,                 -1)
    Character.edit_action_parameters(JSPM, Action.DSmash,                 File.SPM_DSMASH,                Spiderman.DOWN_SMASH,               -1)
    Character.edit_action_parameters(JSPM, Action.AttackAirN,             File.SPM_ATTACKAIRN,            Spiderman.NEUTRAL_AERIAL,           -1)
    Character.edit_action_parameters(JSPM, Action.AttackAirF,             File.SPM_ATTACKAIRF,            Spiderman.FORWARD_AERIAL,           -1)
    Character.edit_action_parameters(JSPM, Action.AttackAirB,             File.SPM_ATTACKAIRB,            Spiderman.BACK_AERIAL,              -1)
    Character.edit_action_parameters(JSPM, Action.AttackAirU,             File.SPM_ATTACKAIRU,            Spiderman.UP_AERIAL,                -1)
    Character.edit_action_parameters(JSPM, Action.AttackAirD,             File.SPM_ATTACKAIRD,            Spiderman.DOWN_AERIAL,              -1)
    Character.edit_action_parameters(JSPM, Action.LandingAirF,            File.SPM_LANDINGAIRF,           -1,                       -1)
    Character.edit_action_parameters(JSPM, Action.LandingAirB,            File.SPM_LANDINGAIRB,           -1,                       -1)
    Character.edit_action_parameters(JSPM, Action.LandingAirX,            File.SPM_LANDING,               -1,                       -1)
    Character.edit_action_parameters(JSPM, Action.AppearLeft1,            File.SPM_ENTRY_1_LEFT,          -1,                  0x40000008)
	Character.edit_action_parameters(JSPM, Action.AppearRight1,           File.SPM_ENTRY_1_RIGHT,         -1,                  0x40000008)
	Character.edit_action_parameters(JSPM, Action.AppearLeft2,            File.SPM_ENTRY_2_LEFT,          -1,                  0x40000008)
	Character.edit_action_parameters(JSPM, Action.AppearRight2,           File.SPM_ENTRY_2_RIGHT,         -1,                  0x40000008)
    Character.edit_action_parameters(JSPM, Action.WebBall,                File.SPM_NSP_GROUND,            Spiderman.NSP_GROUND,               -1)
    Character.edit_action_parameters(JSPM, Action.WebBallAir,             File.SPM_NSP_AIR,               Spiderman.NSP_AIR,                  -1)
    Character.edit_action_parameters(JSPM, Action.WebSwing,               File.SPM_DSP_GROUND,            Spiderman.DSP,                      0x40000000)          //DSP_Ground
    Character.edit_action_parameters(JSPM, 0xE7,                          0,                              0x80000000,               0)          //DSP_Collide
    Character.edit_action_parameters(JSPM, 0xE8,                          0,                              0x80000000,               0)          //DSP_Land
    Character.edit_action_parameters(JSPM, Action.WebSwingAir,            File.SPM_DSP_AIR,               Spiderman.DSP,                      -1)          //DSP_Air
    Character.edit_action_parameters(JSPM, 0xEA,                          0,                              0x80000000,               0)          
    Character.edit_action_parameters(JSPM, 0xEB,                          0,                              0x80000000,               0)          //Originally USP starts here, however it seemed easier to set it up as new actions like Goemon DSP.
    Character.edit_action_parameters(JSPM, 0xEC,                          0,                              0x80000000,               0)
    Character.edit_action_parameters(JSPM, 0xED,                          0,                              0x80000000,               0)
    Character.edit_action_parameters(JSPM, 0xEE,                          0,                              0x80000000,               0)

    // Modify Actions            // Action                      // Staling ID   // Main ASM                   // Interrupt/Other ASM          // Movement/Physics ASM       // Collision ASM
	Character.edit_action(JSPM,   Action.WebBall,                -1,             SpidermanNSP.main,  	      -1,                             -1,                           -1)
	Character.edit_action(JSPM,   Action.WebBallAir,             -1,             SpidermanNSP.main,  	      -1,                             SpidermanNSP.physics_,        SpidermanNSP.air_collision_)
    Character.edit_action(JSPM,   Action.WebSwing,               -1,             -1,  		                  SpidermanDSP.change_direction_, SpidermanDSP.ground_physics_, SpidermanDSP.ground_collision_)
    Character.edit_action(JSPM,   Action.WebSwingAir,            -1,             -1,                           SpidermanDSP.change_direction_, -1,                           SpidermanDSP.air_collision_)

    // Add Action Parameters             // Action Name      // Base Action  // Animation                   // Moveset Data        // Flags
    Character.add_new_action_params(JSPM, USPGround,          -1,             File.SPM_USP_GROUND,           Spiderman.USP,                   0x10000000)
    Character.add_new_action_params(JSPM, USPAir,             -1,             File.SPM_USP_AIR,              Spiderman.USP,                   0x10000000)
    Character.add_new_action_params(JSPM, USPAirPull,         -1,             File.SPM_USP_AIR_GRABPULL,     Spiderman.USP_PULL,              0x50000000)
    Character.add_new_action_params(JSPM, USPAAttack,         -1,             File.SPM_USP_AIR_GRABTHROW,    Spiderman.USP_AIR_THROW,         0x10000000)
    Character.add_new_action_params(JSPM, USPEnd,             -1,             File.SPM_USP_WALLEND,          0x80000000,            0x00000000)
    Character.add_new_action_params(JSPM, USPGroundPull,      -1,             File.SPM_USP_GROUND_GRABPULL,  Spiderman.USP_PULL,              0x10000000)
    Character.add_new_action_params(JSPM, USPGAttack,         -1,             File.SPM_USP_GROUND_GRABTHROW, Spiderman.USP_GROUND_THROW,      0x50000000)

    // Add Actions                // Action Name     // Base Action  //Parameters                    // Staling ID   // Main ASM                        // Interrupt/Other ASM          // Movement/Physics ASM             // Collision ASM
    Character.add_new_action(JSPM, USPGround,         -1,             ActionParams.USPGround,         0x11,           SpidermanUSP.main_,                SpidermanUSP.change_direction_, 0x800D8BB4,                         SpidermanUSP.ground_collision_)
    Character.add_new_action(JSPM, USPAir,            -1,             ActionParams.USPAir,            0x11,           SpidermanUSP.main_,                SpidermanUSP.change_direction_, SpidermanUSP.air_physics_,          SpidermanUSP.air_collision_)
    Character.add_new_action(JSPM, USPAirPull,        -1,             ActionParams.USPAirPull,        0x11,           SpidermanUSP.air_pull_main_,       0,                              0x800D93E4,                         SpidermanUSP.shared_air_collision_)
    Character.add_new_action(JSPM, USPAirWallPull,    -1,             ActionParams.USPAirPull,        0x11,           SpidermanUSP.wall_pull_main_,      0,                              0x800D93E4,                         SpidermanUSP.shared_air_collision_)
    Character.add_new_action(JSPM, USPAAttack,        -1,             ActionParams.USPAAttack,        0x11,           0x8014A0C0,                        0,                              SpidermanUSP.throw_air_physics_,    SpidermanUSP.throw_air_collision_)
    Character.add_new_action(JSPM, USPEnd,            -1,             ActionParams.USPEnd,            0x11,           0x800D94E8,                        0,                              0x800D9160,                         0x800DE99C)
    Character.add_new_action(JSPM, USPGroundPull,     -1,             ActionParams.USPGroundPull,     0x11,           SpidermanUSP.ground_pull_main_,    0,                              0x800D8BB4,                         SpidermanUSP.shared_ground_collision_)
    Character.add_new_action(JSPM, USPGAttack,        -1,             ActionParams.USPGAttack,        0x11,           0x8014A0C0,                        0,                              0x800D93E4,                         SpidermanUSP.throw_air_collision_)

    // Modify Menu Action Parameters             // Action          // Animation                // Moveset Data             // Flags
    Character.edit_menu_action_parameters(JSPM,   0x0,               File.SPM_IDLE,              -1,                         -1)          // CSS Idle
    Character.edit_menu_action_parameters(JSPM,   0x1,               File.SPM_VICTORY_1,         -1,                  -1)          // Victory1
    Character.edit_menu_action_parameters(JSPM,   0x2,               File.SPM_VICTORY_2,         -1,                  -1)          // Victory2
    Character.edit_menu_action_parameters(JSPM,   0x3,               File.SPM_VICTORY_3,         -1,                  -1)          // Victory3
    Character.edit_menu_action_parameters(JSPM,   0x4,               File.SPM_VICTORY_1,         -1,                  -1)          // CSS Select
    Character.edit_menu_action_parameters(JSPM,   0xD,               File.SPM_1P_POSE,           -1,                         -1)          // 1P Mode Pose
    Character.edit_menu_action_parameters(JSPM,   0xE,               File.SPM_CPU_POSE,          -1,                         -1)          // CPU Pose
    Character.edit_menu_action_parameters(JSPM,   0x5,               File.SPM_CLAP,              -1,                         -1)
    Character.edit_menu_action_parameters(JSPM,   0x9,               File.SPM_CONTINUEFALL,      -1,                         -1)
    Character.edit_menu_action_parameters(JSPM,   0xA,               File.SPM_CONTINUEUP,        -1,                         -1)

    // Set action strings
    Character.table_patch_start(action_string, Character.id.JSPM, 0x4)
    dw  Action.action_string_table
    OS.patch_end()

    Character.table_patch_start(ground_usp, Character.id.JSPM, 0x4)
    dw      SpidermanUSP.ground_initial_
    OS.patch_end()
    Character.table_patch_start(air_usp, Character.id.JSPM, 0x4)
    dw      SpidermanUSP.air_initial_
    OS.patch_end()
    Character.table_patch_start(ground_dsp, Character.id.JSPM, 0x4)
    dw      SpidermanDSP.ground_initial_
    OS.patch_end()
    Character.table_patch_start(air_dsp, Character.id.JSPM, 0x4)
    dw      SpidermanDSP.air_initial_
    OS.patch_end()

    Character.table_patch_start(rapid_jab, Character.id.JSPM, 0x4)
    dw      Character.rapid_jab.DISABLED        // disable rapid jab
    OS.patch_end()

    // Set crowd chant FGM to none
    Character.table_patch_start(crowd_chant_fgm, Character.id.JSPM, 0x2)
    dh  0x02B7
    OS.patch_end()

    // Use Mario's initial/grounded script.
    Character.table_patch_start(initial_script, Character.id.JSPM, 0x4)
    dw 0x800D7DCC
    OS.patch_end()
    Character.table_patch_start(grounded_script, Character.id.JSPM, 0x4)
    dw 0x800DE428
    OS.patch_end()

    // Remove entry script (no Blue Falcon).
    Character.table_patch_start(entry_script, Character.id.JSPM, 0x4)
    dw 0x8013DD68                           // skips entry script
    OS.patch_end()

    // Set default costumes
    Character.set_default_costumes(Character.id.JSPM, 0, 1, 2, 3, 0, 4, 2)
    Teams.add_team_costume(YELLOW, JSPM, 0x5)

    // Shield colors for costume matching
    Character.set_costume_shield_colors(JSPM, RED, WHITE, GREEN, BLACK, BLUE, YELLOW, NA, NA)

    // Set Kirby star damage
    Character.table_patch_start(kirby_inhale_struct, 0x8, Character.id.JSPM, 0xC)
    dw Character.kirby_inhale_struct.star_damage.FALCON
    OS.patch_end()

    // Set JSPM as variant
    Character.table_patch_start(variants, Character.id.JSPM, 0x4)
    db      Character.id.SPM
    OS.patch_end()

    Character.table_patch_start(variant_original, Character.id.JSPM, 0x4)
    dw      Character.id.SPM
    OS.patch_end()
}
