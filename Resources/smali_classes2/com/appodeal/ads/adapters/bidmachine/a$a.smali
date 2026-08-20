.class public final Lcom/appodeal/ads/adapters/bidmachine/a$a;
.super Ljava/lang/Object;
.source "ApdBidMachineService.java"

# interfaces
.implements Lcom/appodeal/ads/adapters/bidmachine/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appodeal/ads/adapters/bidmachine/a;->onInitialize(Landroid/content/Context;Lcom/appodeal/ads/ApdServiceInitParams;Lcom/appodeal/ads/ApdServiceInitializationListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/appodeal/ads/ApdServiceInitializationListener;


# direct methods
.method public constructor <init>(Lcom/appodeal/ads/ApdServiceInitializationListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/appodeal/ads/adapters/bidmachine/a$a;->a:Lcom/appodeal/ads/ApdServiceInitializationListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onInitializationFailed(Lcom/appodeal/ads/networking/LoadingError;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/appodeal/ads/adapters/bidmachine/a$a;->a:Lcom/appodeal/ads/ApdServiceInitializationListener;

    invoke-interface {v0, p1}, Lcom/appodeal/ads/ApdServiceInitializationListener;->onInitializationFailed(Lcom/appodeal/ads/networking/LoadingError;)V

    return-void
.end method

.method public final onInitializationFinished()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/appodeal/ads/adapters/bidmachine/a$a;->a:Lcom/appodeal/ads/ApdServiceInitializationListener;

    invoke-interface {v0}, Lcom/appodeal/ads/ApdServiceInitializationListener;->onInitializationFinished()V

    return-void
.end method
