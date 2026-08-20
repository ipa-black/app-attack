.class public final enum Lcom/criteo/publisher/n0/a;
.super Ljava/lang/Enum;
.source "AdUnitType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/criteo/publisher/n0/a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/criteo/publisher/n0/a;

.field public static final enum b:Lcom/criteo/publisher/n0/a;

.field public static final enum c:Lcom/criteo/publisher/n0/a;

.field public static final enum d:Lcom/criteo/publisher/n0/a;

.field private static final synthetic e:[Lcom/criteo/publisher/n0/a;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 20
    new-instance v0, Lcom/criteo/publisher/n0/a;

    const-string v1, "CRITEO_BANNER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/criteo/publisher/n0/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/criteo/publisher/n0/a;->a:Lcom/criteo/publisher/n0/a;

    .line 21
    new-instance v1, Lcom/criteo/publisher/n0/a;

    const-string v2, "CRITEO_INTERSTITIAL"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/criteo/publisher/n0/a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/criteo/publisher/n0/a;->b:Lcom/criteo/publisher/n0/a;

    .line 22
    new-instance v2, Lcom/criteo/publisher/n0/a;

    const-string v3, "CRITEO_CUSTOM_NATIVE"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/criteo/publisher/n0/a;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/criteo/publisher/n0/a;->c:Lcom/criteo/publisher/n0/a;

    .line 23
    new-instance v3, Lcom/criteo/publisher/n0/a;

    const-string v4, "CRITEO_REWARDED"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/criteo/publisher/n0/a;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/criteo/publisher/n0/a;->d:Lcom/criteo/publisher/n0/a;

    .line 19
    filled-new-array {v0, v1, v2, v3}, [Lcom/criteo/publisher/n0/a;

    move-result-object v0

    sput-object v0, Lcom/criteo/publisher/n0/a;->e:[Lcom/criteo/publisher/n0/a;

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

.method public static valueOf(Ljava/lang/String;)Lcom/criteo/publisher/n0/a;
    .locals 1

    .line 19
    const-class v0, Lcom/criteo/publisher/n0/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/criteo/publisher/n0/a;

    return-object p0
.end method

.method public static values()[Lcom/criteo/publisher/n0/a;
    .locals 1

    .line 19
    sget-object v0, Lcom/criteo/publisher/n0/a;->e:[Lcom/criteo/publisher/n0/a;

    invoke-virtual {v0}, [Lcom/criteo/publisher/n0/a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/criteo/publisher/n0/a;

    return-object v0
.end method
