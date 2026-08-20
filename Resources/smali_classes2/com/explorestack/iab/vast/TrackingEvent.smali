.class public final enum Lcom/explorestack/iab/vast/TrackingEvent;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/explorestack/iab/vast/TrackingEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/explorestack/iab/vast/TrackingEvent;

.field public static final enum acceptInvitation:Lcom/explorestack/iab/vast/TrackingEvent;

.field public static final enum close:Lcom/explorestack/iab/vast/TrackingEvent;

.field public static final enum collapse:Lcom/explorestack/iab/vast/TrackingEvent;

.field public static final enum complete:Lcom/explorestack/iab/vast/TrackingEvent;

.field public static final enum creativeView:Lcom/explorestack/iab/vast/TrackingEvent;

.field public static final enum expand:Lcom/explorestack/iab/vast/TrackingEvent;

.field public static final enum firstQuartile:Lcom/explorestack/iab/vast/TrackingEvent;

.field public static final enum fullscreen:Lcom/explorestack/iab/vast/TrackingEvent;

.field public static final enum midpoint:Lcom/explorestack/iab/vast/TrackingEvent;

.field public static final enum mute:Lcom/explorestack/iab/vast/TrackingEvent;

.field public static final enum pause:Lcom/explorestack/iab/vast/TrackingEvent;

.field public static final enum resume:Lcom/explorestack/iab/vast/TrackingEvent;

.field public static final enum rewind:Lcom/explorestack/iab/vast/TrackingEvent;

.field public static final enum skip:Lcom/explorestack/iab/vast/TrackingEvent;

.field public static final enum start:Lcom/explorestack/iab/vast/TrackingEvent;

.field public static final enum thirdQuartile:Lcom/explorestack/iab/vast/TrackingEvent;

.field public static final enum unmute:Lcom/explorestack/iab/vast/TrackingEvent;


