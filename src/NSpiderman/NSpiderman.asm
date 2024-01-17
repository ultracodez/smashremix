// NSpiderman.asm

// This file contains file inclusions, action edits, and assembly for Spider-Man.

        // insert moveset


scope NSPIDERMAN {

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
    Character.edit_action_parameters(NSPM, Action.Entry,                  File.SPM_IDLE,                  -1,                       -1)
    Character.edit_action_parameters(NSPM, 0x006,                         File.SPM_IDLE,                  -1,                       -1)
    Character.edit_action_parameters(NSPM, Action.Revive2,                File.SPM_DOWNSTANDD,            -1,                       -1)
    Character.edit_action_parameters(NSPM, Action.ReviveWait,             File.SPM_IDLE,                  -1,                       -1)
    Character.edit_action_parameters(NSPM, Action.Idle,                   File.SPM_IDLE,                  -1,                       -1)
    Character.edit_action_parameters(NSPM, Action.Walk1,                  File.SPM_WALK1,                 -1,                       -1)
    Character.edit_action_parameters(NSPM, Action.Walk2,                  File.SPM_WALK2,                 -1,                       -1)
    Character.edit_action_parameters(NSPM, Action.Walk3,                  File.SPM_WALK3,                 -1,                       -1)
    Character.edit_action_parameters(NSPM, 0x00E,                         File.SPM_WALKEND,               -1,                       -1)
    Character.edit_action_parameters(NSPM, Action.Dash,                   File.SPM_DASH,                  -1,                       -1)
    Character.edit_action_parameters(NSPM, Action.Run,                    File.SPM_RUN,                   -1,                       -1)
    Character.edit_action_parameters(NSPM, Action.RunBrake,               File.SPM_RUNBRAKE,              -1,                       -1)
    Character.edit_action_parameters(NSPM, Action.Turn,                   File.SPM_TURN,                  -1,                       -1)
    Character.edit_action_parameters(NSPM, Action.TurnRun,                File.SPM_TURNRUN,               -1,                       -1)
    Character.edit_action_parameters(NSPM, Action.JumpSquat,              File.SPM_LANDING,               -1,                       -1)
    Character.edit_action_parameters(NSPM, Action.ShieldJumpSquat,        File.SPM_LANDING,               -1,                       -1)
    Character.edit_action_parameters(NSPM, Action.JumpF,                  File.SPM_JUMPF,                 Spiderman.JUMP1,                    -1)
    Character.edit_action_parameters(NSPM, Action.JumpB,                  File.SPM_JUMPB,                 Spiderman.JUMP1,                    -1)
    Character.edit_action_parameters(NSPM, Action.JumpAerialF,            File.SPM_JUMPAERIALF,           Spiderman.JUMP2,                    -1)
    Character.edit_action_parameters(NSPM, Action.JumpAerialB,            File.SPM_JUMPAERIALB,           Spiderman.JUMP2,                    -1)
    Character.edit_action_parameters(NSPM, Action.Fall,                   File.SPM_FALL,                  -1,                       -1)
    Character.edit_action_parameters(NSPM, Action.FallAerial,             File.SPM_FALLAERIAL,            -1,                       -1)
    Character.edit_action_parameters(NSPM, Action.Crouch,                 File.SPM_CROUCH,                -1,                       -1)
    Character.edit_action_parameters(NSPM, Action.CrouchIdle,             File.SPM_CROUCHIDLE,            -1,                       -1)
    Character.edit_action_parameters(NSPM, Action.CrouchEnd,              File.SPM_CROUCHEND,             -1,                       -1)
    Character.edit_action_parameters(NSPM, Action.LandingLight,           File.SPM_LANDING,               -1,                       -1)
    Character.edit_action_parameters(NSPM, Action.LandingHeavy,           File.SPM_LANDING,               -1,                       -1)
    Character.edit_action_parameters(NSPM, Action.Pass,                   File.SPM_PLATDROP,              -1,                       -1)
    Character.edit_action_parameters(NSPM, Action.ShieldDrop,             File.SPM_PLATDROP,              -1,                       -1)
    Character.edit_action_parameters(NSPM, Action.Teeter,                 File.SPM_TEETER,                0x80000000,               -1)
    Character.edit_action_parameters(NSPM, Action.TeeterStart,            File.SPM_TEETERSTART,           0x80000000,               -1)
    Character.edit_action_parameters(NSPM, Action.FallSpecial,            File.SPM_FALLSPECIAL,           -1,                       -1)
    Character.edit_action_parameters(NSPM, Action.LandingSpecial,         File.SPM_LANDING,               -1,                       -1)
    Character.edit_action_parameters(NSPM, Action.Tornado,                File.SPM_TUMBLE,                -1,                       -1)
    Character.edit_action_parameters(NSPM, Action.EnterPipe,              File.SPM_ENTERPIPE,             -1,                       -1)
    Character.edit_action_parameters(NSPM, Action.ExitPipe,               File.SPM_EXITPIPE,              -1,                       -1)
    Character.edit_action_parameters(NSPM, Action.ExitPipeWalk,           File.SPM_EXITPIPEWALK,          -1,                       -1)
    Character.edit_action_parameters(NSPM, Action.CeilingBonk,            File.SPM_CEILINGBONK,           -1,                       -1)
    Character.edit_action_parameters(NSPM, Action.DownStandD,             File.SPM_DOWNSTANDD,            -1,                       -1)
    Character.edit_action_parameters(NSPM, Action.DownStandU,             File.SPM_DOWNSTANDU,            -1,                       -1)
    Character.edit_action_parameters(NSPM, Action.TechF,                  File.SPM_TECHF,                 -1,                       -1)
    Character.edit_action_parameters(NSPM, Action.TechB,                  File.SPM_TECHB,                 -1,                       -1)
    Character.edit_action_parameters(NSPM, Action.DownForwardD,           File.SPM_DOWNFORWARDD,          -1,                       -1)
    Character.edit_action_parameters(NSPM, Action.DownForwardU,           File.SPM_DOWNFORWARDU,          -1,                       -1)
    Character.edit_action_parameters(NSPM, Action.DownBackD,              File.SPM_DOWNBACKD,             -1,                       -1)
    Character.edit_action_parameters(NSPM, Action.DownBackU,              File.SPM_DOWNBACKU,             -1,                       -1)
    Character.edit_action_parameters(NSPM, Action.DownAttackD,            File.SPM_DOWNATTACKD,           -1,                       -1)
    Character.edit_action_parameters(NSPM, Action.DownAttackU,            File.SPM_DOWNATTACKU,           -1,                       -1)
    Character.edit_action_parameters(NSPM, Action.Tech,                   File.SPM_TECH,                  -1,                       -1)
    Character.edit_action_parameters(NSPM, Action.ClangRecoil,            File.SPM_CLANGRECOIL,           -1,                       -1)
    Character.edit_action_parameters(NSPM, Action.CliffClimbQuick2,       File.SPM_CLIFFCLIMBQUICK2,      -1,                       -1)
    Character.edit_action_parameters(NSPM, Action.CliffClimbSlow2,        File.SPM_CLIFFCLIMBSLOW2,       -1,                       -1)
    Character.edit_action_parameters(NSPM, Action.CliffAttackQuick2,      File.SPM_CLIFFATTACKQUICK2,     -1,                       -1)
    Character.edit_action_parameters(NSPM, Action.CliffAttackSlow2,       File.SPM_CLIFFATTACKSLOW2,      -1,                       -1)
    Character.edit_action_parameters(NSPM, Action.CliffEscapeQuick2,      File.SPM_CLIFFESCAPEQUICK2,     -1,                       -1)
    Character.edit_action_parameters(NSPM, Action.CliffEscapeSlow2,       File.SPM_CLIFFESCAPESLOW2,      -1,                       -1)
    Character.edit_action_parameters(NSPM, Action.LightItemPickup,        File.SPM_LIGHTITEMPICKUP,       -1,                       -1)
    Character.edit_action_parameters(NSPM, Action.HeavyItemPickup,        File.SPM_HEAVYITEMPICKUP,       -1,                       -1)
    Character.edit_action_parameters(NSPM, Action.ItemDrop,               File.SPM_ITEMDROP,              -1,                       -1)
    Character.edit_action_parameters(NSPM, Action.ItemThrowDash,          File.SPM_ITEMTHROWDASH,         -1,                       -1)
    Character.edit_action_parameters(NSPM, Action.ItemThrowF,             File.SPM_ITEMTHROWF,            -1,                       -1)
    Character.edit_action_parameters(NSPM, Action.ItemThrowB,             File.SPM_ITEMTHROWF,            -1,                       -1)
    Character.edit_action_parameters(NSPM, Action.ItemThrowU,             File.SPM_ITEMTHROWU,            -1,                       -1)
    Character.edit_action_parameters(NSPM, Action.ItemThrowD,             File.SPM_ITEMTHROWD,            -1,                       -1)
    Character.edit_action_parameters(NSPM, Action.ItemThrowSmashF,        File.SPM_ITEMTHROWF,            -1,                       -1)
    Character.edit_action_parameters(NSPM, Action.ItemThrowSmashB,        File.SPM_ITEMTHROWF,            -1,                       -1)
    Character.edit_action_parameters(NSPM, Action.ItemThrowSmashU,        File.SPM_ITEMTHROWU,            -1,                       -1)
    Character.edit_action_parameters(NSPM, Action.ItemThrowSmashD,        File.SPM_ITEMTHROWD,            -1,                       -1)
    Character.edit_action_parameters(NSPM, Action.ItemThrowAirF,          File.SPM_ITEMTHROWAIRF,         -1,                       -1)
    Character.edit_action_parameters(NSPM, Action.ItemThrowAirB,          File.SPM_ITEMTHROWAIRF,         -1,                       -1)
    Character.edit_action_parameters(NSPM, Action.ItemThrowAirU,          File.SPM_ITEMTHROWAIRU,         -1,                       -1)
    Character.edit_action_parameters(NSPM, Action.ItemThrowAirD,          File.SPM_ITEMTHROWAIRD,         -1,                       -1)
    Character.edit_action_parameters(NSPM, Action.ItemThrowAirSmashF,     File.SPM_ITEMTHROWAIRF,         -1,                       -1)
    Character.edit_action_parameters(NSPM, Action.ItemThrowAirSmashB,     File.SPM_ITEMTHROWAIRF,         -1,                       -1)
    Character.edit_action_parameters(NSPM, Action.ItemThrowAirSmashU,     File.SPM_ITEMTHROWAIRU,         -1,                       -1)
    Character.edit_action_parameters(NSPM, Action.ItemThrowAirSmashD,     File.SPM_ITEMTHROWAIRD,         -1,                       -1)
    Character.edit_action_parameters(NSPM, Action.HeavyItemThrowF,        File.SPM_HEAVYITEMTHROW,        -1,                       -1)
    Character.edit_action_parameters(NSPM, Action.HeavyItemThrowB,        File.SPM_HEAVYITEMTHROW,        -1,                       -1)
    Character.edit_action_parameters(NSPM, Action.HeavyItemThrowSmashF,   File.SPM_HEAVYITEMTHROW,        -1,                       -1)
    Character.edit_action_parameters(NSPM, Action.HeavyItemThrowSmashB,   File.SPM_HEAVYITEMTHROW,        -1,                       -1)
    Character.edit_action_parameters(NSPM, Action.BeamSwordNeutral,       File.SPM_ITEMNEUTRAL,           -1,                       -1)
    Character.edit_action_parameters(NSPM, Action.BeamSwordTilt,          File.SPM_ITEMTILT,              -1,                       -1)
    Character.edit_action_parameters(NSPM, Action.BeamSwordSmash,         File.SPM_ITEMSMASH,             -1,                       -1)
    Character.edit_action_parameters(NSPM, Action.BeamSwordDash,          File.SPM_ITEMDASH,              -1,                       -1)
    Character.edit_action_parameters(NSPM, Action.BatNeutral,             File.SPM_ITEMNEUTRAL,           -1,                       -1)
    Character.edit_action_parameters(NSPM, Action.BatTilt,                File.SPM_ITEMTILT,              -1,                       -1)
    Character.edit_action_parameters(NSPM, Action.BatSmash,               File.SPM_ITEMSMASH,             -1,                       -1)
    Character.edit_action_parameters(NSPM, Action.BatDash,                File.SPM_ITEMDASH,              -1,                       -1)
    Character.edit_action_parameters(NSPM, Action.FanNeutral,             File.SPM_ITEMNEUTRAL,           -1,                       -1)
    Character.edit_action_parameters(NSPM, Action.FanTilt,                File.SPM_ITEMTILT,              -1,                       -1)
    Character.edit_action_parameters(NSPM, Action.FanSmash,               File.SPM_ITEMSMASH,             -1,                       -1)
    Character.edit_action_parameters(NSPM, Action.FanDash,                File.SPM_ITEMDASH,              -1,                       -1)
    Character.edit_action_parameters(NSPM, Action.StarRodNeutral,         File.SPM_ITEMNEUTRAL,           -1,                       -1)
    Character.edit_action_parameters(NSPM, Action.StarRodTilt,            File.SPM_ITEMTILT,              -1,                       -1)
    Character.edit_action_parameters(NSPM, Action.StarRodSmash,           File.SPM_ITEMSMASH,             -1,                       -1)
    Character.edit_action_parameters(NSPM, Action.StarRodDash,            File.SPM_ITEMDASH,              -1,                       -1)
    Character.edit_action_parameters(NSPM, Action.RayGunShoot,            File.SPM_ITEMSHOOT,             -1,                       -1)
    Character.edit_action_parameters(NSPM, Action.RayGunShootAir,         File.SPM_ITEMSHOOTAIR,          -1,                       -1)
    Character.edit_action_parameters(NSPM, Action.FireFlowerShoot,        File.SPM_ITEMSHOOT,             -1,                       -1)
    Character.edit_action_parameters(NSPM, Action.FireFlowerShootAir,     File.SPM_ITEMSHOOTAIR,          -1,                       -1)
    Character.edit_action_parameters(NSPM, Action.HammerIdle,             File.SPM_HAMMERIDLE,            -1,                       -1)
    Character.edit_action_parameters(NSPM, Action.HammerWalk,             File.SPM_HAMMERMOVE,            -1,                       -1)
    Character.edit_action_parameters(NSPM, Action.HammerTurn,             File.SPM_HAMMERMOVE,            -1,                       -1)
    Character.edit_action_parameters(NSPM, Action.HammerJumpSquat,        File.SPM_HAMMERMOVE,            -1,                       -1)
    Character.edit_action_parameters(NSPM, Action.HammerAir,              File.SPM_HAMMERMOVE,            -1,                       -1)
    Character.edit_action_parameters(NSPM, Action.HammerLanding,          File.SPM_HAMMERMOVE,            -1,                       -1)
    Character.edit_action_parameters(NSPM, Action.ShieldOn,               File.SPM_SHIELDON,              -1,                -1)
    Character.edit_action_parameters(NSPM, Action.ShieldOff,              File.SPM_SHIELDOFF,             -1,               -1)
    Character.edit_action_parameters(NSPM, Action.RollF,                  File.SPM_ROLLF,                 -1,                       -1)
    Character.edit_action_parameters(NSPM, Action.RollB,                  File.SPM_ROLLB,                 -1,                       -1)
    Character.edit_action_parameters(NSPM, Action.StunStartD,             File.SPM_DOWNSTANDD,            -1,                       -1)
    Character.edit_action_parameters(NSPM, Action.StunStartU,             File.SPM_DOWNSTANDU,            -1,                       -1)
    Character.edit_action_parameters(NSPM, Action.Stun,                   File.SPM_STUN,                  -1,                       -1)
    Character.edit_action_parameters(NSPM, Action.Sleep,                  File.SPM_STUN,                  -1,                       -1)
    Character.edit_action_parameters(NSPM, Action.Grab,                   File.SPM_GRAB,                  Spiderman.GRAB,                     0x10000000)
    Character.edit_action_parameters(NSPM, Action.GrabPull,               File.SPM_GRABPULL,              Spiderman.GRAB_PULL,                0x10000000)
    Character.edit_action_parameters(NSPM, Action.ThrowF,                 File.SPM_THROWF,                Spiderman.THROW_F,                  -1)
    Character.edit_action_parameters(NSPM, Action.ThrowB,                 File.SPM_THROWB,                Spiderman.THROW_B,                  -1)
    Character.edit_action_parameters(NSPM, Action.CapturePulled,          File.SPM_CAPTUREPULLED,         -1,                       -1)
    Character.edit_action_parameters(NSPM, Action.EggLayPulled,           File.SPM_CAPTUREPULLED,         -1,                       -1)
    Character.edit_action_parameters(NSPM, Action.EggLay,                 File.SPM_IDLE,                  -1,                       -1)
    Character.edit_action_parameters(NSPM, Action.Taunt,                  File.SPM_TAUNT,                 Spiderman.TAUNT,                    -1)
    Character.edit_action_parameters(NSPM, Action.Jab1,                   File.SPM_JAB1,                  Spiderman.JAB1,                     -1)
    Character.edit_action_parameters(NSPM, Action.Jab2,                   File.SPM_JAB2,                  Spiderman.JAB2,                     -1)
    Character.edit_action_parameters(NSPM, Action.Jab3,                   File.SPM_JAB3,                  Spiderman.JAB3,                      0x40000000)
    Character.edit_action_parameters(NSPM, Action.JabLoopStart,           File.SPM_JAB1,                  Spiderman.JAB1,                     0)
    Character.edit_action_parameters(NSPM, Action.JabLoop,                File.SPM_JAB2,                  Spiderman.JAB2,                     0)
    Character.edit_action_parameters(NSPM, Action.DashAttack,             File.SPM_DASHATTACK,            Spiderman.DASH_ATTACK,              -1)
    Character.edit_action_parameters(NSPM, Action.FTiltHigh,              0,                              0x80000000,               0)
    Character.edit_action_parameters(NSPM, Action.FTiltMidHigh,           0,                              0x80000000,               0)
    Character.edit_action_parameters(NSPM, Action.FTilt,                  File.SPM_FTILT,                 Spiderman.FORWARD_TILT,             -1)
    Character.edit_action_parameters(NSPM, Action.FTiltMidLow,            0,                              0x80000000,               0)
    Character.edit_action_parameters(NSPM, Action.FTiltLow,               0,                              0x80000000,               0)
    Character.edit_action_parameters(NSPM, Action.UTilt,                  File.SPM_UTILT,                 Spiderman.UP_TILT,                  -1)
    Character.edit_action_parameters(NSPM, Action.DTilt,                  File.SPM_DTILT,                 Spiderman.DOWN_TILT,                -1)
    Character.edit_action_parameters(NSPM, Action.FSmashHigh,             0,                              0x80000000,               0)
    Character.edit_action_parameters(NSPM, Action.FSmashMidHigh,          0,                              0x80000000,               0)
    Character.edit_action_parameters(NSPM, Action.FSmash,                 File.SPM_FSMASH,                Spiderman.FORWARD_SMASH,            -1)
    Character.edit_action_parameters(NSPM, Action.FSmashMidLow,           0,                              0x80000000,               0)
    Character.edit_action_parameters(NSPM, Action.FSmashLow,              0,                              0x80000000,               0)
    Character.edit_action_parameters(NSPM, Action.USmash,                 File.SPM_USMASH,                Spiderman.UP_SMASH,                 -1)
    Character.edit_action_parameters(NSPM, Action.DSmash,                 File.SPM_DSMASH,                Spiderman.DOWN_SMASH,               -1)
    Character.edit_action_parameters(NSPM, Action.AttackAirN,             File.SPM_ATTACKAIRN,            Spiderman.NEUTRAL_AERIAL,           -1)
    Character.edit_action_parameters(NSPM, Action.AttackAirF,             File.SPM_ATTACKAIRF,            Spiderman.FORWARD_AERIAL,           -1)
    Character.edit_action_parameters(NSPM, Action.AttackAirB,             File.SPM_ATTACKAIRB,            Spiderman.BACK_AERIAL,              -1)
    Character.edit_action_parameters(NSPM, Action.AttackAirU,             File.SPM_ATTACKAIRU,            Spiderman.UP_AERIAL,                -1)
    Character.edit_action_parameters(NSPM, Action.AttackAirD,             File.SPM_ATTACKAIRD,            Spiderman.DOWN_AERIAL,              -1)
    Character.edit_action_parameters(NSPM, Action.LandingAirF,            File.SPM_LANDINGAIRF,           -1,                       -1)
    Character.edit_action_parameters(NSPM, Action.LandingAirB,            File.SPM_LANDINGAIRB,           -1,                       -1)
    Character.edit_action_parameters(NSPM, Action.LandingAirX,            File.SPM_LANDING,               -1,                       -1)
    Character.edit_action_parameters(NSPM, Action.AppearLeft1,            File.SPM_IDLE,                  0x80000000,                  0x00000000)
	Character.edit_action_parameters(NSPM, Action.AppearRight1,           File.SPM_IDLE,                  0x80000000,                  0x00000000)
	Character.edit_action_parameters(NSPM, Action.AppearLeft2,            File.SPM_IDLE,                  0x80000000,                  0x00000000)
	Character.edit_action_parameters(NSPM, Action.AppearRight2,           File.SPM_IDLE,                  0x80000000,                  0x00000000)
    Character.edit_action_parameters(NSPM, Action.WebBall,                File.SPM_NSP_GROUND,            Spiderman.NSP_GROUND,               -1)
    Character.edit_action_parameters(NSPM, Action.WebBallAir,             File.SPM_NSP_AIR,               Spiderman.NSP_AIR,                  -1)
    Character.edit_action_parameters(NSPM, Action.WebSwing,               File.SPM_DSP_GROUND,            Spiderman.DSP,                      0x40000000)
    Character.edit_action_parameters(NSPM, 0xE7,                          0,                              0x80000000,               0)
    Character.edit_action_parameters(NSPM, 0xE8,                          0,                              0x80000000,               0)
    Character.edit_action_parameters(NSPM, Action.WebSwingAir,            File.SPM_DSP_AIR,               Spiderman.DSP,                      -1)
    Character.edit_action_parameters(NSPM, 0xEA,                          0,                              0x80000000,               0)          
    Character.edit_action_parameters(NSPM, 0xEB,                          0,                              0x80000000,               0)
    Character.edit_action_parameters(NSPM, 0xEC,                          0,                              0x80000000,               0)
    Character.edit_action_parameters(NSPM, 0xED,                          0,                              0x80000000,               0)
    Character.edit_action_parameters(NSPM, 0xEE,                          0,                              0x80000000,               0)

    // Modify Actions            // Action                      // Staling ID   // Main ASM                   // Interrupt/Other ASM          // Movement/Physics ASM       // Collision ASM
	Character.edit_action(NSPM,   Action.WebBall,                -1,             SpidermanNSP.main,  	      -1,                             -1,                           -1)
	Character.edit_action(NSPM,   Action.WebBallAir,             -1,             SpidermanNSP.main,  	      -1,                             SpidermanNSP.physics_,        SpidermanNSP.air_collision_)
    Character.edit_action(NSPM,   Action.WebSwing,               -1,             -1,  		                  SpidermanDSP.change_direction_, SpidermanDSP.ground_physics_, SpidermanDSP.ground_collision_)
    Character.edit_action(NSPM,   Action.WebSwingAir,            -1,             -1,                          SpidermanDSP.change_direction_, -1,                           SpidermanDSP.air_collision_)
    Character.edit_action(NSPM,   0xE0,                          -1,             0x8013D994,                  0x00000000,                      0x00000000,                  0x00000000)
    Character.edit_action(NSPM,   0xE1,                          -1,             0x8013D994,                  0x00000000,                      0x00000000,                  0x00000000)

    // Add Action Parameters             // Action Name      // Base Action  // Animation                   // Moveset Data        // Flags
    Character.add_new_action_params(NSPM, USPGround,          -1,             File.SPM_USP_GROUND,           Spiderman.USP,                   0x10000000)
    Character.add_new_action_params(NSPM, USPAir,             -1,             File.SPM_USP_AIR,              Spiderman.USP,                   0x10000000)
    Character.add_new_action_params(NSPM, USPAirPull,         -1,             File.SPM_USP_AIR_GRABPULL,     Spiderman.USP_PULL,              0x50000000)
    Character.add_new_action_params(NSPM, USPAAttack,         -1,             File.SPM_USP_AIR_GRABTHROW,    Spiderman.USP_AIR_THROW,         0x10000000)
    Character.add_new_action_params(NSPM, USPEnd,             -1,             File.SPM_USP_WALLEND,          0x80000000,            0x00000000)
    Character.add_new_action_params(NSPM, USPGroundPull,      -1,             File.SPM_USP_GROUND_GRABPULL,  Spiderman.USP_PULL,              0x10000000)
    Character.add_new_action_params(NSPM, USPGAttack,         -1,             File.SPM_USP_GROUND_GRABTHROW, Spiderman.USP_GROUND_THROW,      0x50000000)

    // Add Actions                // Action Name     // Base Action  //Parameters                    // Staling ID   // Main ASM                        // Interrupt/Other ASM          // Movement/Physics ASM             // Collision ASM
    Character.add_new_action(NSPM, USPGround,         -1,             ActionParams.USPGround,         0x11,           SpidermanUSP.main_,                SpidermanUSP.change_direction_, 0x800D8BB4,                         SpidermanUSP.ground_collision_)
    Character.add_new_action(NSPM, USPAir,            -1,             ActionParams.USPAir,            0x11,           SpidermanUSP.main_,                SpidermanUSP.change_direction_, SpidermanUSP.air_physics_,          SpidermanUSP.air_collision_)
    Character.add_new_action(NSPM, USPAirPull,        -1,             ActionParams.USPAirPull,        0x11,           SpidermanUSP.air_pull_main_,       0,                              0x800D93E4,                         SpidermanUSP.shared_air_collision_)
    Character.add_new_action(NSPM, USPAirWallPull,    -1,             ActionParams.USPAirPull,        0x11,           SpidermanUSP.wall_pull_main_,      0,                              0x800D93E4,                         SpidermanUSP.shared_air_collision_)
    Character.add_new_action(NSPM, USPAAttack,        -1,             ActionParams.USPAAttack,        0x11,           0x8014A0C0,                        0,                              SpidermanUSP.throw_air_physics_,    SpidermanUSP.throw_air_collision_)
    Character.add_new_action(NSPM, USPEnd,            -1,             ActionParams.USPEnd,            0x11,           0x800D94E8,                        0,                              0x800D9160,                         0x800DE99C)
    Character.add_new_action(NSPM, USPGroundPull,     -1,             ActionParams.USPGroundPull,     0x11,           SpidermanUSP.ground_pull_main_,    0,                              0x800D8BB4,                         SpidermanUSP.shared_ground_collision_)
    Character.add_new_action(NSPM, USPGAttack,        -1,             ActionParams.USPGAttack,        0x11,           0x8014A0C0,                        0,                              0x800D93E4,                         SpidermanUSP.throw_air_collision_)

    // Modify Menu Action Parameters             // Action          // Animation                // Moveset Data             // Flags
    Character.edit_menu_action_parameters(NSPM,   0x0,               File.SPM_IDLE,              -1,                         -1)          // CSS Idle
    Character.edit_menu_action_parameters(NSPM,   0x1,               File.SPM_VICTORY_1,         0x80000000,                  -1)          // Victory1
    Character.edit_menu_action_parameters(NSPM,   0x2,               File.SPM_VICTORY_2,         0x80000000,                  -1)          // Victory2
    Character.edit_menu_action_parameters(NSPM,   0x3,               File.SPM_VICTORY_3,         0x80000000,                  -1)          // Victory3
    Character.edit_menu_action_parameters(NSPM,   0x4,               File.SPM_VICTORY_1,         0x80000000,                  -1)          // CSS Select
    Character.edit_menu_action_parameters(NSPM,   0xD,               File.SPM_1P_POSE,           -1,                         -1)          // 1P Mode Pose
    Character.edit_menu_action_parameters(NSPM,   0xE,               File.SPM_CPU_POSE,          -1,                         -1)          // CPU Pose
    Character.edit_menu_action_parameters(NSPM,   0x5,               File.SPM_CLAP,              -1,                         -1)
    Character.edit_menu_action_parameters(NSPM,   0x9,               File.SPM_CONTINUEFALL,      -1,                         -1)
    Character.edit_menu_action_parameters(NSPM,   0xA,               File.SPM_CONTINUEUP,        -1,                         -1)

    // Set action strings
    Character.table_patch_start(action_string, Character.id.NSPM, 0x4)
    dw  Action.action_string_table
    OS.patch_end()

    Character.table_patch_start(ground_usp, Character.id.NSPM, 0x4)
    dw      SpidermanUSP.ground_initial_
    OS.patch_end()
    Character.table_patch_start(air_usp, Character.id.NSPM, 0x4)
    dw      SpidermanUSP.air_initial_
    OS.patch_end()
    Character.table_patch_start(ground_dsp, Character.id.NSPM, 0x4)
    dw      SpidermanDSP.ground_initial_
    OS.patch_end()
    Character.table_patch_start(air_dsp, Character.id.NSPM, 0x4)
    dw      SpidermanDSP.air_initial_
    OS.patch_end()

    Character.table_patch_start(rapid_jab, Character.id.NSPM, 0x4)
    dw      Character.rapid_jab.DISABLED        // disable rapid jab
    OS.patch_end()

    // Use Mario's initial/grounded script.
    Character.table_patch_start(initial_script, Character.id.NSPM, 0x4)
    dw 0x800D7DCC
    OS.patch_end()
    Character.table_patch_start(grounded_script, Character.id.NSPM, 0x4)
    dw 0x800DE428
    OS.patch_end()

    // Remove entry script (no Blue Falcon).
    //Character.table_patch_start(entry_script, Character.id.NSPM, 0x4)
    //dw 0x8013DD68                           // skips entry script
    //OS.patch_end()

    // Handles common things for Polygons
    Character.polygon_setup(NSPM, SPM)

    // Set Kirby star damage
    Character.table_patch_start(kirby_inhale_struct, 0x8, Character.id.NSPM, 0xC)
    dw Character.kirby_inhale_struct.star_damage.FALCON
    OS.patch_end()
}
