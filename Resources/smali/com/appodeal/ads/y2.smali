.class public abstract Lcom/appodeal/ads/y2;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appodeal/ads/y2$a;
    }
.end annotation


# instance fields
.field public final a:Lcom/appodeal/ads/modules/libs/network/HttpClient$Method;

.field public final b:Lcom/appodeal/ads/modules/libs/network/HttpClient$Proto;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/appodeal/ads/modules/libs/network/HttpClient$Method;->POST:Lcom/appodeal/ads/modules/libs/network/HttpClient$Method;

    iput-object v0, p0, Lcom/appodeal/ads/y2;->a:Lcom/appodeal/ads/modules/libs/network/HttpClient$Method;

    sget-object v0, Lcom/appodeal/ads/modules/libs/network/HttpClient$Proto;->INSTANCE:Lcom/appodeal/ads/modules/libs/network/HttpClient$Proto;

    iput-object v0, p0, Lcom/appodeal/ads/y2;->b:Lcom/appodeal/ads/modules/libs/network/HttpClient$Proto;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lcom/appodeal/ads/y2;-><init>()V

    return-void
.end method

.method public static a()Ljava/lang/String;
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
            "Lcom/appodeal/ads/api/Request$Builder;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method public final b()Lcom/appodeal/ads/modules/libs/network/HttpClient$Proto;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/y2;->b:Lcom/appodeal/ads/modules/libs/network/HttpClient$Proto;

    return-object v0
.end method

.method public final c()Lcom/appodeal/ads/modules/libs/network/HttpClient$Method;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/y2;->a:Lcom/appodeal/ads/modules/libs/network/HttpClient$Method;

    return-object v0
.end method

.method public abstract d()Ljava/lang/String;
.end method
