.class public final enum Lcom/bytedance/adsdk/ugeno/core/ABk;
.super Ljava/lang/Enum;
.source "UGenEventEnum.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/bytedance/adsdk/ugeno/core/ABk;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ABk:Lcom/bytedance/adsdk/ugeno/core/ABk;

.field public static final enum CJ:Lcom/bytedance/adsdk/ugeno/core/ABk;

.field public static final enum Gm:Lcom/bytedance/adsdk/ugeno/core/ABk;

.field public static final enum HzH:Lcom/bytedance/adsdk/ugeno/core/ABk;

.field public static final enum Qhi:Lcom/bytedance/adsdk/ugeno/core/ABk;

.field public static final enum ROR:Lcom/bytedance/adsdk/ugeno/core/ABk;

.field public static final enum Sf:Lcom/bytedance/adsdk/ugeno/core/ABk;

.field public static final enum Tgh:Lcom/bytedance/adsdk/ugeno/core/ABk;

.field public static final enum WAv:Lcom/bytedance/adsdk/ugeno/core/ABk;

.field public static final enum ac:Lcom/bytedance/adsdk/ugeno/core/ABk;

.field public static final enum cJ:Lcom/bytedance/adsdk/ugeno/core/ABk;

.field public static final enum fl:Lcom/bytedance/adsdk/ugeno/core/ABk;

.field public static final enum hm:Lcom/bytedance/adsdk/ugeno/core/ABk;

.field public static final enum hpZ:Lcom/bytedance/adsdk/ugeno/core/ABk;

.field public static final enum iMK:Lcom/bytedance/adsdk/ugeno/core/ABk;

.field public static final enum kYc:Lcom/bytedance/adsdk/ugeno/core/ABk;

.field public static final enum pA:Lcom/bytedance/adsdk/ugeno/core/ABk;

