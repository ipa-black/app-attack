.class public final Lcom/appodeal/ads/modules/libs/network/httpclients/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/appodeal/ads/modules/libs/network/HttpClient$Method;

.field public final b:Ljava/lang/String;

.field public final c:[B

.field public final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/appodeal/ads/modules/libs/network/HttpClient$Method;Ljava/lang/String;[BLjava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/appodeal/ads/modules/libs/network/HttpClient$Method;",
            "Ljava/lang/String;",
            "[B",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "method"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "url"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "headers"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/appodeal/ads/modules/libs/network/httpclients/c;->a:Lcom/appodeal/ads/modules/libs/network/HttpClient$Method;

    iput-object p2, p0, Lcom/appodeal/ads/modules/libs/network/httpclients/c;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/appodeal/ads/modules/libs/network/httpclients/c;->c:[B

    iput-object p4, p0, Lcom/appodeal/ads/modules/libs/network/httpclients/c;->d:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final a()[B
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/modules/libs/network/httpclients/c;->c:[B

    return-object v0
.end method

.method public final b()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/appodeal/ads/modules/libs/network/httpclients/c;->d:Ljava/util/Map;

    return-object v0
.end method

.method public final c()Lcom/appodeal/ads/modules/libs/network/HttpClient$Method;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/modules/libs/network/httpclients/c;->a:Lcom/appodeal/ads/modules/libs/network/HttpClient$Method;

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/modules/libs/network/httpclients/c;->b:Ljava/lang/String;

    return-object v0
.end method
