.class public final enum Lcom/appodeal/ads/f0;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/appodeal/ads/f0;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/appodeal/ads/f0;

.field public static final enum b:Lcom/appodeal/ads/f0;

.field public static final enum c:Lcom/appodeal/ads/f0;

.field public static final synthetic d:[Lcom/appodeal/ads/f0;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/appodeal/ads/f0;

    const-string v1, "VISIBLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/appodeal/ads/f0;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appodeal/ads/f0;->a:Lcom/appodeal/ads/f0;

    new-instance v1, Lcom/appodeal/ads/f0;

    const-string v2, "HIDDEN"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/appodeal/ads/f0;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/appodeal/ads/f0;->b:Lcom/appodeal/ads/f0;

    new-instance v2, Lcom/appodeal/ads/f0;

    const-string v3, "NEVER_SHOWN"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/appodeal/ads/f0;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/appodeal/ads/f0;->c:Lcom/appodeal/ads/f0;

    filled-new-array {v0, v1, v2}, [Lcom/appodeal/ads/f0;

    move-result-object v0

    sput-object v0, Lcom/appodeal/ads/f0;->d:[Lcom/appodeal/ads/f0;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/appodeal/ads/f0;
    .locals 1

    const-class v0, Lcom/appodeal/ads/f0;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/appodeal/ads/f0;

    return-object p0
.end method

.method public static values()[Lcom/appodeal/ads/f0;
    .locals 1

    sget-object v0, Lcom/appodeal/ads/f0;->d:[Lcom/appodeal/ads/f0;

    invoke-virtual {v0}, [Lcom/appodeal/ads/f0;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/appodeal/ads/f0;

    return-object v0
.end method
