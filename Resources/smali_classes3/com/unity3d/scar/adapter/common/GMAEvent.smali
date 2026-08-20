.class public final enum Lcom/unity3d/scar/adapter/common/GMAEvent;
.super Ljava/lang/Enum;
.source "GMAEvent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/unity3d/scar/adapter/common/GMAEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/unity3d/scar/adapter/common/GMAEvent;

.field public static final enum AD_CLICKED:Lcom/unity3d/scar/adapter/common/GMAEvent;

.field public static final enum AD_CLOSED:Lcom/unity3d/scar/adapter/common/GMAEvent;

.field public static final enum AD_EARNED_REWARD:Lcom/unity3d/scar/adapter/common/GMAEvent;

.field public static final enum AD_LEFT_APPLICATION:Lcom/unity3d/scar/adapter/common/GMAEvent;

.field public static final enum AD_LOADED:Lcom/unity3d/scar/adapter/common/GMAEvent;

.field public static final enum AD_NOT_LOADED_ERROR:Lcom/unity3d/scar/adapter/common/GMAEvent;

.field public static final enum AD_SKIPPED:Lcom/unity3d/scar/adapter/common/GMAEvent;

.field public static final enum AD_STARTED:Lcom/unity3d/scar/adapter/common/GMAEvent;

.field public static final enum ALREADY_INITIALIZED:Lcom/unity3d/scar/adapter/common/GMAEvent;

.field public static final enum FIRST_QUARTILE:Lcom/unity3d/scar/adapter/common/GMAEvent;

.field public static final enum INIT_ERROR:Lcom/unity3d/scar/adapter/common/GMAEvent;

.field public static final enum INIT_SUCCESS:Lcom/unity3d/scar/adapter/common/GMAEvent;

.field public static final enum INTERNAL_LOAD_ERROR:Lcom/unity3d/scar/adapter/common/GMAEvent;

.field public static final enum INTERNAL_SHOW_ERROR:Lcom/unity3d/scar/adapter/common/GMAEvent;

.field public static final enum INTERNAL_SIGNALS_ERROR:Lcom/unity3d/scar/adapter/common/GMAEvent;

.field public static final enum INTERSTITIAL_IMPRESSION_RECORDED:Lcom/unity3d/scar/adapter/common/GMAEvent;

.field public static final enum INTERSTITIAL_SHOW_ERROR:Lcom/unity3d/scar/adapter/common/GMAEvent;

.field public static final enum LAST_QUARTILE:Lcom/unity3d/scar/adapter/common/GMAEvent;

.field public static final enum LOAD_ERROR:Lcom/unity3d/scar/adapter/common/GMAEvent;

.field public static final enum METHOD_ERROR:Lcom/unity3d/scar/adapter/common/GMAEvent;

.field public static final enum MIDPOINT:Lcom/unity3d/scar/adapter/common/GMAEvent;

.field public static final enum NO_AD_ERROR:Lcom/unity3d/scar/adapter/common/GMAEvent;

.field public static final enum QUERY_NOT_FOUND_ERROR:Lcom/unity3d/scar/adapter/common/GMAEvent;

.field public static final enum REWARDED_IMPRESSION_RECORDED:Lcom/unity3d/scar/adapter/common/GMAEvent;

.field public static final enum REWARDED_SHOW_ERROR:Lcom/unity3d/scar/adapter/common/GMAEvent;

.field public static final enum SCAR_NOT_PRESENT:Lcom/unity3d/scar/adapter/common/GMAEvent;

.field public static final enum SCAR_PRESENT:Lcom/unity3d/scar/adapter/common/GMAEvent;

.field public static final enum SCAR_UNSUPPORTED:Lcom/unity3d/scar/adapter/common/GMAEvent;

.field public static final enum SIGNALS:Lcom/unity3d/scar/adapter/common/GMAEvent;

.field public static final enum SIGNALS_ERROR:Lcom/unity3d/scar/adapter/common/GMAEvent;

.field public static final enum THIRD_QUARTILE:Lcom/unity3d/scar/adapter/common/GMAEvent;

