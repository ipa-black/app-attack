.class public final enum Lcom/appsgeyser/sdk/ads/behavior/BehaviorFactory$ClickBehavior;
.super Ljava/lang/Enum;
.source "BehaviorFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsgeyser/sdk/ads/behavior/BehaviorFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ClickBehavior"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/appsgeyser/sdk/ads/behavior/BehaviorFactory$ClickBehavior;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/appsgeyser/sdk/ads/behavior/BehaviorFactory$ClickBehavior;

.field public static final enum HIDE:Lcom/appsgeyser/sdk/ads/behavior/BehaviorFactory$ClickBehavior;

.field public static final enum REMAIN_ON_SCREEN:Lcom/appsgeyser/sdk/ads/behavior/BehaviorFactory$ClickBehavior;


# direct methods
.method private static synthetic $values()[Lcom/appsgeyser/sdk/ads/behavior/BehaviorFactory$ClickBehavior;
    .locals 2

    .line 14
    sget-object v0, Lcom/appsgeyser/sdk/ads/behavior/BehaviorFactory$ClickBehavior;->HIDE:Lcom/appsgeyser/sdk/ads/behavior/BehaviorFactory$ClickBehavior;

    sget-object v1, Lcom/appsgeyser/sdk/ads/behavior/BehaviorFactory$ClickBehavior;->REMAIN_ON_SCREEN:Lcom/appsgeyser/sdk/ads/behavior/BehaviorFactory$ClickBehavior;

    filled-new-array {v0, v1}, [Lcom/appsgeyser/sdk/ads/behavior/BehaviorFactory$ClickBehavior;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 15
    new-instance v0, Lcom/appsgeyser/sdk/ads/behavior/BehaviorFactory$ClickBehavior;

    const-string v1, "HIDE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/appsgeyser/sdk/ads/behavior/BehaviorFactory$ClickBehavior;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appsgeyser/sdk/ads/behavior/BehaviorFactory$ClickBehavior;->HIDE:Lcom/appsgeyser/sdk/ads/behavior/BehaviorFactory$ClickBehavior;

    new-instance v0, Lcom/appsgeyser/sdk/ads/behavior/BehaviorFactory$ClickBehavior;

    const-string v1, "REMAIN_ON_SCREEN"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/appsgeyser/sdk/ads/behavior/BehaviorFactory$ClickBehavior;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appsgeyser/sdk/ads/behavior/BehaviorFactory$ClickBehavior;->REMAIN_ON_SCREEN:Lcom/appsgeyser/sdk/ads/behavior/BehaviorFactory$ClickBehavior;

    .line 14
    invoke-static {}, Lcom/appsgeyser/sdk/ads/behavior/BehaviorFactory$ClickBehavior;->$values()[Lcom/appsgeyser/sdk/ads/behavior/BehaviorFactory$ClickBehavior;

    move-result-object v0

    sput-object v0, Lcom/appsgeyser/sdk/ads/behavior/BehaviorFactory$ClickBehavior;->$VALUES:[Lcom/appsgeyser/sdk/ads/behavior/BehaviorFactory$ClickBehavior;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/appsgeyser/sdk/ads/behavior/BehaviorFactory$ClickBehavior;
    .locals 1

    .line 14
    const-class v0, Lcom/appsgeyser/sdk/ads/behavior/BehaviorFactory$ClickBehavior;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/appsgeyser/sdk/ads/behavior/BehaviorFactory$ClickBehavior;

    return-object p0
.end method

.method public static values()[Lcom/appsgeyser/sdk/ads/behavior/BehaviorFactory$ClickBehavior;
    .locals 1

    .line 14
    sget-object v0, Lcom/appsgeyser/sdk/ads/behavior/BehaviorFactory$ClickBehavior;->$VALUES:[Lcom/appsgeyser/sdk/ads/behavior/BehaviorFactory$ClickBehavior;

    invoke-virtual {v0}, [Lcom/appsgeyser/sdk/ads/behavior/BehaviorFactory$ClickBehavior;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/appsgeyser/sdk/ads/behavior/BehaviorFactory$ClickBehavior;

    return-object v0
.end method
