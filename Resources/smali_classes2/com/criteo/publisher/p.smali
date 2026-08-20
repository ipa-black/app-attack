.class public final enum Lcom/criteo/publisher/p;
.super Ljava/lang/Enum;
.source "CriteoListenerCode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/criteo/publisher/p;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/criteo/publisher/p;

.field public static final enum b:Lcom/criteo/publisher/p;

.field public static final enum c:Lcom/criteo/publisher/p;

.field public static final enum d:Lcom/criteo/publisher/p;

.field public static final enum e:Lcom/criteo/publisher/p;

.field public static final enum f:Lcom/criteo/publisher/p;

.field private static final synthetic g:[Lcom/criteo/publisher/p;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 20
    new-instance v0, Lcom/criteo/publisher/p;

    const-string v1, "VALID"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/criteo/publisher/p;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/criteo/publisher/p;->a:Lcom/criteo/publisher/p;

    .line 21
    new-instance v1, Lcom/criteo/publisher/p;

    const-string v2, "INVALID"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/criteo/publisher/p;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/criteo/publisher/p;->b:Lcom/criteo/publisher/p;

    .line 22
    new-instance v2, Lcom/criteo/publisher/p;

    const-string v3, "INVALID_CREATIVE"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/criteo/publisher/p;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/criteo/publisher/p;->c:Lcom/criteo/publisher/p;

    .line 23
    new-instance v3, Lcom/criteo/publisher/p;

    const-string v4, "CLICK"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/criteo/publisher/p;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/criteo/publisher/p;->d:Lcom/criteo/publisher/p;

    .line 24
    new-instance v4, Lcom/criteo/publisher/p;

    const-string v5, "CLOSE"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/criteo/publisher/p;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/criteo/publisher/p;->e:Lcom/criteo/publisher/p;

    .line 25
    new-instance v5, Lcom/criteo/publisher/p;

    const-string v6, "OPEN"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lcom/criteo/publisher/p;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/criteo/publisher/p;->f:Lcom/criteo/publisher/p;

    .line 19
    filled-new-array/range {v0 .. v5}, [Lcom/criteo/publisher/p;

    move-result-object v0

    sput-object v0, Lcom/criteo/publisher/p;->g:[Lcom/criteo/publisher/p;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/criteo/publisher/p;
    .locals 1

    .line 19
    const-class v0, Lcom/criteo/publisher/p;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/criteo/publisher/p;

    return-object p0
.end method

.method public static values()[Lcom/criteo/publisher/p;
    .locals 1

    .line 19
    sget-object v0, Lcom/criteo/publisher/p;->g:[Lcom/criteo/publisher/p;

    invoke-virtual {v0}, [Lcom/criteo/publisher/p;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/criteo/publisher/p;

    return-object v0
.end method
