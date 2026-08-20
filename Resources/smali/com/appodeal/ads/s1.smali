.class public abstract Lcom/appodeal/ads/s1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appodeal/ads/s1$b;,
        Lcom/appodeal/ads/s1$e;,
        Lcom/appodeal/ads/s1$f;,
        Lcom/appodeal/ads/s1$d;,
        Lcom/appodeal/ads/s1$g;,
        Lcom/appodeal/ads/s1$c;,
        Lcom/appodeal/ads/s1$a;
    }
.end annotation


# instance fields
.field public final a:Lcom/appodeal/ads/modules/libs/network/HttpClient$Method;

.field public final b:Lcom/appodeal/ads/modules/libs/network/HttpClient$ZipBase64;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/appodeal/ads/modules/libs/network/HttpClient$Method;->POST:Lcom/appodeal/ads/modules/libs/network/HttpClient$Method;

    iput-object v0, p0, Lcom/appodeal/ads/s1;->a:Lcom/appodeal/ads/modules/libs/network/HttpClient$Method;

    sget-object v0, Lcom/appodeal/ads/modules/libs/network/HttpClient$ZipBase64;->INSTANCE:Lcom/appodeal/ads/modules/libs/network/HttpClient$ZipBase64;

    iput-object v0, p0, Lcom/appodeal/ads/s1;->b:Lcom/appodeal/ads/modules/libs/network/HttpClient$ZipBase64;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lcom/appodeal/ads/s1;-><init>()V

    return-void
.end method

.method public static d()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/appodeal/ads/modules/libs/network/AppodealEndpoints;->INSTANCE:Lcom/appodeal/ads/modules/libs/network/AppodealEndpoints;

    invoke-virtual {v0}, Lcom/appodeal/ads/modules/libs/network/AppodealEndpoints;->getActiveEndpoint()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/appodeal/ads/b3;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method public final e()Lcom/appodeal/ads/modules/libs/network/HttpClient$ZipBase64;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/s1;->b:Lcom/appodeal/ads/modules/libs/network/HttpClient$ZipBase64;

    return-object v0
.end method

.method public final f()Lcom/appodeal/ads/modules/libs/network/HttpClient$Method;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/s1;->a:Lcom/appodeal/ads/modules/libs/network/HttpClient$Method;

    return-object v0
.end method

.method public abstract g()Ljava/lang/String;
.end method
