.class public final Lcom/appodeal/ads/t2;
.super Lcom/appodeal/ads/r;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/appodeal/ads/r<",
        "Lcom/appodeal/ads/s2;",
        ">;"
    }
.end annotation


# instance fields
.field public J:I

.field public final K:Ljava/util/LinkedHashSet;

.field public final L:Ljava/util/LinkedHashSet;

.field public final M:Ljava/util/LinkedHashSet;


# direct methods
.method public constructor <init>(Lcom/appodeal/ads/Native$c;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/appodeal/ads/r;-><init>(Lcom/appodeal/ads/s;)V

    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Lcom/appodeal/ads/t2;->K:Ljava/util/LinkedHashSet;

    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Lcom/appodeal/ads/t2;->L:Ljava/util/LinkedHashSet;

    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Lcom/appodeal/ads/t2;->M:Ljava/util/LinkedHashSet;

    return-void
.end method


# virtual methods
.method public final a(Lcom/appodeal/ads/api/Stats$Builder;)V
    .locals 1

    const-string v0, "builder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Lcom/appodeal/ads/t2;->J:I

    invoke-virtual {p1, v0}, Lcom/appodeal/ads/api/Stats$Builder;->setCapacity(I)Lcom/appodeal/ads/api/Stats$Builder;

    return-void
.end method

.method public final e(Lcom/appodeal/ads/l;)V
    .locals 2

    check-cast p1, Lcom/appodeal/ads/s2;

    .line 1
    const-string v0, "adObject"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lcom/appodeal/ads/networking/binders/b$a$a$d;

    sget-object v0, Lcom/appodeal/ads/Native;->b:Lcom/appodeal/ads/Native$NativeAdType;

    iget-object v0, v0, Lcom/appodeal/ads/Native$NativeAdType;->name:Ljava/lang/String;

    const-string v1, "nativeAdType.name"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p1, v0}, Lcom/appodeal/ads/networking/binders/b$a$a$d;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/appodeal/ads/r;->a(Lcom/appodeal/ads/networking/binders/b$a$a;)V

    return-void
.end method

.method public final n()Lcom/appodeal/ads/modules/common/internal/adtype/AdType;
    .locals 1

    sget-object v0, Lcom/appodeal/ads/modules/common/internal/adtype/AdType;->Native:Lcom/appodeal/ads/modules/common/internal/adtype/AdType;

    return-object v0
.end method
