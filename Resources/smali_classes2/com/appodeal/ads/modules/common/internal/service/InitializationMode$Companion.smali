.class public final Lcom/appodeal/ads/modules/common/internal/service/InitializationMode$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appodeal/ads/modules/common/internal/service/InitializationMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001J\u0010\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/appodeal/ads/modules/common/internal/service/InitializationMode$Companion;",
        "",
        "",
        "code",
        "Lcom/appodeal/ads/modules/common/internal/service/InitializationMode;",
        "get",
        "apd_internal"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/appodeal/ads/modules/common/internal/service/InitializationMode$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final get(Ljava/lang/String;)Lcom/appodeal/ads/modules/common/internal/service/InitializationMode;
    .locals 5

    invoke-static {}, Lcom/appodeal/ads/modules/common/internal/service/InitializationMode;->values()[Lcom/appodeal/ads/modules/common/internal/service/InitializationMode;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :cond_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v3}, Lcom/appodeal/ads/modules/common/internal/service/InitializationMode;->access$getCode$p(Lcom/appodeal/ads/modules/common/internal/service/InitializationMode;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    if-nez v3, :cond_2

    .line 1
    sget-object v3, Lcom/appodeal/ads/modules/common/internal/service/InitializationMode;->Active:Lcom/appodeal/ads/modules/common/internal/service/InitializationMode;

    :cond_2
    return-object v3
.end method
