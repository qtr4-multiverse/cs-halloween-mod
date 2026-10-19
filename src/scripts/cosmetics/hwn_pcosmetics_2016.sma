#include <amxmodx>

#include <hwn>

#include <api_player_cosmetic>

#define PLUGIN "[Hwn] Player Cosmetic 2016"
#define AUTHOR "Hedgehog Fog"

#define UNUSUAL_COLOR Float:{HWN_COLOR_PRIMARY_F}

public plugin_precache()
{
    /* szName = ML key from data/lang/hwn.txt (HWN_COSM_*) */
    Hwn_Cosmetic_Register(
        PCosmetic_Register(
            .szName = "HWN_COSM_COFFIN_PACK",
            .modelIndex = precache_model("models/hwn/cosmetics/coffinpack.mdl"),
            .groups = (PCosmetic_Group_Back),
            .fUnusualColor = UNUSUAL_COLOR
        )
    );

    Hwn_Cosmetic_Register(
        PCosmetic_Register(
            .szName = "HWN_COSM_DEVIL_HORNS",
            .modelIndex = precache_model("models/hwn/cosmetics/devil_horns.mdl"),
            .groups = (PCosmetic_Group_Mask),
            .fUnusualColor = UNUSUAL_COLOR
        )
    );

    Hwn_Cosmetic_Register(
        PCosmetic_Register(
            .szName = "HWN_COSM_DEVIL_TAIL",
            .modelIndex = precache_model("models/hwn/cosmetics/devil_tail.mdl"),
            .groups = (PCosmetic_Group_Fanny),
            .fUnusualColor = UNUSUAL_COLOR
        )
    );

    Hwn_Cosmetic_Register(
        PCosmetic_Register(
            .szName = "HWN_COSM_DEVIL_WINGS",
            .modelIndex = precache_model("models/hwn/cosmetics/devil_wings.mdl"),
            .groups = (PCosmetic_Group_Back),
            .fUnusualColor = UNUSUAL_COLOR
        )
    );

    Hwn_Cosmetic_Register(
        PCosmetic_Register(
            .szName = "HWN_COSM_GARLIC_FLANK_STAKE",
            .modelIndex = precache_model("models/hwn/cosmetics/garlic_flank_stake.mdl"),
            .groups = (PCosmetic_Group_Legs),
            .fUnusualColor = UNUSUAL_COLOR
        )
    );

    Hwn_Cosmetic_Register(
        PCosmetic_Register(
            .szName = "HWN_COSM_HOLY_HUNTER",
            .modelIndex = precache_model("models/hwn/cosmetics/holy_hunter.mdl"),
            .groups = (PCosmetic_Group_Hat),
            .fUnusualColor = UNUSUAL_COLOR
        )
    );

    Hwn_Cosmetic_Register(
        PCosmetic_Register(
            .szName = "HWN_COSM_PUMPKIN",
            .modelIndex = precache_model("models/hwn/cosmetics/pumpkin_hat.mdl"),
            .groups = (PCosmetic_Group_Hat | PCosmetic_Group_Mask),
            .fUnusualColor = UNUSUAL_COLOR
        )
    );

    Hwn_Cosmetic_Register(
        PCosmetic_Register(
            .szName = "HWN_COSM_SILVER_BULLETS",
            .modelIndex = precache_model("models/hwn/cosmetics/silver_bullets.mdl"),
            .groups = (PCosmetic_Group_Body),
            .fUnusualColor = UNUSUAL_COLOR
        )
    );

    Hwn_Cosmetic_Register(
        PCosmetic_Register(
            .szName = "HWN_COSM_SKULL",
            .modelIndex = precache_model("models/hwn/cosmetics/skull.mdl"),
            .groups = (PCosmetic_Group_Mask),
            .fUnusualColor = UNUSUAL_COLOR
        )
    );

    Hwn_Cosmetic_Register(
        PCosmetic_Register(
            .szName = "HWN_COSM_SPOOKYHOOD",
            .modelIndex = precache_model("models/hwn/cosmetics/spookyhood.mdl"),
            .groups = (PCosmetic_Group_Hat),
            .fUnusualColor = UNUSUAL_COLOR
        )
    );
}

public plugin_init()
{
    register_plugin(PLUGIN, HWN_VERSION, AUTHOR);
    register_dictionary("hwn.txt");
}