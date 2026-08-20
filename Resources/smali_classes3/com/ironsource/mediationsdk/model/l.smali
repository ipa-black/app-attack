.class public final enum Lcom/ironsource/mediationsdk/model/l;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ironsource/mediationsdk/model/l;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/ironsource/mediationsdk/model/l;

.field public static final enum b:Lcom/ironsource/mediationsdk/model/l;

.field private static final synthetic d:[Lcom/ironsource/mediationsdk/model/l;


# instance fields
.field public c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/ironsource/mediationsdk/model/l;

    const/4 v1, 0x0

    const-string v2, "d"

    const-string v3, "PER_DAY"

    invoke-direct {v0, v3, v1, v2}, Lcom/ironsource/mediationsdk/model/l;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ironsource/mediationsdk/model/l;->a:Lcom/ironsource/mediationsdk/model/l;

    new-instance v1, Lcom/ironsource/mediationsdk/model/l;

    const/4 v2, 0x1

    const-string v3, "h"

    const-string v4, "PER_HOUR"

    invoke-direct {v1, v4, v2, v3}, Lcom/ironsource/mediationsdk/model/l;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/ironsource/mediationsdk/model/l;->b:Lcom/ironsource/mediationsdk/model/l;

    filled-new-array {v0, v1}, [Lcom/ironsource/mediationsdk/model/l;

    move-result-object v0

    sput-object v0, Lcom/ironsource/mediationsdk/model/l;->d:[Lcom/ironsource/mediationsdk/model/l;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/ironsource/mediationsdk/model/l;->c:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ironsource/mediationsdk/model/l;
    .locals 1

    const-class v0, Lcom/ironsource/mediationsdk/model/l;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ironsource/mediationsdk/model/l;

    return-object p0
.end method

.method public static values()[Lcom/ironsource/mediationsdk/model/l;
    .locals 1

    sget-object v0, Lcom/ironsource/mediationsdk/model/l;->d:[Lcom/ironsource/mediationsdk/model/l;

    invoke-virtual {v0}, [Lcom/ironsource/mediationsdk/model/l;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ironsource/mediationsdk/model/l;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ironsource/mediationsdk/model/l;->c:Ljava/lang/String;

    return-object v0
.end method