.field public static final enum VERSION:Lcom/unity3d/scar/adapter/common/GMAEvent;


# direct methods
.method static constructor <clinit>()V
    .locals 35

    .line 4
    new-instance v1, Lcom/unity3d/scar/adapter/common/GMAEvent;

    move-object v0, v1

    const-string v2, "SCAR_PRESENT"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/unity3d/scar/adapter/common/GMAEvent;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/unity3d/scar/adapter/common/GMAEvent;->SCAR_PRESENT:Lcom/unity3d/scar/adapter/common/GMAEvent;

    .line 5
    new-instance v2, Lcom/unity3d/scar/adapter/common/GMAEvent;

    move-object v1, v2

    const-string v3, "SCAR_NOT_PRESENT"

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Lcom/unity3d/scar/adapter/common/GMAEvent;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/unity3d/scar/adapter/common/GMAEvent;->SCAR_NOT_PRESENT:Lcom/unity3d/scar/adapter/common/GMAEvent;

    .line 6
    new-instance v3, Lcom/unity3d/scar/adapter/common/GMAEvent;

    move-object v2, v3

    const-string v4, "ALREADY_INITIALIZED"

    const/4 v5, 0x2

    invoke-direct {v3, v4, v5}, Lcom/unity3d/scar/adapter/common/GMAEvent;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/unity3d/scar/adapter/common/GMAEvent;->ALREADY_INITIALIZED:Lcom/unity3d/scar/adapter/common/GMAEvent;

    .line 7
    new-instance v4, Lcom/unity3d/scar/adapter/common/GMAEvent;

    move-object v3, v4

    const-string v5, "INIT_SUCCESS"

    const/4 v6, 0x3

    invoke-direct {v4, v5, v6}, Lcom/unity3d/scar/adapter/common/GMAEvent;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/unity3d/scar/adapter/common/GMAEvent;->INIT_SUCCESS:Lcom/unity3d/scar/adapter/common/GMAEvent;

    .line 8
    new-instance v5, Lcom/unity3d/scar/adapter/common/GMAEvent;

    move-object v4, v5

    const-string v6, "INIT_ERROR"

    const/4 v7, 0x4

    invoke-direct {v5, v6, v7}, Lcom/unity3d/scar/adapter/common/GMAEvent;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/unity3d/scar/adapter/common/GMAEvent;->INIT_ERROR:Lcom/unity3d/scar/adapter/common/GMAEvent;

    .line 9
    new-instance v6, Lcom/unity3d/scar/adapter/common/GMAEvent;

    move-object v5, v6

    const-string v7, "VERSION"

    const/4 v8, 0x5

    invoke-direct {v6, v7, v8}, Lcom/unity3d/scar/adapter/common/GMAEvent;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/unity3d/scar/adapter/common/GMAEvent;->VERSION:Lcom/unity3d/scar/adapter/common/GMAEvent;

    .line 10
    new-instance v7, Lcom/unity3d/scar/adapter/common/GMAEvent;

    move-object v6, v7

    const-string v8, "SCAR_UNSUPPORTED"

    const/4 v9, 0x6

    invoke-direct {v7, v8, v9}, Lcom/unity3d/scar/adapter/common/GMAEvent;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/unity3d/scar/adapter/common/GMAEvent;->SCAR_UNSUPPORTED:Lcom/unity3d/scar/adapter/common/GMAEvent;

    .line 11
    new-instance v8, Lcom/unity3d/scar/adapter/common/GMAEvent;

    move-object v7, v8

    const-string v9, "SIGNALS"

    const/4 v10, 0x7

    invoke-direct {v8, v9, v10}, Lcom/unity3d/scar/adapter/common/GMAEvent;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/unity3d/scar/adapter/common/GMAEvent;->SIGNALS:Lcom/unity3d/scar/adapter/common/GMAEvent;

    .line 12
    new-instance v9, Lcom/unity3d/scar/adapter/common/GMAEvent;

    move-object v8, v9

    const-string v10, "SIGNALS_ERROR"

    const/16 v11, 0x8

    invoke-direct {v9, v10, v11}, Lcom/unity3d/scar/adapter/common/GMAEvent;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/unity3d/scar/adapter/common/GMAEvent;->SIGNALS_ERROR:Lcom/unity3d/scar/adapter/common/GMAEvent;

    .line 13
    new-instance v10, Lcom/unity3d/scar/adapter/common/GMAEvent;

    move-object v9, v10

    const-string v11, "INTERNAL_SIGNALS_ERROR"

    const/16 v12, 0x9

    invoke-direct {v10, v11, v12}, Lcom/unity3d/scar/adapter/common/GMAEvent;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/unity3d/scar/adapter/common/GMAEvent;->INTERNAL_SIGNALS_ERROR:Lcom/unity3d/scar/adapter/common/GMAEvent;

    .line 14
    new-instance v11, Lcom/unity3d/scar/adapter/common/GMAEvent;

    move-object v10, v11

    const-string v12, "AD_LOADED"

    const/16 v13, 0xa

    invoke-direct {v11, v12, v13}, Lcom/unity3d/scar/adapter/common/GMAEvent;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/unity3d/scar/adapter/common/GMAEvent;->AD_LOADED:Lcom/unity3d/scar/adapter/common/GMAEvent;

    .line 15
    new-instance v12, Lcom/unity3d/scar/adapter/common/GMAEvent;

    move-object v11, v12

    const-string v13, "INTERSTITIAL_IMPRESSION_RECORDED"

    const/16 v14, 0xb

    invoke-direct {v12, v13, v14}, Lcom/unity3d/scar/adapter/common/GMAEvent;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/unity3d/scar/adapter/common/GMAEvent;->INTERSTITIAL_IMPRESSION_RECORDED:Lcom/unity3d/scar/adapter/common/GMAEvent;

    .line 16
    new-instance v13, Lcom/unity3d/scar/adapter/common/GMAEvent;

    move-object v12, v13

    const-string v14, "REWARDED_IMPRESSION_RECORDED"

    const/16 v15, 0xc

    invoke-direct {v13, v14, v15}, Lcom/unity3d/scar/adapter/common/GMAEvent;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/unity3d/scar/adapter/common/GMAEvent;->REWARDED_IMPRESSION_RECORDED:Lcom/unity3d/scar/adapter/common/GMAEvent;

    .line 17
    new-instance v14, Lcom/unity3d/scar/adapter/common/GMAEvent;

    move-object v13, v14

    const-string v15, "INTERNAL_LOAD_ERROR"

    move-object/from16 v32, v0

    const/16 v0, 0xd

    invoke-direct {v14, v15, v0}, Lcom/unity3d/scar/adapter/common/GMAEvent;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/unity3d/scar/adapter/common/GMAEvent;->INTERNAL_LOAD_ERROR:Lcom/unity3d/scar/adapter/common/GMAEvent;

    .line 18
    new-instance v0, Lcom/unity3d/scar/adapter/common/GMAEvent;

    move-object v14, v0

    const-string v15, "QUERY_NOT_FOUND_ERROR"

    move-object/from16 v33, v1

    const/16 v1, 0xe

    invoke-direct {v0, v15, v1}, Lcom/unity3d/scar/adapter/common/GMAEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/scar/adapter/common/GMAEvent;->QUERY_NOT_FOUND_ERROR:Lcom/unity3d/scar/adapter/common/GMAEvent;

    .line 19
    new-instance v0, Lcom/unity3d/scar/adapter/common/GMAEvent;

    move-object v15, v0

    const-string v1, "LOAD_ERROR"

    move-object/from16 v34, v2

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/unity3d/scar/adapter/common/GMAEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/scar/adapter/common/GMAEvent;->LOAD_ERROR:Lcom/unity3d/scar/adapter/common/GMAEvent;

    .line 20
    new-instance v0, Lcom/unity3d/scar/adapter/common/GMAEvent;

    move-object/from16 v16, v0

    const-string v1, "NO_AD_ERROR"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/unity3d/scar/adapter/common/GMAEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/scar/adapter/common/GMAEvent;->NO_AD_ERROR:Lcom/unity3d/scar/adapter/common/GMAEvent;

    .line 21
    new-instance v0, Lcom/unity3d/scar/adapter/common/GMAEvent;

    move-object/from16 v17, v0

    const-string v1, "AD_STARTED"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/unity3d/scar/adapter/common/GMAEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/scar/adapter/common/GMAEvent;->AD_STARTED:Lcom/unity3d/scar/adapter/common/GMAEvent;

    .line 22
    new-instance v0, Lcom/unity3d/scar/adapter/common/GMAEvent;

    move-object/from16 v18, v0

    const-string v1, "INTERNAL_SHOW_ERROR"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lcom/unity3d/scar/adapter/common/GMAEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/scar/adapter/common/GMAEvent;->INTERNAL_SHOW_ERROR:Lcom/unity3d/scar/adapter/common/GMAEvent;

    .line 23
    new-instance v0, Lcom/unity3d/scar/adapter/common/GMAEvent;

    move-object/from16 v19, v0

    const-string v1, "AD_NOT_LOADED_ERROR"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lcom/unity3d/scar/adapter/common/GMAEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/scar/adapter/common/GMAEvent;->AD_NOT_LOADED_ERROR:Lcom/unity3d/scar/adapter/common/GMAEvent;

    .line 24
    new-instance v0, Lcom/unity3d/scar/adapter/common/GMAEvent;

    move-object/from16 v20, v0

    const-string v1, "REWARDED_SHOW_ERROR"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lcom/unity3d/scar/adapter/common/GMAEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/scar/adapter/common/GMAEvent;->REWARDED_SHOW_ERROR:Lcom/unity3d/scar/adapter/common/GMAEvent;

    .line 25
    new-instance v0, Lcom/unity3d/scar/adapter/common/GMAEvent;

    move-object/from16 v21, v0

    const-string v1, "INTERSTITIAL_SHOW_ERROR"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2}, Lcom/unity3d/scar/adapter/common/GMAEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/scar/adapter/common/GMAEvent;->INTERSTITIAL_SHOW_ERROR:Lcom/unity3d/scar/adapter/common/GMAEvent;

    .line 26
    new-instance v0, Lcom/unity3d/scar/adapter/common/GMAEvent;

    move-object/from16 v22, v0

    const-string v1, "FIRST_QUARTILE"

    const/16 v2, 0x16

    invoke-direct {v0, v1, v2}, Lcom/unity3d/scar/adapter/common/GMAEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/scar/adapter/common/GMAEvent;->FIRST_QUARTILE:Lcom/unity3d/scar/adapter/common/GMAEvent;

    .line 27
    new-instance v0, Lcom/unity3d/scar/adapter/common/GMAEvent;

    move-object/from16 v23, v0

    const-string v1, "MIDPOINT"

    const/16 v2, 0x17

    invoke-direct {v0, v1, v2}, Lcom/unity3d/scar/adapter/common/GMAEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/scar/adapter/common/GMAEvent;->MIDPOINT:Lcom/unity3d/scar/adapter/common/GMAEvent;

    .line 28
    new-instance v0, Lcom/unity3d/scar/adapter/common/GMAEvent;

    move-object/from16 v24, v0

    const-string v1, "THIRD_QUARTILE"

    const/16 v2, 0x18

    invoke-direct {v0, v1, v2}, Lcom/unity3d/scar/adapter/common/GMAEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/scar/adapter/common/GMAEvent;->THIRD_QUARTILE:Lcom/unity3d/scar/adapter/common/GMAEvent;

    .line 29
    new-instance v0, Lcom/unity3d/scar/adapter/common/GMAEvent;

    move-object/from16 v25, v0

    const-string v1, "LAST_QUARTILE"

    const/16 v2, 0x19

    invoke-direct {v0, v1, v2}, Lcom/unity3d/scar/adapter/common/GMAEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/scar/adapter/common/GMAEvent;->LAST_QUARTILE:Lcom/unity3d/scar/adapter/common/GMAEvent;

    .line 30
    new-instance v0, Lcom/unity3d/scar/adapter/common/GMAEvent;

    move-object/from16 v26, v0

    const-string v1, "AD_EARNED_REWARD"

    const/16 v2, 0x1a

    invoke-direct {v0, v1, v2}, Lcom/unity3d/scar/adapter/common/GMAEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/scar/adapter/common/GMAEvent;->AD_EARNED_REWARD:Lcom/unity3d/scar/adapter/common/GMAEvent;

    .line 31
    new-instance v0, Lcom/unity3d/scar/adapter/common/GMAEvent;

    move-object/from16 v27, v0

    const-string v1, "AD_CLICKED"

    const/16 v2, 0x1b

    invoke-direct {v0, v1, v2}, Lcom/unity3d/scar/adapter/common/GMAEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/scar/adapter/common/GMAEvent;->AD_CLICKED:Lcom/unity3d/scar/adapter/common/GMAEvent;

    .line 32
    new-instance v0, Lcom/unity3d/scar/adapter/common/GMAEvent;

    move-object/from16 v28, v0

    const-string v1, "AD_SKIPPED"

    const/16 v2, 0x1c

    invoke-direct {v0, v1, v2}, Lcom/unity3d/scar/adapter/common/GMAEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/scar/adapter/common/GMAEvent;->AD_SKIPPED:Lcom/unity3d/scar/adapter/common/GMAEvent;

    .line 33
    new-instance v0, Lcom/unity3d/scar/adapter/common/GMAEvent;

    move-object/from16 v29, v0

    const-string v1, "AD_LEFT_APPLICATION"

    const/16 v2, 0x1d

    invoke-direct {v0, v1, v2}, Lcom/unity3d/scar/adapter/common/GMAEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/scar/adapter/common/GMAEvent;->AD_LEFT_APPLICATION:Lcom/unity3d/scar/adapter/common/GMAEvent;

    .line 34
    new-instance v0, Lcom/unity3d/scar/adapter/common/GMAEvent;

    move-object/from16 v30, v0

    const-string v1, "AD_CLOSED"

    const/16 v2, 0x1e

    invoke-direct {v0, v1, v2}, Lcom/unity3d/scar/adapter/common/GMAEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/scar/adapter/common/GMAEvent;->AD_CLOSED:Lcom/unity3d/scar/adapter/common/GMAEvent;

    .line 35
    new-instance v0, Lcom/unity3d/scar/adapter/common/GMAEvent;

    move-object/from16 v31, v0

    const-string v1, "METHOD_ERROR"

    const/16 v2, 0x1f

    invoke-direct {v0, v1, v2}, Lcom/unity3d/scar/adapter/common/GMAEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/scar/adapter/common/GMAEvent;->METHOD_ERROR:Lcom/unity3d/scar/adapter/common/GMAEvent;

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    .line 3
    filled-new-array/range {v0 .. v31}, [Lcom/unity3d/scar/adapter/common/GMAEvent;

    move-result-object v0

    sput-object v0, Lcom/unity3d/scar/adapter/common/GMAEvent;->$VALUES:[Lcom/unity3d/scar/adapter/common/GMAEvent;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/unity3d/scar/adapter/common/GMAEvent;
    .locals 1

    .line 3
    const-class v0, Lcom/unity3d/scar/adapter/common/GMAEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/unity3d/scar/adapter/common/GMAEvent;

    return-object p0
.end method

.method public static values()[Lcom/unity3d/scar/adapter/common/GMAEvent;
    .locals 1

    .line 3
    sget-object v0, Lcom/unity3d/scar/adapter/common/GMAEvent;->$VALUES:[Lcom/unity3d/scar/adapter/common/GMAEvent;

    invoke-virtual {v0}, [Lcom/unity3d/scar/adapter/common/GMAEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/unity3d/scar/adapter/common/GMAEvent;

    return-object v0
.end method
