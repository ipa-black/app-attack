.class public final enum Lcom/appsgeyser/multiTabApp/utils/ThemePreset;
.super Ljava/lang/Enum;
.source "ThemePreset.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/appsgeyser/multiTabApp/utils/ThemePreset;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/appsgeyser/multiTabApp/utils/ThemePreset;

.field public static final enum BLACK:Lcom/appsgeyser/multiTabApp/utils/ThemePreset;

.field public static final enum BLUE:Lcom/appsgeyser/multiTabApp/utils/ThemePreset;

.field public static final enum BROWN:Lcom/appsgeyser/multiTabApp/utils/ThemePreset;

.field public static final enum DEFAULT:Lcom/appsgeyser/multiTabApp/utils/ThemePreset;

.field public static final enum GREEN:Lcom/appsgeyser/multiTabApp/utils/ThemePreset;

.field public static final enum GREY:Lcom/appsgeyser/multiTabApp/utils/ThemePreset;

.field public static final enum INDIGO:Lcom/appsgeyser/multiTabApp/utils/ThemePreset;

.field public static final enum ORANGE:Lcom/appsgeyser/multiTabApp/utils/ThemePreset;

.field public static final enum PINK:Lcom/appsgeyser/multiTabApp/utils/ThemePreset;

.field public static final enum PURPLE:Lcom/appsgeyser/multiTabApp/utils/ThemePreset;

.field public static final enum RED:Lcom/appsgeyser/multiTabApp/utils/ThemePreset;

.field public static final enum TEAL:Lcom/appsgeyser/multiTabApp/utils/ThemePreset;

.field public static final enum YELLOW:Lcom/appsgeyser/multiTabApp/utils/ThemePreset;

.field private static final themeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/appsgeyser/multiTabApp/utils/ThemePreset;",
            ">;"
        }
    .end annotation
.end field

.field private static final themeMapNoActionBar:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/appsgeyser/multiTabApp/utils/ThemePreset;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final themeColorAccentId:I

.field public final themeColorPrimaryDarkId:I

.field public final themeColorPrimaryId:I

.field public final themeId:I

.field public final themeName:Ljava/lang/String;

.field public final themeNoActionBarId:I

.field public final themeNoActionBarName:Ljava/lang/String;

.field public final themeTitleId:I


