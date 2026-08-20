.class final enum Lcom/applovin/exoplayer2/common/a/b$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/exoplayer2/common/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/applovin/exoplayer2/common/a/b$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/applovin/exoplayer2/common/a/b$a;

.field public static final enum b:Lcom/applovin/exoplayer2/common/a/b$a;

.field public static final enum c:Lcom/applovin/exoplayer2/common/a/b$a;

.field public static final enum d:Lcom/applovin/exoplayer2/common/a/b$a;

.field private static final synthetic e:[Lcom/applovin/exoplayer2/common/a/b$a;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/applovin/exoplayer2/common/a/b$a;

    const-string v1, "READY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/applovin/exoplayer2/common/a/b$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/applovin/exoplayer2/common/a/b$a;->a:Lcom/applovin/exoplayer2/common/a/b$a;

    new-instance v1, Lcom/applovin/exoplayer2/common/a/b$a;

    const-string v2, "NOT_READY"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/applovin/exoplayer2/common/a/b$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/applovin/exoplayer2/common/a/b$a;->b:Lcom/applovin/exoplayer2/common/a/b$a;

    new-instance v2, Lcom/applovin/exoplayer2/common/a/b$a;

    const-string v3, "DONE"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/applovin/exoplayer2/common/a/b$a;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/applovin/exoplayer2/common/a/b$a;->c:Lcom/applovin/exoplayer2/common/a/b$a;

    new-instance v3, Lcom/applovin/exoplayer2/common/a/b$a;

    const-string v4, "FAILED"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/applovin/exoplayer2/common/a/b$a;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/applovin/exoplayer2/common/a/b$a;->d:Lcom/applovin/exoplayer2/common/a/b$a;

    filled-new-array {v0, v1, v2, v3}, [Lcom/applovin/exoplayer2/common/a/b$a;

    move-result-object v0

    sput-object v0, Lcom/applovin/exoplayer2/common/a/b$a;->e:[Lcom/applovin/exoplayer2/common/a/b$a;

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

.method public static valueOf(Ljava/lang/String;)Lcom/applovin/exoplayer2/common/a/b$a;
    .locals 1

    const-class v0, Lcom/applovin/exoplayer2/common/a/b$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/applovin/exoplayer2/common/a/b$a;

    return-object p0
.end method

.method public static values()[Lcom/applovin/exoplayer2/common/a/b$a;
    .locals 1

    sget-object v0, Lcom/applovin/exoplayer2/common/a/b$a;->e:[Lcom/applovin/exoplayer2/common/a/b$a;

    invoke-virtual {v0}, [Lcom/applovin/exoplayer2/common/a/b$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/applovin/exoplayer2/common/a/b$a;

    return-object v0
.end method
