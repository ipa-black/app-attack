.class final enum Lcom/ironsource/mediationsdk/S$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/mediationsdk/S;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ironsource/mediationsdk/S$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/ironsource/mediationsdk/S$a;

.field public static final enum b:Lcom/ironsource/mediationsdk/S$a;

.field public static final enum c:Lcom/ironsource/mediationsdk/S$a;

.field public static final enum d:Lcom/ironsource/mediationsdk/S$a;

.field public static final enum e:Lcom/ironsource/mediationsdk/S$a;

.field public static final enum f:Lcom/ironsource/mediationsdk/S$a;

.field private static final synthetic g:[Lcom/ironsource/mediationsdk/S$a;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lcom/ironsource/mediationsdk/S$a;

    const-string v1, "STATE_NOT_INITIALIZED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ironsource/mediationsdk/S$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ironsource/mediationsdk/S$a;->a:Lcom/ironsource/mediationsdk/S$a;

    new-instance v1, Lcom/ironsource/mediationsdk/S$a;

    const-string v2, "STATE_READY_TO_LOAD"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/ironsource/mediationsdk/S$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/ironsource/mediationsdk/S$a;->b:Lcom/ironsource/mediationsdk/S$a;

    new-instance v2, Lcom/ironsource/mediationsdk/S$a;

    const-string v3, "STATE_AUCTION"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/ironsource/mediationsdk/S$a;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/ironsource/mediationsdk/S$a;->c:Lcom/ironsource/mediationsdk/S$a;

    new-instance v3, Lcom/ironsource/mediationsdk/S$a;

    const-string v4, "STATE_LOADING_SMASHES"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/ironsource/mediationsdk/S$a;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/ironsource/mediationsdk/S$a;->d:Lcom/ironsource/mediationsdk/S$a;

    new-instance v4, Lcom/ironsource/mediationsdk/S$a;

    const-string v5, "STATE_READY_TO_SHOW"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/ironsource/mediationsdk/S$a;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/ironsource/mediationsdk/S$a;->e:Lcom/ironsource/mediationsdk/S$a;

    new-instance v5, Lcom/ironsource/mediationsdk/S$a;

    const-string v6, "STATE_SHOWING"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lcom/ironsource/mediationsdk/S$a;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/ironsource/mediationsdk/S$a;->f:Lcom/ironsource/mediationsdk/S$a;

    filled-new-array/range {v0 .. v5}, [Lcom/ironsource/mediationsdk/S$a;

    move-result-object v0

    sput-object v0, Lcom/ironsource/mediationsdk/S$a;->g:[Lcom/ironsource/mediationsdk/S$a;

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

.method public static valueOf(Ljava/lang/String;)Lcom/ironsource/mediationsdk/S$a;
    .locals 1

    const-class v0, Lcom/ironsource/mediationsdk/S$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ironsource/mediationsdk/S$a;

    return-object p0
.end method

.method public static values()[Lcom/ironsource/mediationsdk/S$a;
    .locals 1

    sget-object v0, Lcom/ironsource/mediationsdk/S$a;->g:[Lcom/ironsource/mediationsdk/S$a;

    invoke-virtual {v0}, [Lcom/ironsource/mediationsdk/S$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ironsource/mediationsdk/S$a;

    return-object v0
.end method