# direct methods
.method private static synthetic $values()[Lcom/appsgeyser/multiTabApp/utils/ThemePreset;
    .locals 13

    .line 9
    sget-object v0, Lcom/appsgeyser/multiTabApp/utils/ThemePreset;->DEFAULT:Lcom/appsgeyser/multiTabApp/utils/ThemePreset;

    sget-object v1, Lcom/appsgeyser/multiTabApp/utils/ThemePreset;->BLUE:Lcom/appsgeyser/multiTabApp/utils/ThemePreset;

    sget-object v2, Lcom/appsgeyser/multiTabApp/utils/ThemePreset;->RED:Lcom/appsgeyser/multiTabApp/utils/ThemePreset;

    sget-object v3, Lcom/appsgeyser/multiTabApp/utils/ThemePreset;->PINK:Lcom/appsgeyser/multiTabApp/utils/ThemePreset;

    sget-object v4, Lcom/appsgeyser/multiTabApp/utils/ThemePreset;->PURPLE:Lcom/appsgeyser/multiTabApp/utils/ThemePreset;

    sget-object v5, Lcom/appsgeyser/multiTabApp/utils/ThemePreset;->INDIGO:Lcom/appsgeyser/multiTabApp/utils/ThemePreset;

    sget-object v6, Lcom/appsgeyser/multiTabApp/utils/ThemePreset;->TEAL:Lcom/appsgeyser/multiTabApp/utils/ThemePreset;

    sget-object v7, Lcom/appsgeyser/multiTabApp/utils/ThemePreset;->GREEN:Lcom/appsgeyser/multiTabApp/utils/ThemePreset;

    sget-object v8, Lcom/appsgeyser/multiTabApp/utils/ThemePreset;->YELLOW:Lcom/appsgeyser/multiTabApp/utils/ThemePreset;

    sget-object v9, Lcom/appsgeyser/multiTabApp/utils/ThemePreset;->ORANGE:Lcom/appsgeyser/multiTabApp/utils/ThemePreset;

    sget-object v10, Lcom/appsgeyser/multiTabApp/utils/ThemePreset;->BROWN:Lcom/appsgeyser/multiTabApp/utils/ThemePreset;

    sget-object v11, Lcom/appsgeyser/multiTabApp/utils/ThemePreset;->GREY:Lcom/appsgeyser/multiTabApp/utils/ThemePreset;

    sget-object v12, Lcom/appsgeyser/multiTabApp/utils/ThemePreset;->BLACK:Lcom/appsgeyser/multiTabApp/utils/ThemePreset;

    filled-new-array/range {v0 .. v12}, [Lcom/appsgeyser/multiTabApp/utils/ThemePreset;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 23

    .line 11
    new-instance v11, Lcom/appsgeyser/multiTabApp/utils/ThemePreset;

    const v9, 0x7f060060

    const v10, 0x7f060061

    const-string v1, "DEFAULT"

    const/4 v2, 0x0

    const v3, 0x7f13002b

    const v4, 0x7f13003b

    const-string v5, "AppThemeDefault"

    const-string v6, "AppThemeDefaultNoActionBar"

    const v7, 0x7f1201b0

    const v8, 0x7f06005f

    move-object v0, v11

    invoke-direct/range {v0 .. v10}, Lcom/appsgeyser/multiTabApp/utils/ThemePreset;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;IIII)V

    sput-object v11, Lcom/appsgeyser/multiTabApp/utils/ThemePreset;->DEFAULT:Lcom/appsgeyser/multiTabApp/utils/ThemePreset;

    .line 14
    new-instance v0, Lcom/appsgeyser/multiTabApp/utils/ThemePreset;

    const v21, 0x7f060048

    const v22, 0x7f060049

    const-string v13, "BLUE"

    const/4 v14, 0x1

    const v15, 0x7f130031

    const v16, 0x7f130032

    const-string v17, "AppThemeBlue"

    const-string v18, "AppThemeBlueNoActionBar"

    const v19, 0x7f1201ae

    const v20, 0x7f060047

    move-object v12, v0

    invoke-direct/range {v12 .. v22}, Lcom/appsgeyser/multiTabApp/utils/ThemePreset;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;IIII)V

    sput-object v0, Lcom/appsgeyser/multiTabApp/utils/ThemePreset;->BLUE:Lcom/appsgeyser/multiTabApp/utils/ThemePreset;

    .line 17
    new-instance v0, Lcom/appsgeyser/multiTabApp/utils/ThemePreset;

    const v10, 0x7f06012b

    const v11, 0x7f06012c

    const-string v2, "RED"

    const/4 v3, 0x2

    const v4, 0x7f130042

    const v5, 0x7f130043

    const-string v6, "AppThemeRed"

    const-string v7, "AppThemeRedNoActionBar"

    const v8, 0x7f1201b9

    const v9, 0x7f06012a

    move-object v1, v0

    invoke-direct/range {v1 .. v11}, Lcom/appsgeyser/multiTabApp/utils/ThemePreset;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;IIII)V

    sput-object v0, Lcom/appsgeyser/multiTabApp/utils/ThemePreset;->RED:Lcom/appsgeyser/multiTabApp/utils/ThemePreset;

    .line 20
    new-instance v0, Lcom/appsgeyser/multiTabApp/utils/ThemePreset;

    const v21, 0x7f06011d

    const v22, 0x7f06011e

    const-string v13, "PINK"

    const/4 v14, 0x3

    const v15, 0x7f13003e

    const v16, 0x7f13003f

    const-string v17, "AppThemePink"

    const-string v18, "AppThemePinkNoActionBar"

    const v19, 0x7f1201b5

    const v20, 0x7f06011c

    move-object v12, v0

    invoke-direct/range {v12 .. v22}, Lcom/appsgeyser/multiTabApp/utils/ThemePreset;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;IIII)V

    sput-object v0, Lcom/appsgeyser/multiTabApp/utils/ThemePreset;->PINK:Lcom/appsgeyser/multiTabApp/utils/ThemePreset;

    .line 23
    new-instance v0, Lcom/appsgeyser/multiTabApp/utils/ThemePreset;

    const v10, 0x7f060128

    const v11, 0x7f060129

    const-string v2, "PURPLE"

    const/4 v3, 0x4

    const v4, 0x7f130040

    const v5, 0x7f130041

    const-string v6, "AppThemePurple"

    const-string v7, "AppThemePurpleNoActionBar"

    const v8, 0x7f1201b8

    const v9, 0x7f060127

    move-object v1, v0

    invoke-direct/range {v1 .. v11}, Lcom/appsgeyser/multiTabApp/utils/ThemePreset;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;IIII)V

    sput-object v0, Lcom/appsgeyser/multiTabApp/utils/ThemePreset;->PURPLE:Lcom/appsgeyser/multiTabApp/utils/ThemePreset;

    .line 26
    new-instance v0, Lcom/appsgeyser/multiTabApp/utils/ThemePreset;

    const v21, 0x7f0600c3

    const v22, 0x7f0600c4

    const-string v13, "INDIGO"

    const/4 v14, 0x5

    const v15, 0x7f130039

    const v16, 0x7f13003a

    const-string v17, "AppThemeIndigo"

    const-string v18, "AppThemeIndigoNoActionBar"

    const v19, 0x7f1201b3

    const v20, 0x7f0600c2

    move-object v12, v0

    invoke-direct/range {v12 .. v22}, Lcom/appsgeyser/multiTabApp/utils/ThemePreset;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;IIII)V

    sput-object v0, Lcom/appsgeyser/multiTabApp/utils/ThemePreset;->INDIGO:Lcom/appsgeyser/multiTabApp/utils/ThemePreset;

    .line 29
    new-instance v0, Lcom/appsgeyser/multiTabApp/utils/ThemePreset;

    const v10, 0x7f06013f

    const v11, 0x7f060140

    const-string v2, "TEAL"

    const/4 v3, 0x6

    const v4, 0x7f130044

    const v5, 0x7f130045

    const-string v6, "AppThemeTeal"

    const-string v7, "AppThemeTealNoActionBar"

    const v8, 0x7f1201ba

    const v9, 0x7f06013e

    move-object v1, v0

    invoke-direct/range {v1 .. v11}, Lcom/appsgeyser/multiTabApp/utils/ThemePreset;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;IIII)V

    sput-object v0, Lcom/appsgeyser/multiTabApp/utils/ThemePreset;->TEAL:Lcom/appsgeyser/multiTabApp/utils/ThemePreset;

    .line 32
    new-instance v0, Lcom/appsgeyser/multiTabApp/utils/ThemePreset;

    const v21, 0x7f0600b8

    const v22, 0x7f0600b9

    const-string v13, "GREEN"

    const/4 v14, 0x7

    const v15, 0x7f130035

    const v16, 0x7f130036

    const-string v17, "AppThemeGreen"

    const-string v18, "AppThemeGreenNoActionBar"

    const v19, 0x7f1201b1

    const v20, 0x7f0600b7

    move-object v12, v0

    invoke-direct/range {v12 .. v22}, Lcom/appsgeyser/multiTabApp/utils/ThemePreset;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;IIII)V

    sput-object v0, Lcom/appsgeyser/multiTabApp/utils/ThemePreset;->GREEN:Lcom/appsgeyser/multiTabApp/utils/ThemePreset;

    .line 35
    new-instance v0, Lcom/appsgeyser/multiTabApp/utils/ThemePreset;

    const v10, 0x7f06015e

    const v11, 0x7f06015f

    const-string v2, "YELLOW"

    const/16 v3, 0x8

    const v4, 0x7f130046

    const v5, 0x7f130047

    const-string v6, "AppThemeYellow"

    const-string v7, "AppThemeYellowNoActionBar"

    const v8, 0x7f1201bb

    const v9, 0x7f06015d

    move-object v1, v0

    invoke-direct/range {v1 .. v11}, Lcom/appsgeyser/multiTabApp/utils/ThemePreset;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;IIII)V

    sput-object v0, Lcom/appsgeyser/multiTabApp/utils/ThemePreset;->YELLOW:Lcom/appsgeyser/multiTabApp/utils/ThemePreset;

    .line 38
    new-instance v0, Lcom/appsgeyser/multiTabApp/utils/ThemePreset;

    const v21, 0x7f06011a

    const v22, 0x7f06011b

    const-string v13, "ORANGE"

    const/16 v14, 0x9

    const v15, 0x7f13003c

    const v16, 0x7f13003d

    const-string v17, "AppThemeOrange"

    const-string v18, "AppThemeOrangeNoActionBar"

    const v19, 0x7f1201b4

    const v20, 0x7f060119

    move-object v12, v0

    invoke-direct/range {v12 .. v22}, Lcom/appsgeyser/multiTabApp/utils/ThemePreset;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;IIII)V

    sput-object v0, Lcom/appsgeyser/multiTabApp/utils/ThemePreset;->ORANGE:Lcom/appsgeyser/multiTabApp/utils/ThemePreset;

    .line 41
    new-instance v0, Lcom/appsgeyser/multiTabApp/utils/ThemePreset;

    const v10, 0x7f060052

    const v11, 0x7f060053

    const-string v2, "BROWN"

    const/16 v3, 0xa

    const v4, 0x7f130033

    const v5, 0x7f130034

    const-string v6, "AppThemeBrown"

    const-string v7, "AppThemeBrownNoActionBar"

    const v8, 0x7f1201af

    const v9, 0x7f060051

    move-object v1, v0

    invoke-direct/range {v1 .. v11}, Lcom/appsgeyser/multiTabApp/utils/ThemePreset;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;IIII)V

    sput-object v0, Lcom/appsgeyser/multiTabApp/utils/ThemePreset;->BROWN:Lcom/appsgeyser/multiTabApp/utils/ThemePreset;

    .line 44
    new-instance v0, Lcom/appsgeyser/multiTabApp/utils/ThemePreset;

    const v21, 0x7f0600bb

    const v22, 0x7f0600bc

    const-string v13, "GREY"

    const/16 v14, 0xb

    const v15, 0x7f130037

    const v16, 0x7f130038

    const-string v17, "AppThemeGrey"

    const-string v18, "AppThemeGreyNoActionBar"

    const v19, 0x7f1201b2

    const v20, 0x7f0600ba

    move-object v12, v0

    invoke-direct/range {v12 .. v22}, Lcom/appsgeyser/multiTabApp/utils/ThemePreset;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;IIII)V

    sput-object v0, Lcom/appsgeyser/multiTabApp/utils/ThemePreset;->GREY:Lcom/appsgeyser/multiTabApp/utils/ThemePreset;

    .line 47
    new-instance v0, Lcom/appsgeyser/multiTabApp/utils/ThemePreset;

    const v10, 0x7f060045

    const v11, 0x7f060046

    const-string v2, "BLACK"

    const/16 v3, 0xc

    const v4, 0x7f13002f

    const v5, 0x7f130030

    const-string v6, "AppThemeBlack"

    const-string v7, "AppThemeBlackNoActionBar"

    const v8, 0x7f1201ad

    const v9, 0x7f060044

    move-object v1, v0

    invoke-direct/range {v1 .. v11}, Lcom/appsgeyser/multiTabApp/utils/ThemePreset;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;IIII)V

    sput-object v0, Lcom/appsgeyser/multiTabApp/utils/ThemePreset;->BLACK:Lcom/appsgeyser/multiTabApp/utils/ThemePreset;

    .line 9
    invoke-static {}, Lcom/appsgeyser/multiTabApp/utils/ThemePreset;->$values()[Lcom/appsgeyser/multiTabApp/utils/ThemePreset;

    move-result-object v0

    sput-object v0, Lcom/appsgeyser/multiTabApp/utils/ThemePreset;->$VALUES:[Lcom/appsgeyser/multiTabApp/utils/ThemePreset;

    .line 79
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/appsgeyser/multiTabApp/utils/ThemePreset;->themeMap:Ljava/util/Map;

    .line 80
    invoke-static {}, Lcom/appsgeyser/multiTabApp/utils/ThemePreset;->values()[Lcom/appsgeyser/multiTabApp/utils/ThemePreset;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    .line 81
    sget-object v5, Lcom/appsgeyser/multiTabApp/utils/ThemePreset;->themeMap:Ljava/util/Map;

    iget-object v6, v4, Lcom/appsgeyser/multiTabApp/utils/ThemePreset;->themeName:Ljava/lang/String;

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 83
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/appsgeyser/multiTabApp/utils/ThemePreset;->themeMapNoActionBar:Ljava/util/Map;

    .line 84
    invoke-static {}, Lcom/appsgeyser/multiTabApp/utils/ThemePreset;->values()[Lcom/appsgeyser/multiTabApp/utils/ThemePreset;

    move-result-object v0

    array-length v1, v0

    :goto_1
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 85
    sget-object v4, Lcom/appsgeyser/multiTabApp/utils/ThemePreset;->themeMapNoActionBar:Ljava/util/Map;

    iget-object v5, v3, Lcom/appsgeyser/multiTabApp/utils/ThemePreset;->themeNoActionBarName:Ljava/lang/String;

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;IIII)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIII)V"
        }
    .end annotation

    .line 64
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 65
    iput p3, p0, Lcom/appsgeyser/multiTabApp/utils/ThemePreset;->themeId:I

    .line 66
    iput p4, p0, Lcom/appsgeyser/multiTabApp/utils/ThemePreset;->themeNoActionBarId:I

    .line 67
    iput-object p5, p0, Lcom/appsgeyser/multiTabApp/utils/ThemePreset;->themeName:Ljava/lang/String;

    .line 68
    iput-object p6, p0, Lcom/appsgeyser/multiTabApp/utils/ThemePreset;->themeNoActionBarName:Ljava/lang/String;

    .line 69
    iput p7, p0, Lcom/appsgeyser/multiTabApp/utils/ThemePreset;->themeTitleId:I

    .line 70
    iput p8, p0, Lcom/appsgeyser/multiTabApp/utils/ThemePreset;->themeColorAccentId:I

    .line 71
    iput p9, p0, Lcom/appsgeyser/multiTabApp/utils/ThemePreset;->themeColorPrimaryId:I

    .line 72
    iput p10, p0, Lcom/appsgeyser/multiTabApp/utils/ThemePreset;->themeColorPrimaryDarkId:I

    return-void
.end method

.method public static findByName(Ljava/lang/String;)Lcom/appsgeyser/multiTabApp/utils/ThemePreset;
    .locals 1

    .line 90
    sget-object v0, Lcom/appsgeyser/multiTabApp/utils/ThemePreset;->themeMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/appsgeyser/multiTabApp/utils/ThemePreset;

    return-object p0
.end method

.method public static findByNoActionBarName(Ljava/lang/String;)Lcom/appsgeyser/multiTabApp/utils/ThemePreset;
    .locals 1

    .line 94
    sget-object v0, Lcom/appsgeyser/multiTabApp/utils/ThemePreset;->themeMapNoActionBar:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/appsgeyser/multiTabApp/utils/ThemePreset;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/appsgeyser/multiTabApp/utils/ThemePreset;
    .locals 1

    .line 9
    const-class v0, Lcom/appsgeyser/multiTabApp/utils/ThemePreset;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/appsgeyser/multiTabApp/utils/ThemePreset;

    return-object p0
.end method

.method public static values()[Lcom/appsgeyser/multiTabApp/utils/ThemePreset;
    .locals 1

    .line 9
    sget-object v0, Lcom/appsgeyser/multiTabApp/utils/ThemePreset;->$VALUES:[Lcom/appsgeyser/multiTabApp/utils/ThemePreset;

    invoke-virtual {v0}, [Lcom/appsgeyser/multiTabApp/utils/ThemePreset;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/appsgeyser/multiTabApp/utils/ThemePreset;

    return-object v0
.end method