.field private static final synthetic qMt:[Lcom/bytedance/adsdk/ugeno/core/ABk;

.field public static final enum zc:Lcom/bytedance/adsdk/ugeno/core/ABk;


# instance fields
.field private MQ:I

.field private tP:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 22

    .line 15
    new-instance v1, Lcom/bytedance/adsdk/ugeno/core/ABk;

    move-object v0, v1

    const-string v2, "UNKNOWN_EVENT"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v2, v3}, Lcom/bytedance/adsdk/ugeno/core/ABk;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v1, Lcom/bytedance/adsdk/ugeno/core/ABk;->Qhi:Lcom/bytedance/adsdk/ugeno/core/ABk;

    .line 19
    new-instance v2, Lcom/bytedance/adsdk/ugeno/core/ABk;

    move-object v1, v2

    const/4 v3, 0x1

    const-string v4, "onTap"

    const-string v5, "TAP_EVENT"

    invoke-direct {v2, v5, v3, v4, v3}, Lcom/bytedance/adsdk/ugeno/core/ABk;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v2, Lcom/bytedance/adsdk/ugeno/core/ABk;->cJ:Lcom/bytedance/adsdk/ugeno/core/ABk;

    .line 23
    new-instance v3, Lcom/bytedance/adsdk/ugeno/core/ABk;

    move-object v2, v3

    const/4 v4, 0x2

    const-string v5, "onLongTap"

    const-string v6, "LONG_TAP_EVENT"

    invoke-direct {v3, v6, v4, v5, v4}, Lcom/bytedance/adsdk/ugeno/core/ABk;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v3, Lcom/bytedance/adsdk/ugeno/core/ABk;->ac:Lcom/bytedance/adsdk/ugeno/core/ABk;

    .line 30
    new-instance v4, Lcom/bytedance/adsdk/ugeno/core/ABk;

    move-object v3, v4

    const/4 v5, 0x3

    const-string v6, "onShake"

    const-string v7, "SHAKE_EVENT"

    invoke-direct {v4, v7, v5, v6, v5}, Lcom/bytedance/adsdk/ugeno/core/ABk;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v4, Lcom/bytedance/adsdk/ugeno/core/ABk;->CJ:Lcom/bytedance/adsdk/ugeno/core/ABk;

    .line 36
    new-instance v5, Lcom/bytedance/adsdk/ugeno/core/ABk;

    move-object v4, v5

    const/4 v6, 0x4

    const-string v7, "onSlide"

    const-string v8, "SLIDE_EVENT"

    invoke-direct {v5, v8, v6, v7, v6}, Lcom/bytedance/adsdk/ugeno/core/ABk;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v5, Lcom/bytedance/adsdk/ugeno/core/ABk;->fl:Lcom/bytedance/adsdk/ugeno/core/ABk;

    .line 42
    new-instance v6, Lcom/bytedance/adsdk/ugeno/core/ABk;

    move-object v5, v6

    const/4 v7, 0x5

    const-string v8, "onExposure"

    const-string v9, "EXPOSURE_EVENT"

    invoke-direct {v6, v9, v7, v8, v7}, Lcom/bytedance/adsdk/ugeno/core/ABk;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v6, Lcom/bytedance/adsdk/ugeno/core/ABk;->Tgh:Lcom/bytedance/adsdk/ugeno/core/ABk;

    .line 48
    new-instance v7, Lcom/bytedance/adsdk/ugeno/core/ABk;

    move-object v6, v7

    const/4 v8, 0x6

    const-string v9, "onScroll"

    const-string v10, "SCROLL_EVENT"

    invoke-direct {v7, v10, v8, v9, v8}, Lcom/bytedance/adsdk/ugeno/core/ABk;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v7, Lcom/bytedance/adsdk/ugeno/core/ABk;->ROR:Lcom/bytedance/adsdk/ugeno/core/ABk;

    .line 53
    new-instance v8, Lcom/bytedance/adsdk/ugeno/core/ABk;

    move-object v7, v8

    const/4 v9, 0x7

    const-string v10, "onPullToRefresh"

    const-string v11, "PULL_TO_REFRESH_EVENT"

    invoke-direct {v8, v11, v9, v10, v9}, Lcom/bytedance/adsdk/ugeno/core/ABk;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v8, Lcom/bytedance/adsdk/ugeno/core/ABk;->Sf:Lcom/bytedance/adsdk/ugeno/core/ABk;

    .line 57
    new-instance v9, Lcom/bytedance/adsdk/ugeno/core/ABk;

    move-object v8, v9

    const/16 v10, 0x8

    const-string v11, "onLoadMore"

    const-string v12, "LOAD_MORE_EVENT"

    invoke-direct {v9, v12, v10, v11, v10}, Lcom/bytedance/adsdk/ugeno/core/ABk;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v9, Lcom/bytedance/adsdk/ugeno/core/ABk;->hm:Lcom/bytedance/adsdk/ugeno/core/ABk;

    .line 62
    new-instance v10, Lcom/bytedance/adsdk/ugeno/core/ABk;

    move-object v9, v10

    const/16 v11, 0x9

    const-string v12, "onTimer"

    const-string v13, "TIMER"

    invoke-direct {v10, v13, v11, v12, v11}, Lcom/bytedance/adsdk/ugeno/core/ABk;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v10, Lcom/bytedance/adsdk/ugeno/core/ABk;->WAv:Lcom/bytedance/adsdk/ugeno/core/ABk;

    .line 67
    new-instance v11, Lcom/bytedance/adsdk/ugeno/core/ABk;

    move-object v10, v11

    const/16 v12, 0xa

    const-string v13, "onDelay"

    const-string v14, "DELAY"

    invoke-direct {v11, v14, v12, v13, v12}, Lcom/bytedance/adsdk/ugeno/core/ABk;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v11, Lcom/bytedance/adsdk/ugeno/core/ABk;->Gm:Lcom/bytedance/adsdk/ugeno/core/ABk;

    .line 70
    new-instance v12, Lcom/bytedance/adsdk/ugeno/core/ABk;

    move-object v11, v12

    const/16 v13, 0xb

    const-string v14, "onAnimation"

    const-string v15, "ANIMATION"

    invoke-direct {v12, v15, v13, v14, v13}, Lcom/bytedance/adsdk/ugeno/core/ABk;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v12, Lcom/bytedance/adsdk/ugeno/core/ABk;->zc:Lcom/bytedance/adsdk/ugeno/core/ABk;

    .line 74
    new-instance v13, Lcom/bytedance/adsdk/ugeno/core/ABk;

    move-object v12, v13

    const/16 v14, 0xc

    const-string v15, "onVideoProgress"

    move-object/from16 v18, v0

    const-string v0, "VIDEO_PROGRESS"

    invoke-direct {v13, v0, v14, v15, v14}, Lcom/bytedance/adsdk/ugeno/core/ABk;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v13, Lcom/bytedance/adsdk/ugeno/core/ABk;->ABk:Lcom/bytedance/adsdk/ugeno/core/ABk;

    .line 79
    new-instance v0, Lcom/bytedance/adsdk/ugeno/core/ABk;

    move-object v13, v0

    const/16 v14, 0xd

    const-string v15, "onVideoPause"

    move-object/from16 v19, v1

    const-string v1, "VIDEO_PAUSE"

    invoke-direct {v0, v1, v14, v15, v14}, Lcom/bytedance/adsdk/ugeno/core/ABk;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/bytedance/adsdk/ugeno/core/ABk;->iMK:Lcom/bytedance/adsdk/ugeno/core/ABk;

    .line 84
    new-instance v0, Lcom/bytedance/adsdk/ugeno/core/ABk;

    move-object v14, v0

    const/16 v1, 0xe

    const-string v15, "onVideoResume"

    move-object/from16 v20, v2

    const-string v2, "VIDEO_RESUME"

    invoke-direct {v0, v2, v1, v15, v1}, Lcom/bytedance/adsdk/ugeno/core/ABk;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/bytedance/adsdk/ugeno/core/ABk;->pA:Lcom/bytedance/adsdk/ugeno/core/ABk;

    .line 89
    new-instance v0, Lcom/bytedance/adsdk/ugeno/core/ABk;

    move-object v15, v0

    const/16 v1, 0xf

    const-string v2, "onVideoFinish"

    move-object/from16 v21, v3

    const-string v3, "VIDEO_FINISH"

    invoke-direct {v0, v3, v1, v2, v1}, Lcom/bytedance/adsdk/ugeno/core/ABk;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/bytedance/adsdk/ugeno/core/ABk;->hpZ:Lcom/bytedance/adsdk/ugeno/core/ABk;

    .line 94
    new-instance v0, Lcom/bytedance/adsdk/ugeno/core/ABk;

    move-object/from16 v16, v0

    const/16 v1, 0x10

    const-string v2, "onVideoPlay"

    const-string v3, "VIDEO_PLAY"

    invoke-direct {v0, v3, v1, v2, v1}, Lcom/bytedance/adsdk/ugeno/core/ABk;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/bytedance/adsdk/ugeno/core/ABk;->HzH:Lcom/bytedance/adsdk/ugeno/core/ABk;

    .line 96
    new-instance v0, Lcom/bytedance/adsdk/ugeno/core/ABk;

    move-object/from16 v17, v0

    const/16 v1, 0x11

    const-string v2, "onDown"

    const-string v3, "DOWN_EVENT"

    invoke-direct {v0, v3, v1, v2, v1}, Lcom/bytedance/adsdk/ugeno/core/ABk;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/bytedance/adsdk/ugeno/core/ABk;->kYc:Lcom/bytedance/adsdk/ugeno/core/ABk;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    .line 11
    filled-new-array/range {v0 .. v17}, [Lcom/bytedance/adsdk/ugeno/core/ABk;

    move-result-object v0

    sput-object v0, Lcom/bytedance/adsdk/ugeno/core/ABk;->qMt:[Lcom/bytedance/adsdk/ugeno/core/ABk;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 101
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 102
    iput-object p3, p0, Lcom/bytedance/adsdk/ugeno/core/ABk;->tP:Ljava/lang/String;

    .line 103
    iput p4, p0, Lcom/bytedance/adsdk/ugeno/core/ABk;->MQ:I

    return-void
.end method

.method public static Qhi(Ljava/lang/String;)Lcom/bytedance/adsdk/ugeno/core/ABk;
    .locals 5

    .line 115
    invoke-static {}, Lcom/bytedance/adsdk/ugeno/core/ABk;->values()[Lcom/bytedance/adsdk/ugeno/core/ABk;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 116
    iget-object v4, v3, Lcom/bytedance/adsdk/ugeno/core/ABk;->tP:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 120
    :cond_1
    sget-object p0, Lcom/bytedance/adsdk/ugeno/core/ABk;->Qhi:Lcom/bytedance/adsdk/ugeno/core/ABk;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bytedance/adsdk/ugeno/core/ABk;
    .locals 1

    .line 11
    const-class v0, Lcom/bytedance/adsdk/ugeno/core/ABk;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/bytedance/adsdk/ugeno/core/ABk;

    return-object p0
.end method

.method public static values()[Lcom/bytedance/adsdk/ugeno/core/ABk;
    .locals 1

    .line 11
    sget-object v0, Lcom/bytedance/adsdk/ugeno/core/ABk;->qMt:[Lcom/bytedance/adsdk/ugeno/core/ABk;

    invoke-virtual {v0}, [Lcom/bytedance/adsdk/ugeno/core/ABk;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bytedance/adsdk/ugeno/core/ABk;

    return-object v0
.end method


# virtual methods
.method public Qhi()I
    .locals 1

    .line 111
    iget v0, p0, Lcom/bytedance/adsdk/ugeno/core/ABk;->MQ:I

    return v0
.end method
