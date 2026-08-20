.class public final Lcom/appodeal/ads/modules/libs/network/AppodealEndpoints;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/appodeal/ads/modules/libs/network/AppodealEndpoint;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\"\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0006\u0008\u00c6\u0002\u0018\u00002\u00020\u0001J\u001f\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0004H\u0096\u0001J\u000b\u0010\u0008\u001a\u0004\u0018\u00010\u0002H\u0096\u0001R\u0014\u0010\u000b\u001a\u00020\u00028\u0016X\u0096\u0005\u00a2\u0006\u0006\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/appodeal/ads/modules/libs/network/AppodealEndpoints;",
        "Lcom/appodeal/ads/modules/libs/network/AppodealEndpoint;",
        "",
        "defaultBaseUrl",
        "",
        "loadedUrls",
        "",
        "init",
        "popNextEndpoint",
        "getActiveEndpoint",
        "()Ljava/lang/String;",
        "activeEndpoint",
        "apd_network"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/appodeal/ads/modules/libs/network/AppodealEndpoints;


# instance fields
.field public final synthetic a:Lcom/appodeal/ads/modules/libs/network/endpoint/a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/appodeal/ads/modules/libs/network/AppodealEndpoints;

    invoke-direct {v0}, Lcom/appodeal/ads/modules/libs/network/AppodealEndpoints;-><init>()V

    sput-object v0, Lcom/appodeal/ads/modules/libs/network/AppodealEndpoints;->INSTANCE:Lcom/appodeal/ads/modules/libs/network/AppodealEndpoints;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/appodeal/ads/modules/libs/network/endpoint/a;

    invoke-direct {v0}, Lcom/appodeal/ads/modules/libs/network/endpoint/a;-><init>()V

    iput-object v0, p0, Lcom/appodeal/ads/modules/libs/network/AppodealEndpoints;->a:Lcom/appodeal/ads/modules/libs/network/endpoint/a;

    return-void
.end method


# virtual methods
.method public getActiveEndpoint()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/modules/libs/network/AppodealEndpoints;->a:Lcom/appodeal/ads/modules/libs/network/endpoint/a;

    invoke-virtual {v0}, Lcom/appodeal/ads/modules/libs/network/endpoint/a;->getActiveEndpoint()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public init(Ljava/lang/String;Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "defaultBaseUrl"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "loadedUrls"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/appodeal/ads/modules/libs/network/AppodealEndpoints;->a:Lcom/appodeal/ads/modules/libs/network/endpoint/a;

    invoke-virtual {v0, p1, p2}, Lcom/appodeal/ads/modules/libs/network/endpoint/a;->init(Ljava/lang/String;Ljava/util/Set;)V

    return-void
.end method

.method public popNextEndpoint()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/modules/libs/network/AppodealEndpoints;->a:Lcom/appodeal/ads/modules/libs/network/endpoint/a;

    invoke-virtual {v0}, Lcom/appodeal/ads/modules/libs/network/endpoint/a;->popNextEndpoint()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
