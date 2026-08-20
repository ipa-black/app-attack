.class public final enum Lcom/appsgeyser/sdk/server/StatController$AdsType;
.super Ljava/lang/Enum;
.source "StatController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsgeyser/sdk/server/StatController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AdsType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/appsgeyser/sdk/server/StatController$AdsType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/appsgeyser/sdk/server/StatController$AdsType;

.field public static final enum FULLSCREEN:Lcom/appsgeyser/sdk/server/StatController$AdsType;

.field public static final enum NATIVE:Lcom/appsgeyser/sdk/server/StatController$AdsType;

.field public static final enum REWARDED:Lcom/appsgeyser/sdk/server/StatController$AdsType;


# direct methods
.method private static synthetic $values()[Lcom/appsgeyser/sdk/server/StatController$AdsType;
    .locals 3

    .line 157
    sget-object v0, Lcom/appsgeyser/sdk/server/StatController$AdsType;->NATIVE:Lcom/appsgeyser/sdk/server/StatController$AdsType;

    sget-object v1, Lcom/appsgeyser/sdk/server/StatController$AdsType;->REWARDED:Lcom/appsgeyser/sdk/server/StatController$AdsType;

    sget-object v2, Lcom/appsgeyser/sdk/server/StatController$AdsType;->FULLSCREEN:Lcom/appsgeyser/sdk/server/StatController$AdsType;

    filled-new-array {v0, v1, v2}, [Lcom/appsgeyser/sdk/server/StatController$AdsType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 158
    new-instance v0, Lcom/appsgeyser/sdk/server/StatController$AdsType;

    const-string v1, "NATIVE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/appsgeyser/sdk/server/StatController$AdsType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appsgeyser/sdk/server/StatController$AdsType;->NATIVE:Lcom/appsgeyser/sdk/server/StatController$AdsType;

    new-instance v0, Lcom/appsgeyser/sdk/server/StatController$AdsType;

    const-string v1, "REWARDED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/appsgeyser/sdk/server/StatController$AdsType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appsgeyser/sdk/server/StatController$AdsType;->REWARDED:Lcom/appsgeyser/sdk/server/StatController$AdsType;

    new-instance v0, Lcom/appsgeyser/sdk/server/StatController$AdsType;

    const-string v1, "FULLSCREEN"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/appsgeyser/sdk/server/StatController$AdsType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appsgeyser/sdk/server/StatController$AdsType;->FULLSCREEN:Lcom/appsgeyser/sdk/server/StatController$AdsType;

    .line 157
    invoke-static {}, Lcom/appsgeyser/sdk/server/StatController$AdsType;->$values()[Lcom/appsgeyser/sdk/server/StatController$AdsType;

    move-result-object v0

    sput-object v0, Lcom/appsgeyser/sdk/server/StatController$AdsType;->$VALUES:[Lcom/appsgeyser/sdk/server/StatController$AdsType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 157
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/appsgeyser/sdk/server/StatController$AdsType;
    .locals 1

    .line 157
    const-class v0, Lcom/appsgeyser/sdk/server/StatController$AdsType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/appsgeyser/sdk/server/StatController$AdsType;

    return-object p0
.end method

.method public static values()[Lcom/appsgeyser/sdk/server/StatController$AdsType;
    .locals 1

    .line 157
    sget-object v0, Lcom/appsgeyser/sdk/server/StatController$AdsType;->$VALUES:[Lcom/appsgeyser/sdk/server/StatController$AdsType;

    invoke-virtual {v0}, [Lcom/appsgeyser/sdk/server/StatController$AdsType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/appsgeyser/sdk/server/StatController$AdsType;

    return-object v0
.end method
