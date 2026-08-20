.class public final enum Lcom/appodeal/ads/modules/common/internal/service/InitializationMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appodeal/ads/modules/common/internal/service/InitializationMode$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/appodeal/ads/modules/common/internal/service/InitializationMode;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0004\u0008\u0086\u0001\u0018\u0000 \u00022\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcom/appodeal/ads/modules/common/internal/service/InitializationMode;",
        "",
        "Companion",
        "Passive",
        "Active",
        "apd_internal"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
.end annotation


# static fields
.field public static final enum Active:Lcom/appodeal/ads/modules/common/internal/service/InitializationMode;

.field public static final Companion:Lcom/appodeal/ads/modules/common/internal/service/InitializationMode$Companion;

.field public static final enum Passive:Lcom/appodeal/ads/modules/common/internal/service/InitializationMode;

.field public static final synthetic b:[Lcom/appodeal/ads/modules/common/internal/service/InitializationMode;


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/appodeal/ads/modules/common/internal/service/InitializationMode;

    const/4 v1, 0x0

    const-string v2, "passive"

    const-string v3, "Passive"

    invoke-direct {v0, v3, v1, v2}, Lcom/appodeal/ads/modules/common/internal/service/InitializationMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/appodeal/ads/modules/common/internal/service/InitializationMode;->Passive:Lcom/appodeal/ads/modules/common/internal/service/InitializationMode;

    new-instance v1, Lcom/appodeal/ads/modules/common/internal/service/InitializationMode;

    const/4 v2, 0x1

    const-string v3, "active"

    const-string v4, "Active"

    invoke-direct {v1, v4, v2, v3}, Lcom/appodeal/ads/modules/common/internal/service/InitializationMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/appodeal/ads/modules/common/internal/service/InitializationMode;->Active:Lcom/appodeal/ads/modules/common/internal/service/InitializationMode;

    .line 1
    filled-new-array {v0, v1}, [Lcom/appodeal/ads/modules/common/internal/service/InitializationMode;

    move-result-object v0

    .line 2
    sput-object v0, Lcom/appodeal/ads/modules/common/internal/service/InitializationMode;->b:[Lcom/appodeal/ads/modules/common/internal/service/InitializationMode;

    new-instance v0, Lcom/appodeal/ads/modules/common/internal/service/InitializationMode$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/appodeal/ads/modules/common/internal/service/InitializationMode$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/appodeal/ads/modules/common/internal/service/InitializationMode;->Companion:Lcom/appodeal/ads/modules/common/internal/service/InitializationMode$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/appodeal/ads/modules/common/internal/service/InitializationMode;->a:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$getCode$p(Lcom/appodeal/ads/modules/common/internal/service/InitializationMode;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/appodeal/ads/modules/common/internal/service/InitializationMode;->a:Ljava/lang/String;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/appodeal/ads/modules/common/internal/service/InitializationMode;
    .locals 1

    const-class v0, Lcom/appodeal/ads/modules/common/internal/service/InitializationMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/appodeal/ads/modules/common/internal/service/InitializationMode;

    return-object p0
.end method

.method public static values()[Lcom/appodeal/ads/modules/common/internal/service/InitializationMode;
    .locals 1

    sget-object v0, Lcom/appodeal/ads/modules/common/internal/service/InitializationMode;->b:[Lcom/appodeal/ads/modules/common/internal/service/InitializationMode;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/appodeal/ads/modules/common/internal/service/InitializationMode;

    return-object v0
.end method
