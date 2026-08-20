.class final enum Lcom/ironsource/mediationsdk/V$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/mediationsdk/V;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ironsource/mediationsdk/V$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/ironsource/mediationsdk/V$a;

.field public static final enum b:Lcom/ironsource/mediationsdk/V$a;

.field public static final enum c:Lcom/ironsource/mediationsdk/V$a;

.field public static final enum d:Lcom/ironsource/mediationsdk/V$a;

.field public static final enum e:Lcom/ironsource/mediationsdk/V$a;

.field private static final synthetic f:[Lcom/ironsource/mediationsdk/V$a;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/ironsource/mediationsdk/V$a;

    const-string v1, "RV_STATE_INITIATING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ironsource/mediationsdk/V$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ironsource/mediationsdk/V$a;->a:Lcom/ironsource/mediationsdk/V$a;

    new-instance v1, Lcom/ironsource/mediationsdk/V$a;

    const-string v2, "RV_STATE_AUCTION_IN_PROGRESS"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/ironsource/mediationsdk/V$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/ironsource/mediationsdk/V$a;->b:Lcom/ironsource/mediationsdk/V$a;

    new-instance v2, Lcom/ironsource/mediationsdk/V$a;

    const-string v3, "RV_STATE_NOT_LOADED"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/ironsource/mediationsdk/V$a;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/ironsource/mediationsdk/V$a;->c:Lcom/ironsource/mediationsdk/V$a;

    new-instance v3, Lcom/ironsource/mediationsdk/V$a;

    const-string v4, "RV_STATE_LOADING_SMASHES"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/ironsource/mediationsdk/V$a;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/ironsource/mediationsdk/V$a;->d:Lcom/ironsource/mediationsdk/V$a;

    new-instance v4, Lcom/ironsource/mediationsdk/V$a;

    const-string v5, "RV_STATE_READY_TO_SHOW"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/ironsource/mediationsdk/V$a;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/ironsource/mediationsdk/V$a;->e:Lcom/ironsource/mediationsdk/V$a;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/ironsource/mediationsdk/V$a;

    move-result-object v0

    sput-object v0, Lcom/ironsource/mediationsdk/V$a;->f:[Lcom/ironsource/mediationsdk/V$a;

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

.method public static valueOf(Ljava/lang/String;)Lcom/ironsource/mediationsdk/V$a;
    .locals 1

    const-class v0, Lcom/ironsource/mediationsdk/V$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ironsource/mediationsdk/V$a;

    return-object p0
.end method

.method public static values()[Lcom/ironsource/mediationsdk/V$a;
    .locals 1

    sget-object v0, Lcom/ironsource/mediationsdk/V$a;->f:[Lcom/ironsource/mediationsdk/V$a;

    invoke-virtual {v0}, [Lcom/ironsource/mediationsdk/V$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ironsource/mediationsdk/V$a;

    return-object v0
.end method
