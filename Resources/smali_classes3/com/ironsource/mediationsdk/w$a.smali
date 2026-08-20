.class public final enum Lcom/ironsource/mediationsdk/w$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/mediationsdk/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ironsource/mediationsdk/w$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/ironsource/mediationsdk/w$a;

.field public static final enum b:Lcom/ironsource/mediationsdk/w$a;

.field public static final enum c:Lcom/ironsource/mediationsdk/w$a;

.field public static final enum d:Lcom/ironsource/mediationsdk/w$a;

.field private static final synthetic e:[Lcom/ironsource/mediationsdk/w$a;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/ironsource/mediationsdk/w$a;

    const-string v1, "NOT_LOADED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ironsource/mediationsdk/w$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ironsource/mediationsdk/w$a;->a:Lcom/ironsource/mediationsdk/w$a;

    new-instance v1, Lcom/ironsource/mediationsdk/w$a;

    const-string v2, "LOAD_IN_PROGRESS"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/ironsource/mediationsdk/w$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/ironsource/mediationsdk/w$a;->b:Lcom/ironsource/mediationsdk/w$a;

    new-instance v2, Lcom/ironsource/mediationsdk/w$a;

    const-string v3, "LOADED"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/ironsource/mediationsdk/w$a;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/ironsource/mediationsdk/w$a;->c:Lcom/ironsource/mediationsdk/w$a;

    new-instance v3, Lcom/ironsource/mediationsdk/w$a;

    const-string v4, "SHOW_IN_PROGRESS"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/ironsource/mediationsdk/w$a;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/ironsource/mediationsdk/w$a;->d:Lcom/ironsource/mediationsdk/w$a;

    filled-new-array {v0, v1, v2, v3}, [Lcom/ironsource/mediationsdk/w$a;

    move-result-object v0

    sput-object v0, Lcom/ironsource/mediationsdk/w$a;->e:[Lcom/ironsource/mediationsdk/w$a;

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

.method public static valueOf(Ljava/lang/String;)Lcom/ironsource/mediationsdk/w$a;
    .locals 1

    const-class v0, Lcom/ironsource/mediationsdk/w$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ironsource/mediationsdk/w$a;

    return-object p0
.end method

.method public static values()[Lcom/ironsource/mediationsdk/w$a;
    .locals 1

    sget-object v0, Lcom/ironsource/mediationsdk/w$a;->e:[Lcom/ironsource/mediationsdk/w$a;

    invoke-virtual {v0}, [Lcom/ironsource/mediationsdk/w$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ironsource/mediationsdk/w$a;

    return-object v0
.end method
