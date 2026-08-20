.class public final enum Lcom/applovin/impl/b/n$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/impl/b/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/applovin/impl/b/n$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/applovin/impl/b/n$a;

.field public static final enum b:Lcom/applovin/impl/b/n$a;

.field public static final enum c:Lcom/applovin/impl/b/n$a;

.field public static final enum d:Lcom/applovin/impl/b/n$a;

.field private static final synthetic e:[Lcom/applovin/impl/b/n$a;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/applovin/impl/b/n$a;

    const-string v1, "UNSPECIFIED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/applovin/impl/b/n$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/applovin/impl/b/n$a;->a:Lcom/applovin/impl/b/n$a;

    new-instance v1, Lcom/applovin/impl/b/n$a;

    const-string v2, "LOW"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/applovin/impl/b/n$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/applovin/impl/b/n$a;->b:Lcom/applovin/impl/b/n$a;

    new-instance v2, Lcom/applovin/impl/b/n$a;

    const-string v3, "MEDIUM"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/applovin/impl/b/n$a;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/applovin/impl/b/n$a;->c:Lcom/applovin/impl/b/n$a;

    new-instance v3, Lcom/applovin/impl/b/n$a;

    const-string v4, "HIGH"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/applovin/impl/b/n$a;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/applovin/impl/b/n$a;->d:Lcom/applovin/impl/b/n$a;

    filled-new-array {v0, v1, v2, v3}, [Lcom/applovin/impl/b/n$a;

    move-result-object v0

    sput-object v0, Lcom/applovin/impl/b/n$a;->e:[Lcom/applovin/impl/b/n$a;

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

.method public static valueOf(Ljava/lang/String;)Lcom/applovin/impl/b/n$a;
    .locals 1

    const-class v0, Lcom/applovin/impl/b/n$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/applovin/impl/b/n$a;

    return-object p0
.end method

.method public static values()[Lcom/applovin/impl/b/n$a;
    .locals 1

    sget-object v0, Lcom/applovin/impl/b/n$a;->e:[Lcom/applovin/impl/b/n$a;

    invoke-virtual {v0}, [Lcom/applovin/impl/b/n$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/applovin/impl/b/n$a;

    return-object v0
.end method
