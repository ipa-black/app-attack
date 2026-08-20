.class public Lcom/criteo/publisher/m0/a;
.super Ljava/lang/Object;
.source "CriteoBannerListenerCallTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/criteo/publisher/logging/g;

.field private final b:Lcom/criteo/publisher/CriteoBannerAdListener;

.field private final c:Ljava/lang/ref/Reference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/Reference<",
            "Lcom/criteo/publisher/CriteoBannerView;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/criteo/publisher/p;


# direct methods
.method public constructor <init>(Lcom/criteo/publisher/CriteoBannerAdListener;Ljava/lang/ref/Reference;Lcom/criteo/publisher/p;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/criteo/publisher/CriteoBannerAdListener;",
            "Ljava/lang/ref/Reference<",
            "Lcom/criteo/publisher/CriteoBannerView;",
            ">;",
            "Lcom/criteo/publisher/p;",
            ")V"
        }
    .end annotation

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/criteo/publisher/logging/h;->b(Ljava/lang/Class;)Lcom/criteo/publisher/logging/g;

    move-result-object v0

    iput-object v0, p0, Lcom/criteo/publisher/m0/a;->a:Lcom/criteo/publisher/logging/g;

    .line 52
    iput-object p1, p0, Lcom/criteo/publisher/m0/a;->b:Lcom/criteo/publisher/CriteoBannerAdListener;

    .line 53
    iput-object p2, p0, Lcom/criteo/publisher/m0/a;->c:Ljava/lang/ref/Reference;

    .line 54
    iput-object p3, p0, Lcom/criteo/publisher/m0/a;->d:Lcom/criteo/publisher/p;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 59
    iget-object v0, p0, Lcom/criteo/publisher/m0/a;->c:Ljava/lang/ref/Reference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/criteo/publisher/CriteoBannerView;

    .line 61
    iget-object v1, p0, Lcom/criteo/publisher/m0/a;->d:Lcom/criteo/publisher/p;

    sget-object v2, Lcom/criteo/publisher/p;->b:Lcom/criteo/publisher/p;

    if-ne v1, v2, :cond_0

    .line 62
    iget-object v1, p0, Lcom/criteo/publisher/m0/a;->a:Lcom/criteo/publisher/logging/g;

    invoke-static {v0}, Lcom/criteo/publisher/b;->a(Lcom/criteo/publisher/CriteoBannerView;)Lcom/criteo/publisher/logging/e;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/criteo/publisher/logging/g;->a(Lcom/criteo/publisher/logging/e;)V

    goto :goto_0

    .line 63
    :cond_0
    sget-object v2, Lcom/criteo/publisher/p;->a:Lcom/criteo/publisher/p;

    if-ne v1, v2, :cond_1

    .line 64
    iget-object v1, p0, Lcom/criteo/publisher/m0/a;->a:Lcom/criteo/publisher/logging/g;

    invoke-static {v0}, Lcom/criteo/publisher/b;->b(Lcom/criteo/publisher/CriteoBannerView;)Lcom/criteo/publisher/logging/e;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/criteo/publisher/logging/g;->a(Lcom/criteo/publisher/logging/e;)V

    .line 68
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/criteo/publisher/m0/a;->b:Lcom/criteo/publisher/CriteoBannerAdListener;

    if-eqz v1, :cond_6

    if-nez v0, :cond_2

    goto :goto_1

    .line 72
    :cond_2
    sget-object v1, Lcom/criteo/publisher/m0/a$a;->a:[I

    iget-object v2, p0, Lcom/criteo/publisher/m0/a;->d:Lcom/criteo/publisher/p;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_5

    const/4 v2, 0x2

    if-eq v1, v2, :cond_4

    const/4 v0, 0x3

    if-eq v1, v0, :cond_3

    goto :goto_1

    .line 80
    :cond_3
    iget-object v0, p0, Lcom/criteo/publisher/m0/a;->b:Lcom/criteo/publisher/CriteoBannerAdListener;

    invoke-interface {v0}, Lcom/criteo/publisher/CriteoBannerAdListener;->onAdClicked()V

    .line 81
    iget-object v0, p0, Lcom/criteo/publisher/m0/a;->b:Lcom/criteo/publisher/CriteoBannerAdListener;

    invoke-interface {v0}, Lcom/criteo/publisher/CriteoBannerAdListener;->onAdLeftApplication()V

    goto :goto_1

    .line 77
    :cond_4
    iget-object v1, p0, Lcom/criteo/publisher/m0/a;->b:Lcom/criteo/publisher/CriteoBannerAdListener;

    invoke-interface {v1, v0}, Lcom/criteo/publisher/CriteoBannerAdListener;->onAdReceived(Lcom/criteo/publisher/CriteoBannerView;)V

    goto :goto_1

    .line 74
    :cond_5
    iget-object v0, p0, Lcom/criteo/publisher/m0/a;->b:Lcom/criteo/publisher/CriteoBannerAdListener;

    sget-object v1, Lcom/criteo/publisher/CriteoErrorCode;->ERROR_CODE_NO_FILL:Lcom/criteo/publisher/CriteoErrorCode;

    invoke-interface {v0, v1}, Lcom/criteo/publisher/CriteoBannerAdListener;->onAdFailedToReceive(Lcom/criteo/publisher/CriteoErrorCode;)V

    :cond_6
    :goto_1
    return-void
.end method