# direct methods
.method public static constructor <clinit>()V
    .locals 20

    new-instance v1, Lcom/explorestack/iab/vast/TrackingEvent;

    move-object v0, v1

    const-string v2, "creativeView"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/explorestack/iab/vast/TrackingEvent;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/explorestack/iab/vast/TrackingEvent;->creativeView:Lcom/explorestack/iab/vast/TrackingEvent;

    new-instance v2, Lcom/explorestack/iab/vast/TrackingEvent;

    move-object v1, v2

    const-string v3, "start"

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Lcom/explorestack/iab/vast/TrackingEvent;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/explorestack/iab/vast/TrackingEvent;->start:Lcom/explorestack/iab/vast/TrackingEvent;

    new-instance v3, Lcom/explorestack/iab/vast/TrackingEvent;

    move-object v2, v3

    const-string v4, "firstQuartile"

    const/4 v5, 0x2

    invoke-direct {v3, v4, v5}, Lcom/explorestack/iab/vast/TrackingEvent;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/explorestack/iab/vast/TrackingEvent;->firstQuartile:Lcom/explorestack/iab/vast/TrackingEvent;

    new-instance v4, Lcom/explorestack/iab/vast/TrackingEvent;

    move-object v3, v4

    const-string v5, "midpoint"

    const/4 v6, 0x3

    invoke-direct {v4, v5, v6}, Lcom/explorestack/iab/vast/TrackingEvent;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/explorestack/iab/vast/TrackingEvent;->midpoint:Lcom/explorestack/iab/vast/TrackingEvent;

    new-instance v5, Lcom/explorestack/iab/vast/TrackingEvent;

    move-object v4, v5

    const-string v6, "thirdQuartile"

    const/4 v7, 0x4

    invoke-direct {v5, v6, v7}, Lcom/explorestack/iab/vast/TrackingEvent;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/explorestack/iab/vast/TrackingEvent;->thirdQuartile:Lcom/explorestack/iab/vast/TrackingEvent;

    new-instance v6, Lcom/explorestack/iab/vast/TrackingEvent;

    move-object v5, v6

    const-string v7, "complete"

    const/4 v8, 0x5

    invoke-direct {v6, v7, v8}, Lcom/explorestack/iab/vast/TrackingEvent;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/explorestack/iab/vast/TrackingEvent;->complete:Lcom/explorestack/iab/vast/TrackingEvent;

    new-instance v7, Lcom/explorestack/iab/vast/TrackingEvent;

    move-object v6, v7

    const-string v8, "mute"

    const/4 v9, 0x6

    invoke-direct {v7, v8, v9}, Lcom/explorestack/iab/vast/TrackingEvent;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/explorestack/iab/vast/TrackingEvent;->mute:Lcom/explorestack/iab/vast/TrackingEvent;

    new-instance v8, Lcom/explorestack/iab/vast/TrackingEvent;

    move-object v7, v8

    const-string v9, "unmute"

    const/4 v10, 0x7

    invoke-direct {v8, v9, v10}, Lcom/explorestack/iab/vast/TrackingEvent;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/explorestack/iab/vast/TrackingEvent;->unmute:Lcom/explorestack/iab/vast/TrackingEvent;

    new-instance v9, Lcom/explorestack/iab/vast/TrackingEvent;

    move-object v8, v9

    const-string v10, "skip"

    const/16 v11, 0x8

    invoke-direct {v9, v10, v11}, Lcom/explorestack/iab/vast/TrackingEvent;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/explorestack/iab/vast/TrackingEvent;->skip:Lcom/explorestack/iab/vast/TrackingEvent;

    new-instance v10, Lcom/explorestack/iab/vast/TrackingEvent;

    move-object v9, v10

    const-string v11, "pause"

    const/16 v12, 0x9

    invoke-direct {v10, v11, v12}, Lcom/explorestack/iab/vast/TrackingEvent;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/explorestack/iab/vast/TrackingEvent;->pause:Lcom/explorestack/iab/vast/TrackingEvent;

    new-instance v11, Lcom/explorestack/iab/vast/TrackingEvent;

    move-object v10, v11

    const-string v12, "rewind"

    const/16 v13, 0xa

    invoke-direct {v11, v12, v13}, Lcom/explorestack/iab/vast/TrackingEvent;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/explorestack/iab/vast/TrackingEvent;->rewind:Lcom/explorestack/iab/vast/TrackingEvent;

    new-instance v12, Lcom/explorestack/iab/vast/TrackingEvent;

    move-object v11, v12

    const-string v13, "resume"

    const/16 v14, 0xb

    invoke-direct {v12, v13, v14}, Lcom/explorestack/iab/vast/TrackingEvent;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/explorestack/iab/vast/TrackingEvent;->resume:Lcom/explorestack/iab/vast/TrackingEvent;

    new-instance v13, Lcom/explorestack/iab/vast/TrackingEvent;

    move-object v12, v13

    const-string v14, "fullscreen"

    const/16 v15, 0xc

    invoke-direct {v13, v14, v15}, Lcom/explorestack/iab/vast/TrackingEvent;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/explorestack/iab/vast/TrackingEvent;->fullscreen:Lcom/explorestack/iab/vast/TrackingEvent;

    new-instance v14, Lcom/explorestack/iab/vast/TrackingEvent;

    move-object v13, v14

    const-string v15, "expand"

    move-object/from16 v17, v0

    const/16 v0, 0xd

    invoke-direct {v14, v15, v0}, Lcom/explorestack/iab/vast/TrackingEvent;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/explorestack/iab/vast/TrackingEvent;->expand:Lcom/explorestack/iab/vast/TrackingEvent;

    new-instance v0, Lcom/explorestack/iab/vast/TrackingEvent;

    move-object v14, v0

    const-string v15, "collapse"

    move-object/from16 v18, v1

    const/16 v1, 0xe

    invoke-direct {v0, v15, v1}, Lcom/explorestack/iab/vast/TrackingEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/explorestack/iab/vast/TrackingEvent;->collapse:Lcom/explorestack/iab/vast/TrackingEvent;

    new-instance v0, Lcom/explorestack/iab/vast/TrackingEvent;

    move-object v15, v0

    const-string v1, "acceptInvitation"

    move-object/from16 v19, v2

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/explorestack/iab/vast/TrackingEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/explorestack/iab/vast/TrackingEvent;->acceptInvitation:Lcom/explorestack/iab/vast/TrackingEvent;

    new-instance v0, Lcom/explorestack/iab/vast/TrackingEvent;

    move-object/from16 v16, v0

    const-string v1, "close"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/explorestack/iab/vast/TrackingEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/explorestack/iab/vast/TrackingEvent;->close:Lcom/explorestack/iab/vast/TrackingEvent;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    filled-new-array/range {v0 .. v16}, [Lcom/explorestack/iab/vast/TrackingEvent;

    move-result-object v0

    sput-object v0, Lcom/explorestack/iab/vast/TrackingEvent;->$VALUES:[Lcom/explorestack/iab/vast/TrackingEvent;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/explorestack/iab/vast/TrackingEvent;
    .locals 1

    const-class v0, Lcom/explorestack/iab/vast/TrackingEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/explorestack/iab/vast/TrackingEvent;

    return-object p0
.end method

.method public static values()[Lcom/explorestack/iab/vast/TrackingEvent;
    .locals 1

    sget-object v0, Lcom/explorestack/iab/vast/TrackingEvent;->$VALUES:[Lcom/explorestack/iab/vast/TrackingEvent;

    invoke-virtual {v0}, [Lcom/explorestack/iab/vast/TrackingEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/explorestack/iab/vast/TrackingEvent;

    return-object v0
.end method
