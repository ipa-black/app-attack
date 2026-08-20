.class public abstract Lcom/appodeal/ads/p;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appodeal/ads/p$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<AdRequestType:",
        "Lcom/appodeal/ads/r<",
        "TAdObjectType;>;AdObjectType:",
        "Lcom/appodeal/ads/l;",
        "RendererParams:",
        "Lcom/appodeal/ads/q;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;Lcom/appodeal/ads/q;Lcom/appodeal/ads/u;Lcom/appodeal/ads/p$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "TRendererParams;",
            "Lcom/appodeal/ads/u<",
            "TAdObjectType;TAdRequestType;*>;",
            "Lcom/appodeal/ads/p$a;",
            ")V"
        }
    .end annotation

    iget-object p1, p4, Lcom/appodeal/ads/p$a;->a:Ljava/lang/String;

    const-string p2, "Show Failed"

    invoke-virtual {p3, p2, p1}, Lcom/appodeal/ads/u;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public abstract a(Landroid/app/Activity;Lcom/appodeal/ads/q;Lcom/appodeal/ads/u;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "TRendererParams;",
            "Lcom/appodeal/ads/u<",
            "TAdObjectType;TAdRequestType;*>;)Z"
        }
    .end annotation
.end method

.method public b(Landroid/app/Activity;Lcom/appodeal/ads/q;Lcom/appodeal/ads/u;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "TRendererParams;",
            "Lcom/appodeal/ads/u<",
            "TAdObjectType;TAdRequestType;*>;)Z"
        }
    .end annotation

    invoke-virtual {p3}, Lcom/appodeal/ads/u;->o()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    sget-object v0, Lcom/appodeal/ads/p$a;->b:Lcom/appodeal/ads/p$a;

    :goto_0
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/appodeal/ads/p;->a(Landroid/app/Activity;Lcom/appodeal/ads/q;Lcom/appodeal/ads/u;Lcom/appodeal/ads/p$a;)V

    return v1

    :cond_0
    iget-object v0, p2, Lcom/appodeal/ads/q;->a:Lcom/appodeal/ads/segments/g;

    invoke-virtual {p3, v0}, Lcom/appodeal/ads/u;->a(Lcom/appodeal/ads/segments/g;)V

    invoke-virtual {p3}, Lcom/appodeal/ads/u;->m()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/appodeal/ads/p$a;->e:Lcom/appodeal/ads/p$a;

    goto :goto_0

    :cond_1
    invoke-virtual {p3}, Lcom/appodeal/ads/u;->n()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/appodeal/ads/p$a;->f:Lcom/appodeal/ads/p$a;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/appodeal/ads/context/b;->b:Lcom/appodeal/ads/context/b;

    invoke-virtual {v0}, Lcom/appodeal/ads/context/b;->getTopActivityFlow()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v0

    invoke-interface {v0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/appodeal/ads/p$a;->d:Lcom/appodeal/ads/p$a;

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/appodeal/ads/modules/libs/network/NetworkStatus;->INSTANCE:Lcom/appodeal/ads/modules/libs/network/NetworkStatus;

    invoke-virtual {v0}, Lcom/appodeal/ads/modules/libs/network/NetworkStatus;->isConnected()Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/appodeal/ads/p$a;->c:Lcom/appodeal/ads/p$a;

    goto :goto_0

    :cond_4
    invoke-virtual {p0, p1, p2, p3}, Lcom/appodeal/ads/p;->a(Landroid/app/Activity;Lcom/appodeal/ads/q;Lcom/appodeal/ads/u;)Z

    move-result p1

    return p1
.end method
