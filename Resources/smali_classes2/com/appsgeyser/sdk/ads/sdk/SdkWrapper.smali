.class abstract Lcom/appsgeyser/sdk/ads/sdk/SdkWrapper;
.super Ljava/lang/Object;
.source "SdkWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appsgeyser/sdk/ads/sdk/SdkWrapper$AdType;
    }
.end annotation


# static fields
.field static final KEY_APPNEXT:Ljava/lang/String; = "APPNEXT"


# instance fields
.field protected context:Landroid/content/Context;

.field private isActive:Z

.field parameters:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected progressDialog:Lcom/appsgeyser/sdk/ui/AppsgeyserProgressDialog;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 23
    iput-boolean v0, p0, Lcom/appsgeyser/sdk/ads/sdk/SdkWrapper;->isActive:Z

    return-void
.end method


# virtual methods
.method addExtras(Ljava/util/HashMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 32
    iget-object v0, p0, Lcom/appsgeyser/sdk/ads/sdk/SdkWrapper;->parameters:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/appsgeyser/sdk/ads/sdk/SdkWrapper;->parameters:Ljava/util/HashMap;

    .line 35
    :cond_0
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 36
    iget-object v1, p0, Lcom/appsgeyser/sdk/ads/sdk/SdkWrapper;->parameters:Ljava/util/HashMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public abstract getNativeAd()V
.end method

.method isActive()Z
    .locals 1

    .line 56
    iget-boolean v0, p0, Lcom/appsgeyser/sdk/ads/sdk/SdkWrapper;->isActive:Z

    return v0
.end method

.method public abstract isAdSupported(Lcom/appsgeyser/sdk/ads/sdk/SdkWrapper$AdType;)Z
.end method

.method public abstract showFsBanner()V
.end method

.method startSession(Landroid/content/Context;)V
    .locals 1

    .line 41
    new-instance v0, Lcom/appsgeyser/sdk/ui/AppsgeyserProgressDialog;

    invoke-direct {v0, p1}, Lcom/appsgeyser/sdk/ui/AppsgeyserProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/appsgeyser/sdk/ads/sdk/SdkWrapper;->progressDialog:Lcom/appsgeyser/sdk/ui/AppsgeyserProgressDialog;

    .line 42
    iget-boolean v0, p0, Lcom/appsgeyser/sdk/ads/sdk/SdkWrapper;->isActive:Z

    if-eqz v0, :cond_0

    .line 43
    invoke-virtual {p0}, Lcom/appsgeyser/sdk/ads/sdk/SdkWrapper;->stopSession()V

    .line 45
    :cond_0
    iput-object p1, p0, Lcom/appsgeyser/sdk/ads/sdk/SdkWrapper;->context:Landroid/content/Context;

    const/4 v0, 0x1

    .line 46
    iput-boolean v0, p0, Lcom/appsgeyser/sdk/ads/sdk/SdkWrapper;->isActive:Z

    .line 47
    invoke-static {}, Lcom/appsgeyser/sdk/InternalEntryPoint;->getInstance()Lcom/appsgeyser/sdk/InternalEntryPoint;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/appsgeyser/sdk/InternalEntryPoint;->getFullScreenBanner(Landroid/content/Context;)Lcom/appsgeyser/sdk/ads/FullScreenBanner;

    move-result-object p1

    invoke-virtual {p1}, Lcom/appsgeyser/sdk/ads/FullScreenBanner;->close()V

    return-void
.end method

.method stopSession()V
    .locals 1

    const/4 v0, 0x0

    .line 51
    iput-boolean v0, p0, Lcom/appsgeyser/sdk/ads/sdk/SdkWrapper;->isActive:Z

    return-void
.end method
